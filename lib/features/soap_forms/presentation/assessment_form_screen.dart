import 'package:flutter/material.dart';

class AssessmentFormScreen extends StatefulWidget {
  const AssessmentFormScreen({super.key});

  @override
  State<AssessmentFormScreen> createState() => _AssessmentFormScreenState();
}

class _AssessmentFormScreenState extends State<AssessmentFormScreen> {
  String? _selectSeverity, _selectStatus;
  final List<String> _type = ["Severity", "Severity 2", "Severity 3"];
  final List<String> _status = ["Status1", "Status 2", "Status 3"];

  final FocusNode _titleFocusNode = FocusNode();
  final FocusNode _descriptionFocusNode = FocusNode();

  @override
  void dispose() {
    _titleFocusNode.dispose();
    _descriptionFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // Tap outside to unfocus any input
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Assessment'),
          centerTitle: true,
          toolbarHeight: 100,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title TextField
                TextField(
                  focusNode: _titleFocusNode,
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: "Title",
                    hintStyle: const TextStyle(color: Color(0xFF9CA3AF)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color:
                            _titleFocusNode.hasFocus
                                ? Colors.blue
                                : const Color(0xFF9CA3AF),
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                  ),
                  onChanged: (value) {},
                ),

                const SizedBox(height: 20),

                TextField(
                  focusNode: _descriptionFocusNode,
                  maxLines: 6,
                  decoration: InputDecoration(
                    hintText: "Enter your description",
                    hintStyle: const TextStyle(color: Color(0xFF9CA3AF)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color:
                            _descriptionFocusNode.hasFocus
                                ? Colors.blue
                                : const Color(0xFF9CA3AF),
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                  ),
                  onChanged: (value) {},
                ),
                SizedBox(height: 20),

                //severity
                DropdownButtonFormField<String>(
                  value: _selectSeverity,
                  decoration: InputDecoration(
                    hintText: "Severity",
                    hintStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Color(0xFF9CA3AF)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Color(0xFF9CA3AF)),
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
                    color: Color(0xFF1F2937),
                    fontWeight: FontWeight.w500,
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
                      _selectSeverity = newValue;
                    });
                  },
                ),
                SizedBox(height: 20),
                // Status
                DropdownButtonFormField<String>(
                  value: _selectStatus,
                  decoration: InputDecoration(
                    hintText: "Status",
                    hintStyle: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      color: Color(0xFF1F2937),
                      fontWeight: FontWeight.w500,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Color(0xFF9CA3AF)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Color(0xFF9CA3AF)),
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
                    fontWeight: FontWeight.w600,
                  ),
                  items:
                      _status.map((reason) {
                        return DropdownMenuItem<String>(
                          value: reason,
                          child: Text(reason),
                        );
                      }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectStatus = newValue;
                    });
                  },
                ),
                SizedBox(height: 20),
                //SearchBar
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search ICD-11',
                    hintStyle: TextStyle(color: Color(0xFF9CA3AF)),
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                    ),
                  ),
                  onChanged: (value) {
                    // Filter your list or call an API here
                    print('Search value: $value');
                  },
                ),
                SizedBox(height: 10),
                Text(
                  "You can explore more on ICD-11 here.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
