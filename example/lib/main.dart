import 'package:flutter/material.dart';
import 'package:daad_form/daad_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Form Fields Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const DemoPage(),
    );
  }
}

class DemoPage extends StatelessWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Form Fields Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DaaDForm(
              label: 'Name',
              hintText: 'Enter your name',
              prefixIcon: Icons.person,
              onChanged: (value) {
                print('Name: $value');
              },
            ),
            const SizedBox(height: 16),
            DaaDForm(
              label: 'Email',
              hintText: 'Enter your email',
              prefixIcon: Icons.email,
              onChanged: (value) {
                print('Email: $value');
              },
            ),
          ],
        ),
      ),
    );
  }
}
