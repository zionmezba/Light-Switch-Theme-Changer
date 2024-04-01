import 'package:flutter/material.dart';
import 'package:light_switch/components/box.dart';
import 'package:light_switch/components/button.dart';
import 'package:light_switch/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: MyBox(
              color: Theme.of(context).colorScheme.primary,
              child: MyButton(
                color: Theme.of(context).colorScheme.secondary,
                onTap: () {
                  Provider.of<ThemeProvider>(context, listen: false)
                      .toggleTheme();
                },
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text('Tap to Change Theme Mode')
        ],
      ),
    );
  }
}
