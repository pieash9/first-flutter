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
      appBar: AppBar(title: Text("Inventory")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: 100,
            child: Image.network(
              "https://images.contentstack.io/v3/assets/bltcedd8dbd5891265b/blt5f18c2119ce26485/6668df65db90945e0caf9be6/beautiful-flowers-lotus.jpg?q=70&width=3840&auto=webp",
            ),
          ),Container(
            height: 100,
            width: 100,
            child: Image.network(
              "https://images.contentstack.io/v3/assets/bltcedd8dbd5891265b/blt5f18c2119ce26485/6668df65db90945e0caf9be6/beautiful-flowers-lotus.jpg?q=70&width=3840&auto=webp",
            ),
          ),Container(
            height: 100,
            width: 100,
            child: Image.network(
              "https://images.contentstack.io/v3/assets/bltcedd8dbd5891265b/blt5f18c2119ce26485/6668df65db90945e0caf9be6/beautiful-flowers-lotus.jpg?q=70&width=3840&auto=webp",
            ),
          ),
        ],
      ),
    );
  }
}
