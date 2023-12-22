# onepagezinemaker-cli
Create a one page zine from a multipage PDF using a CLI

```
docker build -t rabidgremlin/onepagezinecli .
```

```
Usage Windows:
              docker run  --rm -it -v "%cd%:/src" rabidgremlin/onepagezinecli <pages.pdf> [poster.pdf]
              
Usage Linux/Mac OS:
              docker run  --rm -it -v "$(pwd):/src" rabidgremlin/onepagezinecli <pages.pdf> [poster.pdf]
```