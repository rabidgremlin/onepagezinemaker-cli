# onepagezinemaker-cli
Create a one page zine from a multipage PDF using a CLI

```
docker build -t rabidgremlin/onepagezinecli .
```

```
Usage Windows:
              docker run  --rm -it -v "%cd%:/src" rabidgremlin/onepagezinecli <pages pdf> [poster pdf] <output pdf>
Usage Linux/Mac OS:
              docker run  --rm -it -v "$(pwd):/src" rabidgremlin/onepagezinecli <pages pdf> [poster pdf] <output pdf>

pages pdf: an 8 page pdf file containing the pages of the zine.
poster pdf: an optional 1 page pdf file containing a poster to put on the back of the unfolded zine.
output pdf: the name of the output pdf file
```