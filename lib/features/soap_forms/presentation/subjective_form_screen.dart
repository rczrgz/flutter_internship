import 'package:flutter/material.dart';

class SubjectiveFormScreen extends StatefulWidget {
  const SubjectiveFormScreen({super.key});

  @override
  State<SubjectiveFormScreen> createState() => _SubjectiveFormScreenState();
}

class _SubjectiveFormScreenState extends State<SubjectiveFormScreen> {
  String? _selectType;
  final List<String> _type = ["Type 1", "Type 2", "Type 3"];

  // FocusNode for TextField to handle focus state and color change
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Subjective'),
          centerTitle: true,
          toolbarHeight: 100,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // DropdownButtonFormField
                DropdownButtonFormField<String>(
                  value: _selectType,
                  decoration: InputDecoration(
                    hintText: "Select",
                    filled: true,
                    fillColor: Colors.white,
                    hintStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      color: Color(0xFF9CA3AF),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.black12),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.black12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 16,
                    ),
                  ),
                  icon: const Icon(Icons.arrow_drop_down),
                  dropdownColor: Colors.white,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                  items:
                      _type.map((reason) {
                        return DropdownMenuItem<String>(
                          value: reason,
                          child: Text(reason),
                        );
                      }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectType = newValue;
                    });
                  },
                ),
                const SizedBox(height: 20),

                // TextField with FocusNode to change border color on focus
                TextField(
                  focusNode: _focusNode, // Attach focus node
                  maxLines: 3,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Enter your description",
                    hintStyle: const TextStyle(color: Color(0xFF9CA3AF)),
                    // Conditional border color based on focus
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.black12),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.black12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    // Handle text change
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
