.PHONY: serve

# Run Jekyll locally
serve:
	bundle exec jekyll serve --trace

.PHONY: update-cv

CV_SRC := ../cv-resume/cv_eng/lgrigolato_cv_eng.pdf
CV_DST := assets/files/lgrigolato_cv_eng.pdf

# Refresh the CV served by the site from the latest LaTeX build
update-cv:
	@test -f "$(CV_SRC)" || { echo "❌ Not found: $(CV_SRC) — rebuild it in the cv-resume repo first"; exit 1; }
	@cp "$(CV_SRC)" "$(CV_DST)"
	@echo "✅ CV updated from $(CV_SRC)"

.PHONY: optimize-images

optimize-images:
	@echo "📸 Scanning repository for heavy images..."
	@find . -type d \( -name "_site" -o -name "vendor" -o -name ".git" \) -prune -o \
		-type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) -print | while read -r img; do \
		echo " -> Converting $$img to WebP..."; \
		mogrify -strip -format webp -resize "1920x1920>" "$$img"; \
		rm "$$img"; \
	done
	@echo "✅ All images optimized and originals removed!"
