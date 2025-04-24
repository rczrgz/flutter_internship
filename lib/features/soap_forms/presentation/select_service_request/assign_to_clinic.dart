import 'package:flutter/material.dart';

class AssignToClinic extends StatefulWidget {
  const AssignToClinic({super.key});

  @override
  State<AssignToClinic> createState() => _AssignToClinicState();
}

class _AssignToClinicState extends State<AssignToClinic> {
  int _expandedIndex = -1;

  String? _selectFacility;
  String? _selectCarePlan;
  String? _selectCategory;
  String? _selectRoutines;

  final List<String> _facilities = ['Facility 1', 'Facility 2', 'Facility 3'];
  final List<String> _carePlans = ['Care Plan 1', 'Care Plan 2', 'Care Plan 3'];
  final List<String> _categories = ['Category 1', 'Category 2', 'Category 3'];
  final List<String> _routines = ['Routine 1', 'Routine 2', 'Routine 3'];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Assign to a Facility'),
          centerTitle: true,
          toolbarHeight: 100,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 20.0,
            ),
            child: Column(
              children: [
                _buildAccordion(
                  context: context,
                  title: "Select Facility",
                  options: _facilities,
                  selectedValue: _selectFacility,
                  isExpanded: _expandedIndex == 0,
                  onTap: () {
                    setState(() {
                      _expandedIndex = _expandedIndex == 0 ? -1 : 0;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      _selectFacility = value;
                    });
                  },
                ),
                _buildAccordion(
                  context: context,
                  title: "Select Care Plan",
                  options: _carePlans,
                  selectedValue: _selectCarePlan,
                  isExpanded: _expandedIndex == 1,
                  onTap: () {
                    setState(() {
                      _expandedIndex = _expandedIndex == 1 ? -1 : 1;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      _selectCarePlan = value;
                    });
                  },
                ),
                _buildAccordion(
                  context: context,
                  title: "Category",
                  options: _categories,
                  selectedValue: _selectCategory,
                  isExpanded: _expandedIndex == 2,
                  onTap: () {
                    setState(() {
                      _expandedIndex = _expandedIndex == 2 ? -1 : 2;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      _selectCategory = value;
                    });
                  },
                ),
                _buildAccordion(
                  context: context,
                  title: "Routine",
                  options: _routines,
                  selectedValue: _selectRoutines,
                  isExpanded: _expandedIndex == 3,
                  onTap: () {
                    setState(() {
                      _expandedIndex = _expandedIndex == 3 ? -1 : 3;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      _selectRoutines = value;
                    });
                  },
                ),

                const SizedBox(height: 20),
                TextField(
                  maxLines: 6,
                  decoration: InputDecoration(
                    hintText: "Enter your description",
                    hintStyle: const TextStyle(color: Color(0xFF9CA3AF)),
                    filled: true,
                    fillColor: Colors.white,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildAccordion({
  required BuildContext context,
  required String title,
  required List<String> options,
  required String? selectedValue,
  required ValueChanged<String?> onChanged,
  required bool isExpanded,
  required VoidCallback onTap,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20.0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(
              selectedValue ?? title,
              style: TextStyle(
                fontSize: 16,
                color:
                    selectedValue == null
                        ? const Color(0xFF9CA3AF)
                        : Colors.black,
              ),
            ),
            trailing: Icon(
              isExpanded ? Icons.expand_less : Icons.expand_more,
              color: Colors.grey,
            ),
            onTap: onTap,
          ),
          if (isExpanded)
            ...options.map((option) {
              return ListTile(
                title: Text(option),
                onTap: () {
                  onChanged(option);
                  onTap(); // Collapse after selecting
                },
              );
            }).toList(),
        ],
      ),
    ),
  );
}






// import 'package:flutter/material.dart';



// class AssignToClinic extends StatefulWidget {
//   const AssignToClinic({super.key});

//   @override
//   State<AssignToClinic> createState() => _AssignToClinicState();
// }

// class _AssignToClinicState extends State<AssignToClinic> {
//   String? _selectFacility; // Holds the selected facility value
//   String? _selectCarePlan; // Holds the selected care plan value
//   String? _selectCategory; // Holds the selected category value
//   String? _selectRoutines;

//   final List<String> _facilities = ['Facility 1', 'Facility 2', 'Facility 3'];
//   final List<String> _carePlans = ['Care Plan 1', 'Care Plan 2', 'Care Plan 3'];
//   final List<String> _categories = ['Category 1', 'Category 2', 'Category 3'];
//   final List<String> _routines = ['Routine 1', 'Routine 2', 'Routine 3'];

