import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String position;
  final String email;
  final String phoneNumber;
  final String private;
  final String imageUrl;

  const ProfileCard({
    super.key,
    required this.name,
    required this.position,
    required this.email,
    required this.phoneNumber,
    required this.private,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(imageUrl),
            ),
            const SizedBox(height: 12),
            Text(
              name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              position,
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.settings, size: 20, color: Colors.blue),
                const SizedBox(width: 6),
                const Text('การตั้งค่า',
                    style: TextStyle(color: Color.fromARGB(255, 12, 12, 12))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.lock_outline,
                    size: 20, color: Color.fromARGB(255, 88, 158, 255)),
                const SizedBox(width: 6),
                const Text('เปลี่ยนรหัสผ่าน',
                    style: TextStyle(color: Color.fromARGB(255, 14, 14, 14))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.question_mark,
                    size: 20, color: Color.fromARGB(255, 88, 158, 255)),
                const SizedBox(width: 6),
                const Text('ความเป็นส่วนตัว',
                    style: TextStyle(color: Color.fromARGB(255, 44, 44, 44))),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                print('Button Pressed');
              },
              child: const Text('แก้ไขโปรไฟล์'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Button Pressed');
              },
              child: const Text('ออกจากระบบ'),
            )
          ],
        ),
      ),
    );
  }
}
