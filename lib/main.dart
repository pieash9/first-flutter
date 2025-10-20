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
      appBar: AppBar(title: const Text("Home")),
      body: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200)),
        elevation: 10,
        shadowColor: Colors.green,
        color: Color.fromRGBO(20, 176, 90, 1),
        child: SizedBox(
          height: 200,
          width: 200,
          child: Center(child: Text("This is card!")),
        ),
      ),
    ); // Scaffold = provides a basic structure for the app screen, including app bar, body, etc.
  }
}
