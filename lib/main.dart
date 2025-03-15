import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: RegistrationForm(),
  ));
}

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();

  String fullName = '';
  String email = '';
  String gender = 'Male';
  String province = 'Bangkok';
  bool acceptTerms = false;

  final List<String> provinces = [
    'Bangkok',
    'Chiang Mai',
    'Phuket',
    'Khon Kaen',
    'Chonburi'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("คำนวณค่าจัดส่ง")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              SizedBox(height: 20),

              Text("น้ำหนักสินค้า (กก.):",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'น้ำหนักสินค้า',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณาใส่น้ำหนักสินค้า';
                  }
                  return null;
                },
                onChanged: (value) {
                  print(value);
                },
              ), // Full Name

              SizedBox(height: 20),

              Text("เลือกระยะทาง:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              DropdownButtonFormField(
                value: province,
                items: provinces.map((String item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    province = value.toString();
                  });
                },
              ),
              Text("บริการเสริม:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              CheckboxListTile(
                title: Text("แพ็กกิ้งพิเศษ (+20 บาท)"),
                value: acceptTerms,
                onChanged: (value) {
                  setState(() {
                    acceptTerms = value!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),

              CheckboxListTile(
                title: Text("ประกันพัสดุ (+50 บาท)"),
                value: acceptTerms,
                onChanged: (value) {
                  setState(() {
                    acceptTerms = value!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),

              SizedBox(height: 20),

              // Gender Selection
              Text("Gender",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Radio(
                    value: "Male",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    },
                  ),
                  Text("ปกติ"),
                  SizedBox(width: 20),
                  Radio(
                    value: "Female",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    },
                  ),
                  Text("ด่วน"),
                  Radio(
                    value: "Female",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    },
                  ),
                  Text("ด่วนพิเศษ"),
                ],
              ),

              SizedBox(height: 20),

              SizedBox(height: 20),

              // Submit Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() && acceptTerms) {
                    _formKey.currentState!.save();
                    print(
                        "Name: $fullName, Email: $email, Gender: $gender, Province: $province");
                  }
                },
                child: Text("คำนวณราคา"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
