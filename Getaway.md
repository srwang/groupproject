Getaway

1. Customer scans the QR code 
2. The server routes the customer to the restaurants login page 
3. As Soon as the customer logs in as a new user or as a returning customer 
          The server checks the database and 
4. Authenticates the user and starts the session  
5. Server grabs the customer parameters generates a token number 
6. The customer is then routed to the token page 
         the Token Page displays the unique token and the waiting time.
         thee Token page also has a order button when clicked 
         It routes the customer to the menu page
         The menu page has a add button which adds items to a cart 
         When the customer adds the cart to the order 
         the customers database is updated which now also has items in the order column.
7. Restaurants has a login page 
8. Once the Restaurant logs in 
9. The Index page shows the list of customers in the queue
       Server Reads through the db and display the list of all waiting customers.
       the index page also has a send button which would send message to the 
       logged in customer when the table is ready.
       This in turn refreshes the page updates the page removing the customer from the list.
10. The list has customer name which is a link to the customer show page 
11. The show page has customer Information Username, and order if any.
      

