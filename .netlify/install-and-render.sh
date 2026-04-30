#!/usr/bin/env bash
set -e

QUARTO_VERSION="1.3.553"

echo "→ Downloading Quarto ${QUARTO_VERSION}..."
curl -L -o "quarto.tar.gz" "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz"

echo "→ Extracting Quarto..."
tar -xzf quarto.tar.gz
export PATH="$PWD/quarto-${QUARTO_VERSION}/bin:$PATH"

echo "→ Quarto version: $(quarto --version)"

echo "→ Installing R packages..."
Rscript -e "install.packages(c('knitr', 'rmarkdown', 'ggplot2'), repos='https://cran.rstudio.com/')"

echo "→ Rendering site..."
quarto render

echo "✓ Done!"
