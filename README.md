# Serena Shi — Digital Marketing Portfolio

A professional portfolio website built with [Quarto](https://quarto.org), designed for job-market applications as part of the M.S. Digital Marketing program at Cal Poly Pomona.

## 🗂 Site Structure

```
serena-portfolio/
├── index.qmd              # Home page
├── digital-marketing.qmd  # Digital Marketing Projects page
├── marketing-analytics.qmd# Marketing Analytics page (with R visualizations)
├── resume.qmd             # Résumé / CV page
├── presentation.qmd       # RevealJS Presentation overview page
├── slides/
│   └── presentation.qmd  # RevealJS slide deck
├── _quarto.yml            # Site configuration
├── custom.scss            # Main stylesheet (SCSS)
├── styles.css             # Supplemental CSS
├── netlify.toml           # Netlify deployment config
└── .github/workflows/     # GitHub Actions for auto-deploy
```

## 🚀 Getting Started

### Prerequisites

1. Install [Quarto](https://quarto.org/docs/get-started/)
2. Install [R](https://cran.r-project.org/) (for analytics visualizations)
3. Install required R packages:

```r
install.packages(c("knitr", "rmarkdown", "ggplot2"))
```

### Local Preview

```bash
cd serena-portfolio
quarto preview
```

### Build Site

```bash
quarto render
```

The rendered site will be in the `_site/` directory.

## 🌐 Deployment

### Option 1: Netlify (Recommended)

1. Push this repo to GitHub
2. Connect your GitHub repo to [Netlify](https://netlify.com)
3. Set build command: `quarto render`
4. Set publish directory: `_site`
5. Add secrets `NETLIFY_AUTH_TOKEN` and `NETLIFY_SITE_ID` to your GitHub repo for auto-deploy via Actions

### Option 2: Netlify Drop

1. Run `quarto render` locally
2. Drag and drop the `_site/` folder to [app.netlify.com/drop](https://app.netlify.com/drop)

### Option 3: GitHub Pages

```yaml
# In _quarto.yml, change:
project:
  output-dir: docs
```
Then enable GitHub Pages from the `docs` folder in your repo settings.

## ✏️ Customization

- **Add your photo:** Replace the placeholder in `index.qmd` with your actual image
- **Update your LinkedIn:** Search for `https://www.linkedin.com/in/serenashi` and replace
- **Add real data:** The analytics charts use illustrative data — replace with your actual GA4 exports
- **Expand projects:** Add new `.qmd` files and reference them from `digital-marketing.qmd` or `marketing-analytics.qmd`

## 🎨 Design

- **Aesthetic:** Editorial luxury — dusty terracotta, ivory, and dark slate
- **Fonts:** Cormorant Garamond (headings) + DM Sans (body) + DM Mono (labels)
- **Theme:** Warm, refined, bilingual-ready

## 📄 Pages

| Page | Description |
|------|-------------|
| Home | Hero intro, skills grid, project previews, social links |
| Digital Marketing | MEin3D capstone, Miraco Beauty case study, Popfun, RED creator profile |
| Marketing Analytics | Funnel analysis, A/B testing framework, social dashboard (R visualizations) |
| Résumé | Full CV in Markdown with timeline styling |
| Presentation | RevealJS slide deck overview + embedded slides |

---

Built by Serena Shi · Cal Poly Pomona M.S. Digital Marketing · 2025
