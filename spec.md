# Specifications for the CLI Assessment

Specs:
- [x] Have a CLI for interfacing with the application

bin/telly-reviews instantiates CLI and calls the call method. This method welcomes the user and calls 
the start method after calling Scraper's class method .make_list. The start method prints a list of 
reviews and allows the user to drill down into each review. Finally the user has the option to 
open a review in a web browser.

- [x] Pull data from an external source

I pulled data from Variety.com. The first part pulls the title, author, and url from the index page
that lists all of the articles. The next part pulls additional data from each individual article, 
including the body, twitter name, and date.

- [x] Implement both list and detail views

The make_list method pulls data for the list (title of article, author, and url). The detailed view, as
stated above, pulls additional data using the review_details method.
