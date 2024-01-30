import 'package:flutter/material.dart';
import 'activity_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<String> activities = ['Estudar Flutter', 'Estudar Unity', 'Aprender Dart'];

  void addActivity(String activity) {
    if (activity.isNotEmpty) {
      setState(() {
        activities.add(activity);
      });
    }
  }


  void onButtonSairClicked(BuildContext context) {
    Navigator.of(context).pushReplacementNamed("/login");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checklist de atividades"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                radius: 64,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
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
        child: ListView.builder(
          itemCount: activities.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.check),
              title: Text(activities[index]),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ActivityScreen(addActivity: addActivity),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
