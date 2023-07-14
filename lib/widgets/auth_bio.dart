import 'package:flutter/material.dart';

class AuthBio extends StatelessWidget {
  final String judul;
  final String fillTitle;

  const AuthBio({
    super.key,
    required this.judul,
    required this.fillTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black45),
        borderRadius: BorderRadius.circular(12),
      ),
      width: 350,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Text(
              judul,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              fillTitle,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
