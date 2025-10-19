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

  MyAleartDialog(context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Text("Do you want"),
            content: Text("Do you want to delete?"),
            actions: [
              TextButton(onPressed: () {
                MySnackBar("Deleted", context);
                Navigator.of(context).pop();
              }, child: Text("Yes")),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("No"),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Inventory")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            MyAleartDialog(context);
          },
          child: Text("Click me"),
        ),
      ),
    );
  }
}
