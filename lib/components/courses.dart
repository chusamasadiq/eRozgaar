import 'package:flutter/material.dart';

class Courses extends StatelessWidget {
  final image;
  String title;

  Courses({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
