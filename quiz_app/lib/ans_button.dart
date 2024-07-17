import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnsButton extends StatelessWidget {
  const AnsButton(this.text, this.onTap, {super.key});
  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.lora(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
