# .latexmkrc
# Preconfigured for VimTeX + Zathura + LuaLaTeX / pdfLaTeX out of the box.

# Engine selection:
# 4 = LuaLaTeX (recommended for modern typography and speed)
# 1 = pdfLaTeX
# 5 = XeLaTeX
$pdf_mode = 4;
$postscript_mode = 0;
$dvi_mode = 0;

# Compilers with SyncTeX enabled for bidirectional inverse/forward search in VimTeX & Zathura
$lualatex = 'lualatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
$xelatex  = 'xelatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';

# Continuous previewer (Zathura)
$pdf_previewer = 'zathura %S';

# Intermediate build artifact cleanup
$clean_ext = 'synctex.gz synctex.gz(busy) run.xml bcf fdb_latexmk fls vrb nav snm listing out.ps alg alo lol mw';
