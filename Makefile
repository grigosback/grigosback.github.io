.PHONY: serve

# Run Jekyll locally
serve:
	bundle exec jekyll serve --trace

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
