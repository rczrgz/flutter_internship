import 'package:flutter/material.dart';
import 'package:flutter_internship/features/Widget/info_tile.dart';
import 'package:go_router/go_router.dart';

class ServiceRequestScreen extends StatelessWidget {
  const ServiceRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pushNamed('home'), // works with go_router
        ),
        title: const Text('Assign to a Facility'),
        centerTitle: true,
        toolbarHeight: 100,
      ),
        //select service request
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InfoTile(
                text1: 'Assign to a facility',
                text2: 'Assigned to a facility within the organization or its connections',
                routeName: 'assign-to-facility',
              ),
              InfoTile(
                text1: 'Assign to a clinic',
                text2: 'Assigned to a clinic within the organization or its connections',
                routeName: 'assign-to-clinic',
              ),
            ],
          ),
        )
    );
  }
}