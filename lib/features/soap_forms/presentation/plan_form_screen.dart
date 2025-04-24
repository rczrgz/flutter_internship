import 'package:flutter/material.dart';

class PlanFormScreen extends StatefulWidget {
  const PlanFormScreen({super.key});

  @override
  State<PlanFormScreen> createState() => _PlanFormScreenState();
}

class _PlanFormScreenState extends State<PlanFormScreen> {
  String? _selectAssessment, _selectCarePlan, _selectStatus;
  final List<String> _ass = ["Assessment 1", "Assessment 2", "Assessment 3"];
  final List<String> _care = ["Care Plan 1", "Care Plan 2", "Care Plan 3"];
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
          title: const Text('Plan'),
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
                // assessment
                DropdownButtonFormField<String>(
                  value: _selectAssessment,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Assessment",
                    hintStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      color: Colors.black,
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
                    color: Color(0xFF1F2937),
                    fontWeight: FontWeight.w500,
                  ),
                  items:
                      _ass.map((care) {
                        return DropdownMenuItem<String>(
                          value: care,
                          child: Text(care),
                        );
                      }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectAssessment = newValue;
                    });
                  },
                ),
                SizedBox(height: 20),
                //care plan
                DropdownButtonFormField<String>(
                  value: _selectCarePlan,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Care Plan",
                    hintStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      color: Colors.black,
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
                    color: Color(0xFF1F2937),
                    fontWeight: FontWeight.w500,
                  ),
                  items:
                      _care.map((care) {
                        return DropdownMenuItem<String>(
                          value: care,
                          child: Text(care),
                        );
                      }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectCarePlan = newValue;
                    });
                  },
                ),
                SizedBox(height: 10),
                Text(
                  "   Select related care plan",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 10),
                // Title TextField
                TextField(
                  focusNode: _titleFocusNode,
                  maxLines: 1,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Goal",
                    hintStyle: const TextStyle(color: Colors.grey),
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
                  onChanged: (value) {},
                ),

                const SizedBox(height: 20),

                TextField(
                  focusNode: _descriptionFocusNode,
                  maxLines: 6,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Enter your description",
                    hintStyle: const TextStyle(color: Color(0xFF9CA3AF)),
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
                  onChanged: (value) {},
                ),

                SizedBox(height: 20),
                // Status
                DropdownButtonFormField<String>(
                  value: _selectStatus,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Status",
                    hintStyle: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      color: Color(0xFF1F2937),
                      fontWeight: FontWeight.w500,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
