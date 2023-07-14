import 'package:day2/biodata_page.dart';
import 'package:day2/widgets/auth_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/login_image.png'),
            Column(
              children: const [
                Text(
                  'Selamat Datang',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Selamat datang di Aplikasi Widya Edu\n'
                  'Aplikasi Latihan dan Konsultasi Soal',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                AuthButton(
                  btnPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BiodataPage(),
                    ),
                  ),
                  iconPath: 'assets/google-logo.png',
                  text: 'Masuk dengan Google',
                  color: Colors.white,
                  textColor: Colors.black,
                ),
                const SizedBox(
                  height: 16,
                ),
                AuthButton(
                  btnPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  ),
                  iconPath: 'assets/apple-logo.png',
                  text: 'Masuk dengan Apple',
                  color: Colors.black,
                  textColor: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
