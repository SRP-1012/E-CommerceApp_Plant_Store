# plantStore

A Flutter Project that can be converted to any E-Commerce App with high flexibility.
This that can be attached to any desired backend easily.
This is a Online Plant Store App, can be coverted to any desired E-Commerce App.

## Running this project on your system

First...install flutter, Android Studio, Virtual emulator(if you want to run it on a virtual mobile) by 
taking reference from official documentations.
After setting everything up,
You can run the code through Android Studio or Visual Studio Code on either your real device or on 
the virtual device.
Now you will be able to see and expirience the app.

## Changing Frontend as Desired

CAN BE CONVERTED TO ANY TYPE OF "E-COMMERCE" App EASILY!!

Anyone with basic Flutter Knowledge can change this project according to his/her requirements.

The name displayed in the App Bar can the changed by accessing title in AppBar widget.
The Theme of the App can be changed by changing ThemeData in lib/main.dart
The products need not neccessarily be plants, it can be anything. 


## Setting up Backend

The products that are displayed are all stored in lib/Providers/product-provider.dart
	The list is initiated with a DUMMY DATA, which can be replaced by a list in your desired 
	backend.
	After attaching it with a backend web server, use fetchAndSet functions to get the data
	from the server and create the list of the model Products as specified in this project.

	The Top Picks list is also in the same file. This too, can be changed or retrieved from 
	the web server.

The Reviews are in lib/screens/product-detail-screen.dart
	The list is initiated in the above specified screen and hence, all the products will 
	have the same set of reviews.
	The list has to be stored in the webserver along with the product id, and then has to be
	fetched from the server and displayed in the product-detail-screen.

The Offers that are shown in the app can also be changed as per your will.
The offers are stored in lib/Providers/offer-provider.dart

