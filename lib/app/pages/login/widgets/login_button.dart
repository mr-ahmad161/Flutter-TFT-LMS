import 'package:flutter/material.dart';

import '../../student/student_screen.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.3,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: width * 0.007,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  const Color.fromRGBO(85, 45, 116, 1)),
              padding: MaterialStateProperty.all(const EdgeInsets.all(17)),
              textStyle: MaterialStateProperty.all(const TextStyle(
                fontSize: 14,
                color: Colors.white,
              ))),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Student()));
          },
          child: const Text('Login')),
    );
  }
}
