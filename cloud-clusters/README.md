## Creating the Document

The documentation is very easy to create as it relies on pandoc. To
install it you can do the following:

Windows 10, Debian, Ubuntu, and derivatives use package published at

* <https://github.com/jgm/pandoc/releases/latest>

Mac OSX use homebrew

> ```bash
> $ brew install pandoc
> ```

Once you have installed pandoc you can create the book with our simple
`Makefile` contained in the source directory. Simply clone the source
and call make in the source dir

```bash
$ mkdir -p ~/githum/cloudmesh
$ cd ~/githum/cloudmesh
$ git clone https://github.com/cloudmesh/book.git
$ cd bookcloud-clusters
$ make
```

To look at the book, open the text with your favorite e-book
reader. On OSX you can say

```bash
$ open vonlaszewski-cloud-cluster.epub
```

or simply

```bash
$ make view
```



