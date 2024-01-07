import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  String label;
  IconData icon;
  Function(String text) onChange;

  DefaultTextField({
    super.key,
    required this.label,
    required this.icon,
    required this.onChange,
    });

  @override
  Widget build(BuildContext context) {
    return TextField(
              onChanged: (value) => onChange(value),
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