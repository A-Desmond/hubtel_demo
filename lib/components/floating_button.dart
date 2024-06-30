import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green[400],
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {},
      label: const Text(
        'SEND NEW',
        style: TextStyle(color: Colors.white),
      ),
      icon: CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: Colors.green[400],
        ),
      ),
    );
  }
}
