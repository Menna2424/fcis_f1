// lib/opportunity_form_page.dart
import 'package:flutter/material.dart';

import '../../../../core/utils/colors_manager.dart';

class OpportunityFormPage extends StatefulWidget {
  @override
  _OpportunityFormPageState createState() => _OpportunityFormPageState();
}

class _OpportunityFormPageState extends State<OpportunityFormPage> {
  final _formKey = GlobalKey<FormState>();

  // Controllers for all fields
  final TextEditingController _companyNameController = TextEditingController();
  final TextEditingController _websiteController = TextEditingController();
  final TextEditingController _contactEmailController = TextEditingController();
  final TextEditingController _jobTitleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _skillsController = TextEditingController();
  final TextEditingController _qualificationsController =
      TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _salaryController = TextEditingController();
  String _jobType = 'Full-Time';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.backGroundColor,
      appBar: AppBar(
        backgroundColor: ColorsManager.backGroundColor,
        title: const Text(
          'Job Opportunity Submission Form',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Company Name",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
                _buildTextField(_companyNameController, 'Enter Company Name'),
                const Text(
                  "Company Website",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
                _buildTextField(_websiteController, 'https://www.company.com'),
                const Text(
                  "Contact Email",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
                _buildTextField(_contactEmailController, 'example@company.com'),
                const Text(
                  "Job Title / Position",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
                _buildTextField(_jobTitleController, ' Enter job title'),
                const Text(
                  "Job Description",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
                _buildTextField(_descriptionController, 'Description',
                    maxLines: 3),
                const Text(
                  "Required Skills",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
                _buildTextField(_skillsController, 'Enter Skills'),
                const Text(
                  "Preferred Qualification",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
                _buildTextField(_qualificationsController,
                    'Enter Preferred Qualifications'),
                const Text(
                  "Job Location",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
                _buildTextField(_locationController, 'Enter Job Location'),
                const Text(
                  "Salary / Compensation",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
                _buildTextField(
                    _salaryController, 'Enter Salary or Compensation'),
                SizedBox(height: 10),
                _buildJobTypeSelector(),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(240, 40),
                      backgroundColor:  Colors.black

                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pop(context, {
                          'companyName': _companyNameController.text,
                          'website': _websiteController.text,
                          'contactEmail': _contactEmailController.text,
                          'jobTitle': _jobTitleController.text,
                          'description': _descriptionController.text,
                          'skills': _skillsController.text,
                          'qualifications': _qualificationsController.text,
                          'location': _locationController.text,
                          'salary': _salaryController.text,
                          'jobType': _jobType,
                        });
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Submit',style: TextStyle(color: ColorsManager.backGroundColor),),
                      ],
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

  Widget _buildTextField(TextEditingController controller, String label,
      {int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: label,
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 2),borderRadius: BorderRadius.circular(12),),
          hintStyle: const TextStyle(color: Colors.grey),
          enabledBorder: const OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(12)),borderSide: BorderSide(color: Colors.grey )),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
        validator: (value) => value!.isEmpty ? 'Please enter $label' : null,
        maxLines: maxLines,
      ),
    );
  }

  Widget _buildJobTypeSelector() {
    return Row(
      children: [
        Text('Job Type:',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
        SizedBox(width: 20),
        DropdownButton<String>(
          dropdownColor: ColorsManager.backGroundColor,
          borderRadius: BorderRadius.circular(10),
          value: _jobType,
          items: ['Full-Time', 'Part-Time', 'Internship', 'Remote']
              .map((type) => DropdownMenuItem(value: type, child: Text(type)))
              .toList(),
          onChanged: (value) {
            setState(() {
              _jobType = value!;
            });
          },
        ),
      ],
    );
  }
}
