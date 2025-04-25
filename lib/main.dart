import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_internship/features/soap_forms/presentation/bloc/subjective_bloc.dart';
import 'package:go_router/go_router.dart';

import 'core/router.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => SubjectiveBloc()),
        // Add other BLoCs here if needed
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(debugShowCheckedModeBanner: false, title: 'Flutter Demo', routerConfig: router);
  }
}

class CategorizedButtonsScreen extends StatelessWidget {
  const CategorizedButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mobile Internship')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildCategory(context, 'SOAP Forms', [
              {'title': 'Subjective Form', 'routeName': 'soap-subjective'},
              {'title': 'Objective Form', 'routeName': 'soap-objective'},
              {'title': 'Assessment Form', 'routeName': 'soap-assessment'},
              {'title': 'Plan Form', 'routeName': 'soap-plan'},
            ]),
            const SizedBox(height: 24),
            _buildCategory(context, 'Service', [
              {'title': 'Select Service Request', 'routeName': 'service-request'},
              {'title': 'Reusable Button', 'routeName': 'reusable-button'},
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildCategory(
    BuildContext context,
    String categoryTitle,
    List<Map<String, String>> buttons,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Category Title
        Text(
          categoryTitle,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 12),

        // Buttons for this category
        ...buttons.map(
          (button) => _buildButton(
            context,
            button['title']!,
            routeName: button['routeName'],
          ),
        ),
      ],
    );
  }

  Widget _buildButton(BuildContext context, String title, {String? routeName}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            if (routeName != null) {
              print("tapped");
              context.pushNamed(routeName);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('$title selected (soon...)')),
              );
            }
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 12),
            alignment: Alignment.centerLeft,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(title, style: const TextStyle(fontSize: 16)),
          ),
        ),
      ),
    );
  }
}
