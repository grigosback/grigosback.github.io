---
title: "CV"
permalink: /cv/
excerpt: "Digital Design, Embedded & Telecommunications Engineer."
comments: false
mathjax: false
---

<style>
.cv-actions { margin-bottom: 1.5em; }
.cv-actions .btn { margin-right: 0.5em; }
.cv-embed {
  display: block;
  width: 100%;
  height: 85vh;
  min-height: 460px;
  background: #fff;
  border: 1px solid rgba(128, 128, 128, 0.35);
}
</style>

<div class="cv-actions">
  <a href="/assets/files/lgrigolato_cv_eng.pdf" class="btn btn--primary" download
     onclick="if (window.gtag) { gtag('event', 'cv_download'); }">Download PDF</a>
  <a href="/assets/files/lgrigolato_cv_eng.pdf" class="btn btn--inverse" target="_blank" rel="noopener"
     onclick="if (window.gtag) { gtag('event', 'cv_open_tab'); }">Open in new tab</a>
</div>

<!-- Deliberately an <iframe>, not <object>/<embed>: the theme bundles FitVids.js,
     which wraps every object/embed in .fluid-width-video-wrapper and forces
     height:100% on it, collapsing the viewer. FitVids only touches iframes whose
     src points at a known video host, so a PDF iframe is left alone. -->
<iframe id="cv-embed" class="cv-embed" title="Lucas Grigolato — CV"
        src="/assets/files/lgrigolato_cv_eng.pdf#view=FitH&amp;navpanes=0"></iframe>

<div class="notice--info" id="cv-fallback" style="display: none;">
  <strong>Your browser can't display PDFs inline.</strong>
  Use <a href="/assets/files/lgrigolato_cv_eng.pdf">Download PDF</a> or
  <a href="/assets/files/lgrigolato_cv_eng.pdf" target="_blank" rel="noopener">open it in a new tab</a> instead.
</div>

<script>
// Mobile browsers commonly render an empty frame instead of a PDF.
// navigator.pdfViewerEnabled reports inline support up front, so show the
// notice rather than leaving a blank white box.
(function () {
  if (navigator.pdfViewerEnabled === false) {
    var embed = document.getElementById('cv-embed');
    var fallback = document.getElementById('cv-fallback');
    if (embed && fallback) {
      embed.style.display = 'none';
      fallback.style.display = '';
    }
  }
})();
</script>
