#!/bin/bash

# check that either two or three arguments were passed, print usage if not
if [ $# -lt 2 ] || [ $# -gt 3 ]; then
    echo "Usage Windows:"
    echo '              docker run  --rm -it -v "%cd%:/src" rabidgremlin/onepagezinecli <pages pdf> [poster pdf] <output pdf>'
    echo "Usage Linux/Mac OS:"
    echo '              docker run  --rm -it -v "$(pwd):/src" rabidgremlin/onepagezinecli <pages pdf> [poster pdf] <output pdf>'
    echo
    echo "pages pdf: an 8 page pdf file containing the pages of the zine."
    echo "poster pdf: an optional 1 page pdf file containing a poster to put on the back of the unfolded zine."
    echo "output pdf: the name of the output pdf file."
    exit 1
fi 

# check that first argument is a pdf file
if [ ! -f /src/$1 ]; then
    echo "Error: $1 not found."
    exit 1
fi

# copy first augment to file called /tmp/pages.pdf
cp /src/$1 /tmp/pages.pdf

# if we have a third argument then treat 2nd argument as poster pdf and copy it to /tmp/poster.pdf
if [ $# -eq 3 ]; then
    # check that 2nd argument exists as file
    if [ ! -f /src/$2 ]; then
        echo "Error: $2 not found."
        exit 1
    fi
    cp /src/$2 /tmp/poster.pdf
fi

# if we have only two arguments then use a4_no_poster_zine.tex as the latex file, otherwise use a4_poster_zine.tex
if [ $# -eq 2 ]; then
    xelatex --output-directory=/tmp a4_no_poster_zine.tex 
    cp /tmp/a4_no_poster_zine.pdf /src/$3
else
    xelatex --output-directory=/tmp a4_with_poster_zine.tex 
    cp /tmp/a4_with_poster_zine.pdf /src/$3
fi