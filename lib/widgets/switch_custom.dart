import 'package:flutter/material.dart';

class SwitchCustom extends StatefulWidget {
  final bool value;
  final Function(bool) onChanged;
  final Color? activeColor;
  final Color? inactiveColor;
  final String? label;

  const SwitchCustom({
    Key? key,
    required this.value,
    required this.onChanged,
    this.activeColor,
    this.inactiveColor,
    this.label,
  }) : super(key: key);

  @override
  State<SwitchCustom> createState() => _SwitchCustomState();
}

class _SwitchCustomState extends State<SwitchCustom> {
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
        if (widget.label != null) ...
          [
            Text(widget.label!),
            const SizedBox(width: 16),
          ],
        Switch(
          value: _value,
          onChanged: (value) {
            setState(() => _value = value);
            widget.onChanged(value);
          },
          activeColor: widget.activeColor ?? colorScheme.primary,
          inactiveThumbColor: widget.inactiveColor ?? colorScheme.outline,
        ),
      ],
    );
  }
}
