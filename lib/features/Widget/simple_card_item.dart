import 'package:flutter/material.dart';

class SimpleCardItem extends StatelessWidget {
  final String title;
  final String? description;
  final VoidCallback onTap;
  final String? avatar;
  final String? sex;
  final String? status;
  final Widget? trailing;

  const SimpleCardItem({
    super.key,
    required this.title,
    this.description,
    required this.onTap,
    this.avatar,
    this.sex,
    this.status,
    this.trailing,
  });

  // Helper function to get the color based on the status
  Color getStatusColor(String status) {
    switch (status) {
      case 'In-progress':
      case 'Pending':
        return const Color(0xFFFFE3C7); // Orange shade
      case 'Booked':
      case 'Completed':
        return const Color(0xFFC8E5FC); // Blue shade
      case 'Planned':
        return const Color(0xFFC7FFC7); // Green shade
      case 'On-hold':
        return const Color(0xFFFFC7C7); // Red shade
      default:
        return Colors.white; // Default color for unknown status
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget? leadingWidget;

    // Handle avatar logic
    if (avatar != null && sex != null) {
      leadingWidget = Padding(
        padding: const EdgeInsets.only(left: 5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Container(
            color: Colors.blue.shade100.withAlpha(50),
            child: avatar!.isEmpty
                ? Image.asset(
                    sex == "female"
                        ? "assets/images/default/default_female_avatar.jpeg"
                        : "assets/images/default/default_male_avatar.jpg",
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  )
                : Image.network(
                    avatar!,
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Image.asset(
                        sex == "female"
                            ? "assets/images/default/default_female_avatar.jpeg"
                            : "assets/images/default/default_male_avatar.jpg",
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      );
                    },
                  ),
          ),
        ),
      );
    }

    // Build the widget for the subtitle section
    Widget? subtitleWidget = (description?.isNotEmpty ?? false || status != null)
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (description?.isNotEmpty ?? false)
                Text(
                  description!,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                  ),
                ),
              if (status != null)
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: getStatusColor(status!),
                    ),
                    child: Text(
                      status!,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF5A5A5A),
                      ),
                    ),
                  ),
                ),
            ],
          )
        : null; // If both description and status are null, no subtitle

    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: leadingWidget,
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        tileColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: Colors.black12),
        ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        subtitle: subtitleWidget, 
        trailing: trailing,
      ),
    );
  }
}
