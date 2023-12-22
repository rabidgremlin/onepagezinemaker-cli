# onepagezinemaker-cli
Create a one page zine from a multipage PDF using a CLI.
Supply a PDF with 8 pages and an optional 1 page "poster" pdf.


## Build the docker image
```
docker build -t rabidgremlin/onepagezinecli .
```

## Usage
```
Usage Windows:
              docker run  --rm -it -v "%cd%:/src" rabidgremlin/onepagezinecli <pages pdf> [poster pdf] <output pdf>
Usage Linux/Mac OS:
              docker run  --rm -it -v "$(pwd):/src" rabidgremlin/onepagezinecli <pages pdf> [poster pdf] <output pdf>

pages pdf: an 8 page pdf file containing the pages of the zine.
poster pdf: an optional 1 page pdf file containing a poster to put on the back of the unfolded zine.
output pdf: the name of the output pdf file
```

## Folding instructions
Print and then fold and cut the zine pdf as follows:

![](https://teaching.ellenmueller.com/foundations-101/files/2017/08/zine-folding.jpg)

If you generate zine with a poster then make sure to print the generated zine PDF as a onesheet, double sided.

