Craft CMS Project with Sass
This project is a website built using Craft CMS and Sass.

If you run the code local, The demo page located on http://localhost/ecommerce/web/products/product-title#

Getting Started
Prerequisites
To run this project, you will need the following:

PHP 7.4 or higher
MySQL 5.7 or higher
Composer
Node.js
Sass
Installation
Clone the repository to your local machine using the following command:
git clone https://github.com/yourusername/craft-cms-sass.git

Install the required packages using Composer:
composer install

Install the required packages using NPM:
npm install

Create a new database in MySQL.

Copy the .env.example file and rename it to .env. Update the database credentials in the .env file to match your local MySQL settings.

Generate a new security key by running the following command:
./craft setup/security-key

Install Craft CMS by running the following command:
./craft install

Run the following command to build the CSS files from the Sass files:
npm run build

Start the local development server by running the following command:
./craft serve

Usage
You can access the website by visiting http://localhost:8000 in your web browser.

Development
To watch the Sass files for changes and automatically rebuild the CSS files, run the following command:
npm run watch

Deployment
To deploy the website to a live server, you can follow the instructions provided in the Craft CMS documentation.
