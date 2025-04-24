import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfoTile extends StatelessWidget {
  final String text1;
  final String text2;
  final String? routeName;

  const InfoTile({
    Key? key,
    required this.text1,
    required this.text2,
    this.routeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (routeName != null) {
          context.pushNamed(routeName!);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('$text1 selected (coming soon...)')),
          );
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 0,
                blurRadius: 1,
                offset: const Offset(0, 0),
              ),
            ],
            color: Colors.white,
          ),
          child: SizedBox(
            width: 353,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            text1,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            text2,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              color: Color(0xFF6B7280),
                              letterSpacing: 0.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xFF242424),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
