# Makefile
# High-performance build automation for Charlie's LaTeX Template.
# Integrates with VimTeX, Zathura, and pdftoppm preview rendering.

.DEFAULT_GOAL := help

MAIN_SRC    ?= main.tex
JOBNAME     ?= output
OUTPUT_PDF  ?= $(JOBNAME).pdf
PREVIEW_DIR ?= assets/preview
DPI         ?= 150
ENGINE      ?= lualatex

# Colors for terminal output
CYAN   := \033[36m
GREEN  := \033[32m
YELLOW := \033[33m
RED    := \033[31m
RESET  := \033[0m

.PHONY: all build watch previews clean distclean help

## all: Compile document and generate asset preview images
all: build previews

## build: Compile main.tex to output.pdf using latexmk
build:
	@echo -e "$(CYAN)--> Compiling $(MAIN_SRC) with $(ENGINE)...$(RESET)"
	latexmk -$(ENGINE) -jobname=$(JOBNAME) -synctex=1 -interaction=nonstopmode -file-line-error $(MAIN_SRC)
	@cp -f $(OUTPUT_PDF) main.pdf 2>/dev/null || true
	@echo -e "$(GREEN)✓ Compilation finished: $(OUTPUT_PDF) (synced to main.pdf)$(RESET)"

## watch: Continuous compilation with live reload for Zathura / VimTeX
watch:
	@echo -e "$(CYAN)--> Starting latexmk live preview watcher...$(RESET)"
	latexmk -pvc -$(ENGINE) -jobname=$(JOBNAME) -synctex=1 -interaction=nonstopmode $(MAIN_SRC)

## previews: Convert compiled PDF pages into high-resolution PNG previews in assets/preview/
previews: build
	@echo -e "$(CYAN)--> Generating high-res PNG previews into $(PREVIEW_DIR)...$(RESET)"
	@mkdir -p $(PREVIEW_DIR)
	@rm -f $(PREVIEW_DIR)/demo-page-*.png
	pdftoppm -png -r $(DPI) $(OUTPUT_PDF) $(PREVIEW_DIR)/demo-page
	@echo -e "$(GREEN)✓ Previews successfully generated in $(PREVIEW_DIR)/$(RESET)"
	@ls -la $(PREVIEW_DIR)

## clean: Remove intermediate LaTeX build artifacts
clean:
	@echo -e "$(YELLOW)--> Cleaning intermediate LaTeX build artifacts...$(RESET)"
	latexmk -c -jobname=$(JOBNAME) $(MAIN_SRC) 2>/dev/null || true
	@rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk *.synctex.gz *.listing *.mw *.alg *.alo *.lol
	@echo -e "$(GREEN)✓ Clean complete.$(RESET)"

## distclean: Remove all generated files (PDFs, auxiliary files, and preview images)
distclean: clean
	@echo -e "$(RED)--> Removing output PDFs and previews...$(RESET)"
	@rm -f $(OUTPUT_PDF) main.pdf
	@rm -rf $(PREVIEW_DIR)/*.png
	@echo -e "$(GREEN)✓ Distclean complete.$(RESET)"

## help: Display available Makefile targets
help:
	@echo -e "$(CYAN)Available Makefile commands:$(RESET)"
	@grep -E '^## ' $(MAKEFILE_LIST) | sed -e 's/## //' | awk 'BEGIN {FS = ": "}; {printf "  \033[36m%-12s\033[0m %s\n", $$1, $$2}'
