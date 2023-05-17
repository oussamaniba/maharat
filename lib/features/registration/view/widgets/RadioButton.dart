import 'package:flutter/material.dart';

class RadioButton<T> extends StatefulWidget {
  final T value;
  final T groupValue;
  final void Function(T)? onChanged;
  const RadioButton({
    Key? key,
    required this.value,
    required this.groupValue,
    this.onChanged,
  }) : super(key: key);

  @override
  createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  @override
  Widget build(BuildContext context) {
    bool selected = (widget.value == widget.groupValue);

    return Container(
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(.2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: selected ? Colors.blue[300]! : Colors.grey[300]!,
          width: 4,
        ),
      ),
      child: Icon(
        Icons.circle,
        size: 30,
        color: selected ? Colors.blue[300] : Colors.grey[300],
      ),
    );
  }
}
