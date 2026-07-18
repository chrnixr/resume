#!/usr/bin/env bash

# Build Docker image
docker build -t chrnixr/latex .

# Run LaTeX compiler
docker run --rm -i -v "$PWD":/data chrnixr/latex pdflatex charoen_resume.tex
