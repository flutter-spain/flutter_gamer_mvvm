import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  String label;
  IconData icon;

  DefaultTextField({
    super.key,
    required this.label,
    required this.icon,
    });

  @override
  Widget build(BuildContext context) {
    return TextField(
              decoration: InputDecoration(
                label : Text(label),
                labelStyle: const TextStyle(color: Colors.white),
                suffixIcon: Icon(
                  icon,
                color: Colors.white,
                ),
              ),
              style: const TextStyle(color: Colors.white),
            );
  }
}