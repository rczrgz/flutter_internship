import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final VoidCallback onDelete;

  const BottomBar({super.key, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.1,
      minChildSize: 0.1,
      maxChildSize: 0.4,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            boxShadow: [
              // BoxShadow(
              //   color: Colors.black12, // Color of the shadow
              //   blurRadius: 10, // The blur intensity
              //   offset: Offset(0, -1), // This creates the shadow effect at the top
              // ),
            ],
          ),

          child: SingleChildScrollView(
            controller: scrollController,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 20,
                right: 20,
                left: 20,
                top: 20,
              ),
              child: Column(
                children: [
                  Container(
                    width: 50,
                    height: 5,
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  // Draggable Indicator
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: onDelete,
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors
                                  .red, // This sets the background color to red
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          'Delete',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ), // Text color for the button
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
