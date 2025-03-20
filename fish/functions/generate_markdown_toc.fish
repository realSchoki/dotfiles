# Usage: generate_markdown_toc "AS 3000-2018 Wiring Rules.pdf" 3
function generate_markdown_toc
    set -l pdf_file "$argv[1]"
    set -l max_level "$argv[2]"
    pdftk "$pdf_file" dump_data | awk -v max_level="$max_level" '/BookmarkTitle:/ {gsub("BookmarkTitle: ", ""); title=$0} /BookmarkPageNumber:/ {gsub("BookmarkPageNumber: ", ""); page=$0} /BookmarkLevel:/ {gsub("BookmarkLevel: ", ""); level=$0; if (level <= max_level) { l = sprintf("%*s", level, ""); gsub(".", "#", l); s = sprintf("%s %s (Page %s)\n", l, title, page); printf("%s\n", s)}}'
end
