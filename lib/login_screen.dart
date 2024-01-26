import 'package:flutter/material.dart';
import 'package:login/dashboard_screen.dart';

void main() {
  runApp(const LoginScreen());
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/lock_icon.png', // Substitua pelo caminho da sua imagem de cadeado
                  color: Colors.purple, // Cor roxa para a imagem do cadeado
                  height: 48, // Altura desejada
                  width: 48, // Largura desejada
                ),
                const SizedBox(height: 8.0), // Adiciona espaçamento entre os widgets
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16.0), // Adiciona espaçamento entre os widgets
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'E-mail',
                  ),
                ),
                const SizedBox(height: 16.0), // Adiciona espaçamento entre os widgets
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Senha',
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 16.0), // Adiciona espaçamento entre os widgets
                ElevatedButton(
                  onPressed: () => onButtonEntrarClicked(context),
                    style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple, // Cor roxa para o botão "Entrar"
                    minimumSize: const Size(double.infinity, 48), // Largura total e altura de 48
                  ),
                  child: const Text(
                    'Entrar',
                    style: TextStyle(color: Colors.white), // Cor do texto branco
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void onButtonEntrarClicked(BuildContext context) {
  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) => const Dashboardscreen(),
  ),
  );
}

