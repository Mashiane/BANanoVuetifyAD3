# BANanoVuetifyAD3

Welcome to BANanoVuetifyAD3.

## What is BANanoVuetifyAD3?

BANanoVuetifyAD3 is a framework to create WebApps and Websites. It is powered by [B4X](https://www.b4x.com/) + [Vuetify](https://vuetifyjs.com/en/) + [BANano](https://www.b4x.com/android/forum/threads/banano-website-app-pwa-library-with-abstract-designer-support.99740/#content). B4X is a Rapid Application Development toolset to create Android, iOS and Desktop Applications, whilst Vuetify is the world’s most popular Vue.js framework for building feature rich, blazing fast applications. BANano is the glue that binds B4X and Vuetify so that one is able to create their WebApp / WebSites using Vuetify CDN approach. BANano transpiles your B4X code (vb like syntax) into pure HTML/JavaScript/CSS.

Actually you don't have to know any JavaScript to start developing BANanoVuetifyAD3 WebApps/Websites.

## How to get started?

You can watch this [video](https://youtu.be/jKG2HUO4YdA) to take you through the installation process:

1. In your Windows PC, create a folder on your C drive, named *B4J*
2. Create 3 sub-folders inside this *B4J* folder named *libraries*, *shared* and *workspace*.
3. Download and install [B4J](https://www.b4x.com/b4j.html)
4. Download and install [Java JDK 8](https://www.oracle.com/java/technologies/downloads/#java8)
5. Get [BANano](https://www.b4x.com/android/forum/threads/banano-website-app-pwa-library-with-abstract-designer-support.99740/#content). Please note that this content is governed by the BANano License, accessible [here](https://github.com/Mashiane/BANanoVuetifyAD3/blob/main/BANano%20LICENSE.TXT).
6. Copy the contents of the BANano *Library* folder to your *C:\b4j\libraries* Folder
7. (Optional) Copy the contents of the BANanoServer *Library* folder to your *C:\b4j\libraries* Folder
8. Download and copy the contents of this [folder](https://github.com/Mashiane/BANanoVuetifyAD3/tree/main/External%20Libraries) to *C:\b4j\libraries* folder
9. Download and unzip the contents of this [folder](https://github.com/Mashiane/BANanoVuetifyAD3/tree/main/Library) to your *C:\b4j\workspace* folder.
10. (Optional) Download and unzip the [Kitchen Sink Demo WebApp](https://github.com/Mashiane/BANanoVuetifyAD3/blob/main/BVAD3KitchenSink.zip) to your *C:\b4j\workspace* folder.
11. (Optional) Download and unzip the [BANanoServer Kitchen Sink Demo WebApp](https://github.com/Mashiane/BANanoVuetifyAD3/blob/main/BVAD3Server.zip) to your *C:\b4j\workspace* folder.
12. BANanoVuetifyAD3 projects are developed using the [Laragon](https://laragon.org/download/) Development Web Server, however you can use any webserver of your choice.

## Setting up the B4J IDE

We need to configure Paths on the B4J IDE.

1. On the B4J IDE, click Tools
2. Click [Configure Paths](https://github.com/Mashiane/BANanoVuetifyAD3/blob/main/PathsConfiguration.jpg), browse to the location of javac.exe and ensure its set, usually its C:\Program Files\Java\jdk1.8.0_281\bin\javac.exe
3. Click and browse to the location of your additional libraries, this would be *C:\b4j\libraries* (if you just set it up)
4. Click and browse to the location of your shared modules, this would be *C:\bj4\shared* (if you just set it up)
5. Close the IDE.

## Up & Running in 5 Minutes

The Optional items below are to check if your installation was done successfully. It is recommended that you have a development webserver running. If you don't have one, please see the section below for using LAMP Laragon.

You can read this [Medium Article](https://mbanga-anele.medium.com/up-running-with-vuetify-in-5-minutes-using-bananovuetifyad3-badde1c6b79b) about this for more clarity.

1. Open the B4J IDE
2. Click File > New > [BVAD3 Blank](https://github.com/Mashiane/BANanoVuetifyAD3/blob/main/BVAD3Blank.jpg). You can also opt for the 3 Pages example by clicking [BVAD3](https://https://github.com/Mashiane/BANanoVuetifyAD3/blob/main/3pagesexample.jpg) on the menu.
3. Type in the [name of your project](https://github.com/Mashiane/BANanoVuetifyAD3/blob/main/EnterProjectName.jpg) (usually without spaces)
4. Click OK, this creates a new BVAD3 project for you.
5. (Optional) Click Windows > Reset
6. (Optional) On the bottom right of the IDE, find the Libraries Manager and click on it
7. (Optional) In the listed libraries, confirm that you have BANano, BANanoVuetifyAD3, BVAD3Classes [checked](https://github.com/Mashiane/BANanoVuetifyAD3/blob/main/LibrariesManager.jpg)
8. This project template is configured so that your compiled project is [published](https://github.com/Mashiane/BANanoVuetifyAD3/blob/main/PublishPath.jpg) on the Laragon Development WebServer Path. This is in the Main module and is defined as *Private Publish As String = "C:\laragon\www"*
9. You can change this path to suit your needs.
10. Press F5 to run the project, your web browser should open up
11. You can also change the WebServer Address. This has been specified as https:\\localhost on the *[config.propeties](https://github.com/Mashiane/BANanoVuetifyAD3/blob/main/FilesManager.jpg)* file. You can find this file on the Files tab of the B4J IDE.

## Known Issue [FileNotFound: manifest.txt]

If when running your example above you encounter the error as per subject, please follow the steps below titled '*Compiling the BANanoVuetifyAD3.b4xlib*' on your PC.

## (Optional) Using WAMP Laragon as your Development WebServer

If you are fairly new to web development, this development server will come very handy for you as its easy to set up and has been my preferred option.

1. After you [download](https://https://github.com/leokhoa/laragon/releases/download/5.0.0/laragon-wamp.exe) and install the webserver, you can configure it to run on any port, as depicted [here](https://https://github.com/Mashiane/BANanoVuetifyAD3/blob/main/laragon2.jpg). The setup here is on ports 80 and 443 (SSL). By default, web servers run on port 80. I have also activated SSL, for example to use the camera, geo location, firebase messaging etc, SSL should be activated.
2. If you change the default port to be another value, e.g. 8080, you also need to update the ServerIP variable in the config.properties file, to be your new port number, for example to be **ServerIP=http://localhost:8080**
3. If you have not activated SSL on laragon, also update the ServerIP to be http and not https.

## (Optional) Compiling the BANanoVuetifyAD3.b4xLib

You can also compile the BANanoVuetifyAD3.b4xlib from the source.

From your *C:\b4j\workspace* folder locate and open the BANanoVuetifyAD3.b4j project.

Double click to open it and then press F5 to run the B4J Project. DO NOT COMPILE TO LIBRARY. This will compile the b4xlib and automatically put it under the C:\b4j\libraries folder.

## (Optional) Running the Kitchen Sink Demo WebApps

A demo containing all the Vuetify components and some extras named 'The New Awesome Kitchen Sink' is available [online](https://https://mashiane.github.io/BANanoVuetifyAD3/).

You can also download this kitchen sink and run it on your PC. Please note that all the WebApps showcases here are configured to be published on the Laragon Development Server, however you can publish them on any web server by changing the source code.

To change the publish path, open the B4J project and in the Main Module change the path specified on the "Publish" string variable to suit your  needs.

Also the webserver path, has been specified as https:\\localhost on the *config.propeties* file (in the Files folder of your project). You can change this to suit your development setup.

## Learner Material

As a beginner, you can watch this [introductory video](https://youtu.be/QQzPrfX1lQo) to begin your journey.

## Mashy Teaches BANanoVuetifyAD3 - The New Series

We have started a new series on teaching BANanoVuetifyAD3. You can check it out [here](https://www.b4x.com/android/forum/threads/mashy-teaches-webapp-website-development-with-bananovuetifyad3-the-new-series.132305/#content).

# 

Have Fun!

PS: Written with https://stackedit.io
