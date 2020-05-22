# DMV Restaurants Database
# For INST327 at the University of Maryland

This is a test database of restaurants in the DMV area. We began to build the database by figuring out what tables we wanted to be featured. You can take a sneak peek at the tables in the file titled "team_4_restaurants_logical.png". 

Then we created some sample data. This data lists real restaurants with fictitious reviews, customer information, and restaurant vending companies. After, we brainstormed a few possible queries that could be used on the database and turned them into views.

The views I created go as follows:
- payment_vending: 
This view counts how many times a particular payment type and how much money in total (across all the orders) vendors should expect to receive in that payment form. 

- ratings_and_party_size:
This view finds the average party size for restaurants with an average rating greater than 3.5.

- stay_at_home: 
This view counts the number of reservations each restaurant must cancel due to the stay at home order issued for Maryland and Washington, D.C. on March 30, 2020. 

You may read more about the process of designing the database in the written report titled "team_4_restaurants_report.pdf". 
