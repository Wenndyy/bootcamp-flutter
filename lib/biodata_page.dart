import 'package:day2/widgets/auth_bio.dart';
import 'package:flutter/material.dart';

class BiodataPage extends StatelessWidget {
  const BiodataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Biodata',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/bio.jpg'),
              radius: 60,
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'Wendy Noer Isnaeni',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              'dywenbusiness@gmail.com',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: Container(
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      AuthBio(
                        judul: 'Phone : ',
                        fillTitle: '081228491979',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      AuthBio(
                        judul: 'Address : ',
                        fillTitle: 'Banyumas, Indonesia',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      AuthBio(
                        judul: 'Date Of Birth : ',
                        fillTitle: '14 Juli 2003',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      AuthBio(
                        judul: 'GitHub : ',
                        fillTitle: 'Wenndyy',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
