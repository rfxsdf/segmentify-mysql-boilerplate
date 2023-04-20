# MySQL + Flask Boilerplate Project

## Project Overview
**Project Description**: Our project is meant to create an application that helps companies (from start-ups to well-established organizations) segment customers, improve marketing strategies, and provide detailed analytical reports on customer transaction information to build their customer base. This application will make marketing easier, more convenient, and more efficient. Instead of trying to develop marketing strategies towards a certain customer base, our application will develop a plan for you to help you attract particular customers, expand product markets, and boost revenue.

**Usage Examples**: One potential user persona of our application could be current clients. Current clients would use our application if:
1. they want to determine which segment of customers is best to target to establish a good foundation for their business (minimize losses and maximize profits).
2. they want to branch out their business and target other profitable segments.
3. they want to be able to identify the most popular/demanded products and develop their business around that.
4. they want to figure out how to price their products and update that information appropriately so that they attract the most customers and it is comparable with competitors.
5. they want to be able to track and analyze their spending to ensure that they stick within their budget and don’t overspend at the very beginning stages of their business.
6. they want to be able to look at all the products they have, update the products they offer, add new products, and remove products if needed.

Another potential user persona of our application could be internal employees. Internal employees would use our application if:
1. they want to look at all of their customer information so that they can better manage their customer database.
2. they want to modify information on their customer database that the customers themselves can’t access so that they can fix errors in their database.
3. they want to summarize/consolidate customer data and establish reports accordingly so they can see which customers are more profitable to them.
4. they want to calculate profit improvements for their customers, so that they can determine which customers are actually making improvements in terms of marketing strategy development.

**Features**: Our application has a home page that lets users select which pages to work with depending upon which persona they better satisfy. 

If the user  aligns more with a current client, they could view a database of customer information; they could view a database of order information; they could view a database of product information; and/or they could add, delete, or update a product.

If the user aligns more with an internal employee, they could view a database of current clients; they could add or delete a client; and/or they could update the order details associated with certain orders.

**Contact Information**: Luke Abbatessa (abbatessa.l@northeastern.edu), Jenny Cai (cai.je@northeastern.edu), Yuting Zheng (zheng.yuti@northeastern.edu)

This repo contains a boilerplate setup for spinning up 3 Docker containers: 
1. A MySQL 8 container for obvious reasons
1. A Python Flask container to implement a REST API
1. A Local AppSmith Server

## How to setup and start the containers
**Important** - you need Docker Desktop installed

1. Clone this repository.  
1. Create a file named `db_root_password.txt` in the `secrets/` folder and put inside of it the root password for MySQL. 
1. Create a file named `db_password.txt` in the `secrets/` folder and put inside of it the password you want to use for the a non-root user named webapp. 
1. In a terminal or command prompt, navigate to the folder with the `docker-compose.yml` file.  
1. Build the images with `docker compose build`
1. Start the containers with `docker compose up`.  To run in detached mode, run `docker compose up -d`. 




