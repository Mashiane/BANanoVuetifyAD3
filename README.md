# BANanoVuetifyAD3
Welcome to BANanoVuetifyAD3.

## What is BANanoVuetifyAD3?

BANanoVuetifyAD3 is a framework to create WebApps and Websites. It is powered by [B4X](https://www.b4x.com/) + [Vuetify](https://vuetifyjs.com/en/) + [BANano](https://www.b4x.com/android/forum/threads/banano-website-app-pwa-library-with-abstract-designer-support.99740/#content). B4X is a Rapid Application Development toolset to create Android, iOS and Desktop Applications, whilst Vuetify is the world’s most popular Vue.js framework for building feature rich, blazing fast applications. BANano is the glue that binds B4X and Vuetify so that one is able to create their WebApp / WebSites using Vuetify CDN approach. BANano transpiles your B4X code (vb like syntax) into pure HTML/JavaScript/CSS. 

Actually you don't have to know any JavaScript to start developing BANanoVuetifyAD3 WebApps/Websites.

## How to get started?

1. In your Windows PC, create a folder on your C drive, named *B4J*
2. Create 3 sub-folders inside this *B4J* folder named *libraries*, *shared* and *workspace*.
3. Download and install [B4J](https://www.b4x.com/b4j.html)
4. Download and install [Java JDK 8](https://www.oracle.com/java/technologies/downloads/#java8) 
5. Download and unzip [BANano](https://www.b4x.com/android/forum/threads/banano-website-app-pwa-library-with-abstract-designer-support.99740/#post-627764) 
6. Copy the contents of the BANano *Library* folder to your *C:\b4j\libraries* Folder
7. Copy the contents of the BANanoServer *Library* folder to your *C:\b4j\libraries* Folder
8. Download [ByteConvertor](https://www.b4x.com/android/files/ByteConverter1.1.zip) and unzip this in the *C:\b4j\libraries* folder.
9. Download and copy the contents of this [folder](https://github.com/Mashiane/BANanoVuetifyAD3/tree/main/External%20Libraries) to *C:\b4j\libraries* folder
10. Download and unzip the contents of this [folder](https://github.com/Mashiane/BANanoVuetifyAD3/tree/main/Library) to your *C:\b4j\workspace* folder. 
11. (Optional) Download and unzip the [Kitchen Sink Demo WebApp](https://github.com/Mashiane/BANanoVuetifyAD3/blob/main/BVAD3KitchenSink.zip) to your *C:\b4j\workspace* folder.
12. (Optional) Download and unzip the [BANanoServer Kitchen Sink Demo WebApp](https://github.com/Mashiane/BANanoVuetifyAD3/blob/main/BVAD3Server.zip) to your *C:\b4j\workspace* folder.


## Setting up the B4J IDE

We need to configure Paths on the B4J IDE.

1. On the B4J IDE, click Tools
2. Click Configure Paths, browse to the location of javac.exe and ensure its set, usually its C:\Program Files\Java\jdk1.8.0_281\bin\javac.exe
3. Click and browse to the location of your additional libraries, this would be *C:\b4j\libraries* (if you just set it up)
4. Click and browse to the location of your shared modules, this would be *C:\bj4\shared* (if you just set it up)
5. Close the IDE.

## Compiling the BANanoVuetifyAD3 B4xLib

Before you can use the BANanoVuetifyAD3 toolset, you need to compile the BVAD3 library.
From your *C:\b4j\workspace* folder locate and open the BANanoVuetifyAD3.b4j project folder. 

Double click to open it and then press F5 to run the B4J Project. This will compile the b4xlib and put it under the C:\b4j\libraries folder.

## Running the Kitchen Sink Demo WebApps

The Demo WebApps above are configured to be published on the Laragon Development Server, however you can publish them on any web server by changing the source code.

To change the publish path, open the B4J project and in the Main Module change the path specified on the "Publish" string variable to suit your  needs.

Also the webserver path, has been specified as https:\\localhost on the *config.propeties* file (in the Files folder of your project). You can change this to suit your development setup.

## Learner Material

As a beginner, you can watch this [introductory video](https://youtu.be/QQzPrfX1lQo) to begin your journey.

## Mashy Teaches BANanoVuetifyAD3 - The New Series

We have started a new series on teaching BANanoVuetifyAD3. You can check it out [here](https://www.b4x.com/android/forum/threads/mashy-teaches-webapp-website-development-with-bananovuetifyad3-the-new-series.132305/#content).

#

Have Fun!
