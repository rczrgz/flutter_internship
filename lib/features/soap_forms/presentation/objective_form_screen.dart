import 'package:flutter/material.dart';

class ObjectiveFormScreen extends StatefulWidget {
  const ObjectiveFormScreen({super.key});

  @override
  State<ObjectiveFormScreen> createState() => _ObjectiveFormScreenState();
}

class _ObjectiveFormScreenState extends State<ObjectiveFormScreen> {
  String? _selectObjective = "Vital Sign", _selectCarePlan, _selectStatus;

  final List<String> _obj = ["Vital Sign", "General Survey", "HEENT", "Other"];
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

  Widget _buildBottomSection() {
    switch (_selectObjective) {
      case "Vital Sign":
        return _buildVitalSignSection();
      case "General Survey":
        return _buildGeneralSurveySection();
      case "HEENT":
        return _buildHeentSection();
      case "Other":
        return _buildOtherSection();
      default:
        return SizedBox();
    }
  }

  Widget _buildVitalSignSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        const Text("Vital Sign", style: TextStyle(fontWeight: FontWeight.w700)),
        const SizedBox(height: 10),

        // Care Plan Dropdown
        DropdownButtonFormField<String>(
          value: _selectCarePlan,
          decoration: _inputDecoration("Care Plan"),
          items:
              _care
                  .map(
                    (care) => DropdownMenuItem<String>(
                      value: care,
                      child: Text(care),
                    ),
                  )
                  .toList(),
          onChanged: (value) => setState(() => _selectCarePlan = value),
        ),
        const SizedBox(height: 20),

        // Status Dropdown
        DropdownButtonFormField<String>(
          value: _selectStatus,
          decoration: _inputDecoration("Status"),
          items:
              _status
                  .map(
                    (status) => DropdownMenuItem<String>(
                      value: status,
                      child: Text(status),
                    ),
                  )
                  .toList(),
          onChanged: (value) => setState(() => _selectStatus = value),
        ),
        const SizedBox(height: 20),

        // Goal TextField
        TextField(
          focusNode: _titleFocusNode,
          maxLines: 1,
          decoration: InputDecoration(
            hintText: "Goal",
            hintStyle: const TextStyle(color: Colors.grey),
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
              borderSide: const BorderSide(color: Colors.blue, width: 2),
            ),
          ),
          onChanged: (value) {},
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildGeneralSurveySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        TextField(
          focusNode: _descriptionFocusNode,
          maxLines: 6,
          decoration: InputDecoration(
            hintText: "Type here...",
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
              borderSide: const BorderSide(color: Colors.blue, width: 2),
            ),
          ),
          onChanged: (value) {},
        ),
      ],
    );
  }

  Widget _buildHeentSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        TextField(
          focusNode: _descriptionFocusNode,
          maxLines: 6,
          decoration: InputDecoration(
            hintText: "Type here...",
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
              borderSide: const BorderSide(color: Colors.blue, width: 2),
            ),
          ),
          onChanged: (value) {},
        ),
      ],
    );
  }

  Widget _buildOtherSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        // Title TextField
        TextField(
          focusNode: _titleFocusNode,
          maxLines: 1,
          decoration: InputDecoration(
            hintText: "Goal",
            hintStyle: const TextStyle(color: Colors.grey),
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
              borderSide: const BorderSide(color: Colors.blue, width: 2),
            ),
          ),
          onChanged: (value) {},
        ),

        const SizedBox(height: 20),
        TextField(
          focusNode: _descriptionFocusNode,
          maxLines: 6,
          decoration: InputDecoration(
            hintText: "Type here...",
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
              borderSide: const BorderSide(color: Colors.blue, width: 2),
            ),
          ),
          onChanged: (value) {},
        ),
      ],
    );
  }

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      filled: true,
      fillColor: Colors.white,
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
        borderSide: const BorderSide(color: Colors.blue, width: 2),
      ),
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Objective'),
          centerTitle: true,
          toolbarHeight: 100,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Objective Dropdown
                DropdownButtonFormField<String>(
                  value: _selectObjective,
                  decoration: _inputDecoration("Select Objective"),
                  items:
                      _obj
                          .map(
                            (obj) => DropdownMenuItem<String>(
                              value: obj,
                              child: Text(obj),
                            ),
                          )
                          .toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectObjective = value;
                    });
                  },
                ),

                // Conditional Content
                _buildBottomSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
