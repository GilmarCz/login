import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  final Function(String) addActivity;
  final TextEditingController _activityController = TextEditingController();

  ActivityScreen({Key? key, required this.addActivity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nova Atividade"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _activityController,
              decoration: InputDecoration(
                labelText: 'Nome da Atividade',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                String newActivity = _activityController.text;
                if (newActivity.isNotEmpty) {
                  addActivity(newActivity);
                }
                Navigator.pop(context);
              },
              child: const Text('Adicionar Atividade'),
            ),
          ],
        ),
      ),
    );
  }
}

