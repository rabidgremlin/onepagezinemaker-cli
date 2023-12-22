#!/bin/bash

# check that either one or two arguments were passed, print usage if not
if [ $# -lt 1 ] || [ $# -gt 2 ]; then
    echo "Usage Windows:"
    echo '              docker run  --rm -it -v "%cd%:/src" rabidgremlin/onepagezinecli <pages.pdf> [poster.pdf]'
    echo "Usage Linux/Mac OS:"
    echo '              docker run  --rm -it -v "$(pwd):/src" rabidgremlin/onepagezinecli <pages.pdf> [poster.pdf]'
    exit 1
fi


ls -la /src

# copy first augment to file called /tmp/pages.pdf
cp /src/$1 /tmp/pages.pdf

#copy second argument to file called /tmp/poster.pdf if argumnet is passed
if [ $# -eq 2 ]; then
    cp /src/$2 /tmp/poster.pdf
fi


xelatex --job-name=zine --output-directory=/tmp no_poster_zine.tex 
cp /tmp/no_poster_zine.pdf /src/zine.pdf
ls -la