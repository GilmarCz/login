import 'package:flutter/material.dart';
import 'package:login/login_screen.dart';

class Dashboardscreen extends StatelessWidget {
  const Dashboardscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checklist de atividades"),
      ),
      drawer:  Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                radius: 64,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
              accountName: Text("Gilmar Czeika"),
              accountEmail: Text("gilmar@email.com"),
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text("Sair"),
              onTap: () => onButtonSairClicked(context),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children:  const [
            ListTile(
              leading: Icon(Icons.check),
              title: Text("Estudar Flutter"),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text("Estudar Unity"),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text("Aprender Dart"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  void onButtonSairClicked(BuildContext context) {
    // Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //         builder: (context) => const LoginScreen(),
    //   ),
    // );
    Navigator.of(context).pushReplacementNamed("/login");
  }
}
