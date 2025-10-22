import 'dart:convert';

import 'package:app1/model/user.dart';
import 'package:app1/services/user_api.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rest APi Call")),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          final email = user.email;
          final gender = user.gender;
          final color = user.gender == "male" ? Colors.blue : Colors.pink;
          return ListTile(
            // leading: CircleAvatar(child: Image.network(imageUrl)),
            title: Text(user.fullName),
            // tileColor: color,
            subtitle: Text(user.phone),
          );
        },
      ),
      // floatingActionButton: FloatingActionButton(onPressed: fetchUsers),
    );
  }

  void fetchUsers() async {
    final response = await UserApi.fetchUsers();
    setState(() {
      users = response;
    });
  }
}
