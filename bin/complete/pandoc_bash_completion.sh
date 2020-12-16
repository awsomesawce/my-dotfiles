# This script enables bash autocompletion for pandoc.  To enable
# bash completion, add this to your .bashrc:
# eval "$(pandoc --bash-completion)"

_pandoc()
{
    local cur prev opts lastc informats outformats datafiles
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

    # These should be filled in by pandoc:
    opts="-f -r --from --read -t -w --to --write -o --output --data-dir --base-header-level --strip-empty-paragraphs --indented-code-classes -F --filter --lua-filter -p --preserve-tabs --tab-stop --track-changes --file-scope --extract-media -s --standalone --template -M --metadata -V --variable -D --print-default-template --print-default-data-file --print-highlight-style --dpi --eol --wrap --columns --strip-comments --toc --table-of-contents --toc-depth --no-highlight --highlight-style --syntax-definition -H --include-in-header -B --include-before-body -A --include-after-body --resource-path --request-header --self-contained --html-q-tags --ascii --reference-links --reference-location --atx-headers --top-level-division -N --number-sections --number-offset --listings -i --incremental --slide-level --section-divs --default-image-extension --email-obfuscation --id-prefix -T --title-prefix -c --css --reference-doc --epub-subdirectory --epub-cover-image --epub-metadata --epub-embed-font --epub-chapter-level --pdf-engine --pdf-engine-opt --bibliography --csl --citation-abbreviations --natbib --biblatex --mathml --webtex --mathjax --katex --gladtex --abbreviations --trace --dump-args --ignore-args --verbose --quiet --fail-if-warnings --log --bash-completion --list-input-formats --list-output-formats --list-extensions --list-highlight-languages --list-highlight-styles -v --version -h --help"
    informats="commonmark creole docbook docx epub fb2 gfm haddock html jats json latex markdown markdown_github markdown_mmd markdown_phpextra markdown_strict mediawiki muse native odt opml org rst t2t textile tikiwiki twiki vimwiki"
    outformats="asciidoc beamer commonmark context docbook docbook4 docbook5 docx dokuwiki dzslides epub epub2 epub3 fb2 gfm haddock html html4 html5 icml jats json latex man markdown markdown_github markdown_mmd markdown_phpextra markdown_strict mediawiki ms muse native odt opendocument opml org plain pptx revealjs rst rtf s5 slideous slidy tei texinfo textile zimwiki"
    highlight_styles="pygments tango espresso zenburn kate monochrome breezedark haddock"
    datafiles="reference.docx reference.odt reference.pptx data"

    case "${prev}" in
         --from|-f|--read|-r)
             COMPREPLY=( $(compgen -W "${informats}" -- ${cur}) )
             return 0
             ;;
         --to|-t|--write|-w|-D|--print-default-template)
             COMPREPLY=( $(compgen -W "${outformats}" -- ${cur}) )
             return 0
             ;;
         --email-obfuscation)
             COMPREPLY=( $(compgen -W "references javascript none" -- ${cur}) )
             return 0
             ;;
         --pdf-engine)
             COMPREPLY=( $(compgen -W "pdflatex lualatex xelatex wkhtmltopdf weasyprint prince context pdfroff" -- ${cur}) )
             return 0
             ;;
         --print-default-data-file)
             COMPREPLY=( $(compgen -W "${datafiles}" -- ${cur}) )
             return 0
             ;;
         --wrap)
             COMPREPLY=( $(compgen -W "auto none preserve" -- ${cur}) )
             return 0
             ;;
         --track-changes)
             COMPREPLY=( $(compgen -W "accept reject all" -- ${cur}) )
             return 0
             ;;
         --reference-location)
             COMPREPLY=( $(compgen -W "block section document" -- ${cur}) )
             return 0
             ;;
         --top-level-division)
             COMPREPLY=( $(compgen -W "section chapter part" -- ${cur}) )
             return 0
             ;;
         --highlight-style)
             COMPREPLY=( $(compgen -W "${highlight_styles}" -- ${cur}) )
             return 0
             ;;
         *)
             ;;
    esac

    case "${cur}" in
         -*)
             COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
             return 0
             ;;
         *)
             local IFS=$'\n'
             COMPREPLY=( $(compgen -X '' -f "${cur}") )
             return 0
             ;;
    esac

}

complete -o filenames -o bashdefault -F _pandoc pandoc

