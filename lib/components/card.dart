import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({required this.title, required this.image, required this.onClick});

  final String title;
  final image;
  VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 2)),
              ]),
          child: Column(
            children: [
              Image.asset(image, fit: BoxFit.cover),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text(
                title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const Text(
                'Professional Certificate',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.016,
              ),
              GestureDetector(
                onTap: onClick,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0Xffc73236),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                      // changes position of shadow
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'Enroll Now',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
