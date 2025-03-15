import 'package:flutter/material.dart';
import 'package:final_exam_650710668/answer1.dart'; // นำเข้าไฟล์ ProfileCard ถ้าแยกไฟล์ไว้

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('โปรไฟล์ผู้ใช้งาน')),
        body: Center(
          child: ProfileCard(
            name: 'ชื่อผู้ใช้: john Doe',
            position: 'อีเมล: johndoe@example.com',
            email: 'การตั้งค่า',
            phoneNumber: 'เปลี่ยนรหัสผ่าน',
            private: 'ความเป็นส่วนตัว',
            imageUrl:
                'https://www.kasandbox.org/programming-images/avatars/leaf-blue.png',
          ),
        ),
      ),
    );
  }
}
