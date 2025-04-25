import 'package:flutter/material.dart';
import 'package:flutter_internship/features/Widget/simple_card_item.dart';
import 'package:go_router/go_router.dart';

class ReusableButton extends StatelessWidget {
  const ReusableButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pushNamed('home'), // works with go_router
        ),
        title: const Text('Buttons'),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SimpleCardItem(
              title: 'John Doe',
              description: 'Patient Details',
              avatar: '', // Or a valid image URL
              sex: 'male', // Or 'female'
              onTap: () {
                print('Card tapped!');
              },
            ),
            SimpleCardItem(
              title: 'John Doe',
              description: 'Patient Details',
              avatar: '', // Or a valid image URL
              sex: 'female', // Or 'female'
              onTap: () {
                print('Card tapped!');
              },
            ),
            SimpleCardItem(
              title: 'John Doe',
              description: 'Patient Details',
              onTap: () {
                print('Card tapped!');
              },
              trailing: Icon(Icons.chevron_right),
            ),
            SimpleCardItem(
              title: 'John Doe',
              description: 'Patient InfoNurse Details dfkhsfkhdsjfhjdshfjdshfjhdsjfhdsjhfjdshfjhsdjfhdsjfhjdshfjsdhjfhdsjfhdsjfhjdshfjdshfjhdsjfhdjshfjdshfjhdsjfhdsj',
              avatar: '',
              sex: 'male',
              trailing: Icon(Icons.chevron_right),
              onTap: () {},
            ),
            SimpleCardItem(
              title: 'Jane Smith',
              description: 'Nurse Details dfkhsfkhdsjfhjdshfjdshfjhdsjfhdsjhfjdshfjhsdjfhdsjfhjdshfjsdhjfhdsjfhdsjfhjdshfjdshfjhdsjfhdjshfjdshfjhdsjfhdsj',
              avatar: '',
              sex: 'female',
              trailing: null, // or just omit this field
              onTap: () {},
            ),
            SimpleCardItem(
              title: 'Jane Smith',
              avatar: '', // Empty avatar
              sex: 'female',
              status: 'On-hold', // Will show a status badge
              trailing: null, // Optional, can be omitted or set to any widget
              onTap: () {
                // Handle the onTap action here
              },
            ),
            SimpleCardItem(
              title: 'Jane Smith',
              avatar: '', // Empty avatar
              sex: 'female',
              status: 'In-progress', // Will show a status badge
              trailing: null, // Optional, can be omitted or set to any widget
              onTap: () {
                // Handle the onTap action here
              },
            ),
            SimpleCardItem(
              title: 'Jane Smith',
              avatar: '', // Empty avatar
              sex: 'female',
              status: 'Booked', // Will show a status badge
              trailing: null, // Optional, can be omitted or set to any widget
              onTap: () {
                // Handle the onTap action here
              },
            ),
          ],
        ),
      ),
    );
  }
}
