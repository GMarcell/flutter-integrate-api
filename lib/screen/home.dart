import 'package:flutter/material.dart';
import 'package:integrate_api/model/user.dart';
import 'package:integrate_api/services/user_api.dart';

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
    fetchUsersApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rest Api Flutter'),
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            // final color = user.gender == 'male' ? Colors.blue : Colors.green;
            return ListTile(
              title: Text(user.fullName),
              subtitle: Text(user.phone),
            );
          }),
    );
  }

  Future<void> fetchUsersApi() async {
    final response = await UserApi.fetchUsers();
    setState(() {
      users = response;
    });
  }
}
