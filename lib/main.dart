import 'package:flutter/material.dart';

void main() {
  // is where execution starts.
  runApp(
    const MyApp(),
  ); // application .. runApp() tells Flutter: “Start the app and show this widget on screen.”
}

class MyApp extends StatelessWidget {
  // StatelessWidget = the UI doesn’t change dynamically.
  const MyApp({
    super.key,
  }); // const MyApp() is the root widget of your app. super.key = helps Flutter identify the widget uniquely (used for optimization).

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.green),
      color: Colors.green,
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    ); // home: HomeActivity() = the first screen the user sees. const here makes it immutable and faster.
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // AppBar = a horizontal bar typically shown at the top of an app using the appBar property of the Scaffold widget.
        title: Text("Inventory"),
        titleSpacing: 20,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 50,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () {
              MySnackBar("Comments", context);
            },
            icon: Icon(Icons.comment),
          ),
          IconButton(
            onPressed: () {
              MySnackBar("Search", context);
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              MySnackBar("settings", context);
            },
            icon: Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              MySnackBar("email", context);
            },
            icon: Icon(Icons.email),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () {
          MySnackBar("I am a floating action btn", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackBar("Home", context);
          }
          if (index == 1) {
            MySnackBar("Contact", context);
          }
          if (index == 2) {
            MySnackBar("Profile", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                accountName: Text(
                  "Pieash Ahmed",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text(
                  "pieash9@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: Image.network(
                  "https://media.licdn.com/dms/image/v2/D5603AQFoYUJq3jYfKA/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1685628922814?e=1762387200&v=beta&t=TQNqPy7-pCVKoaY-iy4KYptDgnDYV7e9Soo92sBaSXE",
                ),
                onDetailsPressed: () {
                  MySnackBar("This is my profile", context);
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                MySnackBar("Home", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {
                MySnackBar("person", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text("Contact"),
              onTap: () {
                MySnackBar("contact_mail", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Help"),
              onTap: () {
                MySnackBar("help", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About"),
              onTap: () {
                MySnackBar("about", context);
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                accountName: Text(
                  "Pieash Ahmed",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text(
                  "pieash9@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: Image.network(
                  "https://media.licdn.com/dms/image/v2/D5603AQFoYUJq3jYfKA/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1685628922814?e=1762387200&v=beta&t=TQNqPy7-pCVKoaY-iy4KYptDgnDYV7e9Soo92sBaSXE",
                ),
                onDetailsPressed: () {
                  MySnackBar("This is my profile", context);
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                MySnackBar("Home", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {
                MySnackBar("person", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text("Contact"),
              onTap: () {
                MySnackBar("contact_mail", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Help"),
              onTap: () {
                MySnackBar("help", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About"),
              onTap: () {
                MySnackBar("about", context);
              },
            ),
          ],
        ),
      ),
      body: Center(child: Image.network("https://media.istockphoto.com/id/1394440950/photo/natural-view-cosmos-filed-and-sunset-on-garden-background.webp?b=1&s=612x612&w=0&k=20&c=o3n-h2j4aBnaDqKeY-876cTRm1DLOsZcCjcfDZf_9TQ=")),
    );
  }
}
