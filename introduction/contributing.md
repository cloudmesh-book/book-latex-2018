# Contributing

Contributing content to this book is easy. First you have to clone the directory with the command

    mkdir -p ~/github/cloudmesh
    cd ~/github/cloudmesh
    git clone https://github.com/cloudmesh/book.git


> **Note:** *gitbook editor does not work with ssh based clone, so please use the https link as specified above*



Next we recommend that you download the ```Gitbook Editor``` for your OS from 

* OSX: https://www.gitbook.com/editor/osx
* Windows: https://www.gitbook.com/editor/windows
* Linux: https://www.gitbook.com/editor/linux

Open the editor and open the directory 

    ~/github/cloudmesh/book
    
You will now see the book in the editor and you can edit the contents.
    

To generate the PDF or epub use the commands

    ???
    
Than open the create document with 

    ???
    
## OSX

Install calibre from:
https://calibre-ebook.com/download_osx

    ln -s /Applications/calibre.app/Contents/MacOS/ebook-convert /usr/local/bin

Install the gitbook client

    npm install -g gitbook-cli
    gitbook help
    gitbook build .
    gitbook install

Create the PDF file and view it

    gitbook pdf .
    open book.pdf 
  

