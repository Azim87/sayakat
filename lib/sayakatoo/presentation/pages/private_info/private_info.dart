import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PrivateInfoPage extends StatelessWidget {
  const PrivateInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.go('/home');
        },
        label: const Text('Next'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(hintText: 'first name'),
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'last name'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
