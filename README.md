# Restaurant Menu CMS

As with some of my other personal portfolio work, this project serves as a playground where I can explore and experiment with new (well, new-to-me) technologies.

Still very much in its infancy stage, this Ruby on Rails application is one part of a decoupled software system fronted by an eCommerce React application.

This Rails server exposes:
  * A cors-configured API namespace which returns JSON menu data to populate the frontend app,
  * An auth protected browser-based CMS tool for managing that menu data

  [View the frontend code here.](https://github.com/sds-smith/restaurant_menu/tree/main)

Currently the menu data is fetched directly by the frontend React application from the API. A future release will incorporate a Node/ Express server to handle this, as well as authentication/ authorization with Paypal and Doordash.

Stay tuned for updates . . .