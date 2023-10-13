import 'package:flutter/material.dart';

class ChoiceButton extends StatefulWidget {
  final String choices;
  const ChoiceButton({
    super.key,
    required this.choices,
  });

  @override
  State<ChoiceButton> createState() => _ChoiceButtonState();
}

class _ChoiceButtonState extends State<ChoiceButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          //backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            //side: const BorderSide(color: Colors.black),
          ),
        ),
        child: Text(
          widget.choices,
          // style: const TextStyle(color: Colors.black),
        ),
        onPressed: () {},
      ),
    );
  }
}
