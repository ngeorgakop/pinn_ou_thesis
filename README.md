# Physics-Informed Neural Networks for Lévy-Driven Credit Risk Models

This repository contains the LaTeX source for the master's thesis "Physics-Informed Neural Networks for Solving Partial Integro-Differential Equations in Lévy-Driven Credit Risk Models" by Nikos Georgakopoulos.

## Prerequisites

- **LaTeX Distribution**: TeX Live (2020 or later) or MiKTeX
- **Required Packages**: 
  - `babel` (with Greek language support)
  - `hyperref`
  - `amsmath`, `amsthm`, `amsfonts`
  - `graphicx`
  - `booktabs`
  - `url`
  - Custom style: `UEDIN_SoE.sty` (included)

## Compilation

To compile the thesis to PDF, run the following commands in sequence:

```bash
# First compilation
pdflatex -interaction=nonstopmode thesis.tex

# Generate bibliography
bibtex thesis

# Second compilation (for bibliography)
pdflatex -interaction=nonstopmode thesis.tex

# Final compilation (for cross-references and ToC)
pdflatex -interaction=nonstopmode thesis.tex
```

## Files Structure

```
├── thesis.tex              # Main thesis document
├── frontmatter.tex          # Abstract, acknowledgments, ToC
├── thesis_references.bib    # Bibliography database
├── UEDIN_SoE.sty           # University style file
├── Figures/                 # Images and diagrams
├── thesis.pdf              # Compiled output
└── README.md               # This file
```

## Additional Notes

- The thesis uses the University of Edinburgh School of Engineering style
- Greek abstract requires proper Greek language support in your LaTeX installation
- All code, models, and data are available at: https://github.com/ngeorgakop/levy_ou_pinn
- For compilation issues, ensure all required packages are installed and up-to-date

## Output

Successfully compiled thesis produces `thesis.pdf` with complete frontmatter, chapters, bibliography, and proper cross-referencing.