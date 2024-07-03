import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.go('/signin');
        },
        label: Text('Lets start'),
      ),
      body: SafeArea(
        child: Image.network(
          height: double.infinity,
          'https://w0.peakpx.com/wallpaper/402/48/HD-wallpaper-nature-mountains-look-nice.jpg',
          filterQuality: FilterQuality.high,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
