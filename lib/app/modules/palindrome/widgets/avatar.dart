import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 116,
      height: 116,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/images/ic_photo.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
