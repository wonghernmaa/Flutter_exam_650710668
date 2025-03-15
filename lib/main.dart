import 'package:flutter/material.dart';
import 'package:final_exam_650710668/widget/profile_card.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileCard(
              name: 'Krissada Khongkaew',
              position: 'Professor',
              email: 'thepon4444@egmail.com',
              phoneNumber: '098-746-3800',
              imageUrl:
                  'https://scontent.fbkk13-2.fna.fbcdn.net/v/t39.30808-6/481768540_122144629076502717_5660007276847633558_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=dKAhcV_w1RIQ7kNvgFnIzgp&_nc_oc=AdhqFXRFRWAtp1vsQ_RMzaYfHROtliqWj39D8BMnr-qRFEsg36FaWJd7FNrRIoIW1YQ&_nc_zt=23&_nc_ht=scontent.fbkk13-2.fna&_nc_gid=H4zL3_gF1b5ILvxSsrIpEQ&oh=00_AYEzIwUU2cNlR6N6O1xBFPNOsU93T_9f15ijt5NKvK8d7w&oe=67DAA35E',
            ),
            const SizedBox(height: 20),
            _buildStatBar('HP', 0.90, Colors.red, Colors.redAccent),
            const SizedBox(height: 10),
            _buildStatBar('Mana', 0.5, Colors.blue, Colors.lightBlueAccent),
          ],
        ),
      ),
    );
  }

  Widget _buildStatBar(
      String label, double value, Color startColor, Color endColor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$label: ${(value * 100).toInt()}%',
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Stack(
          children: [
            // แถบสีพื้นหลัง
            Container(
              height: 20,
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            // แถบ Progress ที่เป็น Gradient
            FractionallySizedBox(
              widthFactor: value, // ปรับขนาดตามค่าที่กำหนด (0.75 = 75%)
              child: Container(
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [startColor, endColor]),
                  boxShadow: [
                    BoxShadow(
                      color: startColor.withOpacity(0.5),
                      blurRadius: 4,
                      offset: const Offset(2, 2),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
