# Project Getaway


## Introduction:


  //  Simple application to help restaurant customers to sign
    in reserve a table in the restaurant's when its busy, 
    avoid waiting in queue and return back to restaurant
     when the table is ready.//


## Users can:
  1. The app has two separate users (clients) restaurant and customers.
	2. The Customer can login, reserve a spot in the restaurant and Not wait in the queue outside the restaurant.
	3. Make orders while they are away waiting for their table, or cancel their reservation.
	4. The restaurant owner can login in check the list of reservations.
	5. Check the orders made my customers.
	6. Map the location of their customers.
	7. Send a message to the customers when the table is ready.


## Front End Wire Frame:


![](./img/whiteboarding.JPG)




## DataBase Design:



![](./img/Getaway.png)




## Pseudo Code:
### As a Customer:
1. Scan the Q.R Code, And is directed to the login page.
2. The customer logs in as a new user or a returning customer.
3. As soon as customer logs in they are directed to a ticket page.
4. Receives a ticket number and the waiting time.
5. The ticket number page has a order button, which pops the menu page and customers can place their order.
6. Customer receives an alert when table is ready.

### As a Restaurant Owner:
1. Log in and view the list of reservations.
2. Click on the customers to views customer order.
3. Send alert to customer.
4. View customer location.



## Routes:

   get '/login/:id' => 'sessions#login'

   post '/login' => 'sessions#create'

   delete '/login' => 'sessions#destroy'

   delete '/queues' => 'queues#destroy'

   get '/restaurants/refresh_part' => 'restaurants/refresh_part'



## WebSocket:

WebSocket was created to relay messages between two clients
since the restaurant and customer both are clients connecting to the server.


## Group Members:

#### Sharon
#### Danny
#### Felix
#### Paresh
