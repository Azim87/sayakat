import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.go('/private_info');
        },
        label: const Text('Confirm'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(hintText: 'email'),
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'password'),
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'confirm password'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