//   @override
  // Widget build(BuildContext context) {
  //   return GestureDetector(
  //     onTap: () => FocusScope.of(context).unfocus(),
  //     child: Scaffold(
  //       appBar: AppBar(
  //         title: const Text('Assign to a Facility'),
  //         centerTitle: true,
  //         toolbarHeight: 100,
  //       ),
  //       body: SingleChildScrollView(
  //         child: Padding(
  //           padding: const EdgeInsets.symmetric(horizontal: 20.0),
  //           child: Column(
  //             children: [
  //               _buildDropDown(_facilities, "Select Facility", (
  //                 String? newValue,
  //               ) {
  //                 setState(() {
  //                   _selectFacility =
  //                       newValue; // Update selected facility value
  //                 });
  //               }),
  //               _buildDropDown(_carePlans, "Select Care Plan", (
  //                 String? newValue,
  //               ) {
  //                 setState(() {
  //                   _selectCarePlan =
  //                       newValue; // Update selected care plan value
  //                 });
  //               }),
  //               _buildDropDown(_categories, "Category", (String? newValue) {
  //                 setState(() {
  //                   _selectCategory =
  //                       newValue; // Update selected category value
  //                 });
  //               }),
  //               _buildDropDown(_routines, "Routine", (String? newValue) {
  //                 setState(() {
  //                   _selectRoutines =
  //                       newValue; // Update selected routine
  //                 });
  //               }),
  //               TextField(
  //                 maxLines: 6,
  //                 decoration: InputDecoration(
  //                   hintText: "Enter your description",
  //                   hintStyle: const TextStyle(color: Color(0xFF9CA3AF)),
  //                   filled: true,
  //                   fillColor: Colors.white,
  //                   border: OutlineInputBorder(
  //                     borderRadius: BorderRadius.circular(12),
  //                     borderSide: const BorderSide(color: Colors.black12),
  //                   ),
  //                   enabledBorder: OutlineInputBorder(
  //                     borderRadius: BorderRadius.circular(12),
  //                     borderSide: const BorderSide(color: Colors.black12),
  //                   ),
  //                   focusedBorder: OutlineInputBorder(
  //                     borderRadius: BorderRadius.circular(12),
  //                     borderSide: const BorderSide(
  //                       color: Colors.blue,
  //                       width: 2,
  //                     ),
  //                   ),
  //                 ),
  //                 onChanged: (value) {},
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //       // bottomNavigationBar: BottomBar(
  //       //           onSave: () {
  //       //             // Your save logic
  //       //             print('Saved!');
  //       //           },
  //       //           onDelete: () {
  //       //             // Your delete logic
  //       //             print('Deleted!');
  //       //           },
  //       //         ),
  //     ),
  //   );
  // }

//   Widget _buildDropDown(
//     List<String> items,
//     String hintText,
//     Function(String?) onChanged,
//   ) {
//     // Dynamically select the appropriate value based on the hintText
//     String? selectedValue;
//     if (hintText == "Select Facility") {
//       selectedValue = _selectFacility;
//     } else if (hintText == "Select Care Plan") {
//       selectedValue = _selectCarePlan;
//     } else if (hintText == "Category") {
//       selectedValue = _selectCategory;
//     } else if (hintText == "Routine") {
//       selectedValue = _selectRoutines;
//     }

//     String? _selectedValue = selectedValue;
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 20.0),
//       child: DropdownButtonFormField<String>(
//         value: _selectedValue,
//         decoration: InputDecoration(
//           hintText: hintText,
//           filled: true,
//           fillColor: Colors.white,
//           hintStyle: const TextStyle(
//             fontSize: 18,
//             fontWeight: FontWeight.w400,
//             color: Color(0xFF9CA3AF),
//           ),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(12),
//             borderSide: const BorderSide(color: Colors.black12),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(12),
//             borderSide: const BorderSide(color: Colors.black12),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(12),
//             borderSide: const BorderSide(color: Colors.blue, width: 2),
//           ),
//           isDense: true,
//           contentPadding: const EdgeInsets.symmetric(
//             horizontal: 12,
//             vertical: 16,
//           ),
//         ),
//         icon: const Icon(Icons.arrow_drop_down),
//         dropdownColor: Colors.white,
//         style: const TextStyle(fontSize: 16, color: Colors.black),
//         items:
//             items.map((option) {
//               return DropdownMenuItem<String>(
//                 value: option,
//                 child: Text(option),
//               );
//             }).toList(),
//         onChanged: (String? newValue) {
//           onChanged(newValue); // Call the passed onChanged function
//         },
//       ),
//     );
//   }
// }