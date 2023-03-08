css-books
=========

Example files for building CSS books. I use these as my starting point. I took them from the presentation done by Rachel Andrew [CSS and Ebooks](http://rachelandrew.co.uk/presentations/css-books) and her Net Magazine tutorial. Resources and more information about CSS and creating ebooks in a variety of formats can be found on her site [Book Toolkit](http://booktoolkit.com).

## Using these files

The file book.html contains 3 articles from my blog to create a "book" of three chapters.

These files are for use when creating an ebook in formats for EPUB, MOBI and PDF using the following command line tools. 

* [pandoc](http://johnmacfarlane.net/pandoc/)
* [Calibre](https://calibre-ebook.com/download)
* [Prince](http://www.princexml.com/)

Previously, Kindlegen was used to create MOBI files but Amazon's Kindlegen no longer works on MacOS

Download and install these tools first. Prince is a commercial tool however you can use it free of charge for non-commercial usage.

Git clone this repository.

### Create an EPUB

Change into the css-ebooks directory and at the cli run:

    > pandoc -o builds/book.epub book.html --epub-metadata=metadata.xml --toc --toc-depth=2 --epub-cover-image=cover.png --epub-stylesheet=epub-styles.css

### Create a MOBI

Use your EPUB as the source for the Calibre app.

    > /Applications/calibre.app/Contents/MacOS/ebook-convert Japan2023.epub Japan2023.mobi

### Create a PDF

This uses the toc.html file to create the table of contents.

    > prince -s pdf-styles.css toc.html book.html builds/book.pdf

I've avoided doing much in the way of typography in these examples but feel free to fork this and make it pretty.
