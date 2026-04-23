import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FormPractice(),
    );
  }
}

class FormPractice extends StatefulWidget {
  const FormPractice({super.key});

  @override
  State<FormPractice> createState() => _FormPracticeState();
}

class _FormPracticeState extends State<FormPractice> {
  final _formKey = GlobalKey<FormState>();

  // Controllers
  final nameController = TextEditingController();
  final rollController = TextEditingController();
  final regController = TextEditingController();
  final phoneController = TextEditingController();
  final aboutController = TextEditingController();

  String? bloodGroup;
  String? gender;

  Map<String, String> submittedData = {};

  void handleSubmit() {
    setState(() {
      submittedData = {
        "Name": nameController.text,
        "Roll": rollController.text,
        "Registration": regController.text,
        "Blood Group": bloodGroup ?? "",
        "Gender": gender ?? "",
        "Phone": phoneController.text,
        "About": aboutController.text,
      };
    });

    // Reset form
    _formKey.currentState!.reset();
    nameController.clear();
    rollController.clear();
    regController.clear();
    phoneController.clear();
    aboutController.clear();
    bloodGroup = null;
    gender = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Practice 01")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            /// FORM
            Form(
              key: _formKey,
              child: Column(
                children: [
                  /// Name
                  TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(labelText: "Name"),
                  ),

                  const SizedBox(height: 10),

                  /// Row: Roll + Registration
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: rollController,
                          decoration: const InputDecoration(labelText: "Roll"),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextFormField(
                          controller: regController,
                          decoration: const InputDecoration(
                            labelText: "Registration",
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  /// Blood Group
                  DropdownButtonFormField<String>(
                    value: bloodGroup,
                    decoration: const InputDecoration(labelText: "Blood Group"),
                    items: ["A+", "B+", "O+", "AB+", "A-", "B-"].map((e) {
                      return DropdownMenuItem(value: e, child: Text(e));
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        bloodGroup = val;
                      });
                    },
                  ),

                  const SizedBox(height: 10),

                  /// Gender
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Gender"),
                      Row(
                        children: [
                          Radio<String>(
                            value: "Male",
                            groupValue: gender,
                            onChanged: (val) {
                              setState(() {
                                gender = val;
                              });
                            },
                          ),
                          const Text("Male"),
                          Radio<String>(
                            value: "Female",
                            groupValue: gender,
                            onChanged: (val) {
                              setState(() {
                                gender = val;
                              });
                            },
                          ),
                          const Text("Female"),
                        ],
                      ),
                    ],
                  ),

                  /// Phone
                  TextFormField(
                    controller: phoneController,
                    decoration: const InputDecoration(
                      labelText: "Phone Number",
                    ),
                  ),

                  const SizedBox(height: 10),

                  /// About
                  TextFormField(
                    controller: aboutController,
                    maxLines: 3,
                    decoration: const InputDecoration(labelText: "About Me"),
                  ),

                  const SizedBox(height: 20),

                  /// Submit Button
                  ElevatedButton(
                    onPressed: handleSubmit,
                    child: const Text("Submit"),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            /// OUTPUT
            if (submittedData.isNotEmpty)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: submittedData.entries.map((e) {
                    return Text("${e.key}: ${e.value}");
                  }).toList(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
