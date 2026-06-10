import 'package:flutter/material.dart';

class CheckboxCustom extends StatefulWidget {
  final bool value;
  final Function(bool?) onChanged;
  final String? label;
  final Color? activeColor;
  final Color? checkColor;

  const CheckboxCustom({
    Key? key,
    required this.value,
    required this.onChanged,
    this.label,
    this.activeColor,
    this.checkColor,
  }) : super(key: key);

  @override
  State<CheckboxCustom> createState() => _CheckboxCustomState();
}

class _CheckboxCustomState extends State<CheckboxCustom> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      children: [
        Checkbox(
          value: _value,
          onChanged: (value) {
            setState(() => _value = value ?? false);
            widget.onChanged(value);
          },
          activeColor: widget.activeColor ?? colorScheme.primary,
          checkColor: widget.checkColor ?? colorScheme.onPrimary,
        ),
        if (widget.label != null) ...
          [
            const SizedBox(width: 8),
            Text(widget.label!),
          ],
      ],
    );
  }
}
