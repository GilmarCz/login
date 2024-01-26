import 'package:flutter/material.dart';

class Dashboardscreen extends StatelessWidget {
  const Dashboardscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checklist de atividades"),
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                radius: 64,
                  backgroundImage: AssetImage('assets/profile.jpg'),
              ),
                accountName: Text("Gilmar Czeika"),
                accountEmail: Text("gilmar@email.com"),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Sair"),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
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
        onPressed: (){},
        child: const Icon(Icons.add),
      ),
    );
  }
}
