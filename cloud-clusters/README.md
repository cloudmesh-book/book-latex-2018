## Creating the Document

Thid document is for the ebooks only

The documentation is very easy to create as it relies on pandoc. To
install it you can do the following:

Windows 10, Debian, Ubuntu, and derivatives use package published at

* <https://github.com/jgm/pandoc/releases/latest>

Mac OSX use homebrew

```bash
$ brew install node.
$ brew install graphviz
$ npm install --global mermaid-filter
$ brew install pandoc
```

Once you have installed pandoc you can create the book with our simple
`Makefile` contained in the source directory. Simply clone the source
and call make in the source dir

```bash
$ mkdir -p ~/githum/cloudmesh
$ cd ~/githum/cloudmesh
$ git clone https://github.com/cloudmesh/book.git
$ cd cloud-clusters
$ make
```
In case you need to use latex you need to download the full
version. For OSX this is

* <http://www.tug.org/mactex/mactex-download.html>

The Raspbery PI is to small to run LaTeX, so use it to log into a
remot resource and run it there.




To look at the book, open the text with your favorite e-book
reader. On OSX you can say

```bash
$ open vonlaszewski-cloud-cluster.epub
```

or simply

```bash
$ make view
```



