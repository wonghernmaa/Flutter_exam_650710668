import 'package:flutter/material.dart';
import 'package:final_exam_650710668/widget/profile_card.dart'; // นำเข้าไฟล์ ProfileCard ถ้าแยกไฟล์ไว้

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Card',
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple.shade300, Colors.deepPurple.shade800],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: ProfileCard(
            name: 'Krissada Khongkaew',
            position: 'Professor',
            email: 'thepon4444@egmail.com',
            phoneNumber: '098-746-3800',
            imageUrl:
                'https://scontent.fbkk13-2.fna.fbcdn.net/v/t39.30808-6/481768540_122144629076502717_5660007276847633558_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=dKAhcV_w1RIQ7kNvgFnIzgp&_nc_oc=AdhqFXRFRWAtp1vsQ_RMzaYfHROtliqWj39D8BMnr-qRFEsg36FaWJd7FNrRIoIW1YQ&_nc_zt=23&_nc_ht=scontent.fbkk13-2.fna&_nc_gid=H4zL3_gF1b5ILvxSsrIpEQ&oh=00_AYEzIwUU2cNlR6N6O1xBFPNOsU93T_9f15ijt5NKvK8d7w&oe=67DAA35E',
          ),
        ),
      ),
    );
  }
}
