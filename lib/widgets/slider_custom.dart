import 'package:flutter/material.dart';

class SliderCustom extends StatefulWidget {
  final double value;
  final Function(double) onChanged;
  final double min;
  final double max;
  final int? divisions;
  final String? label;
  final Color? activeColor;
  final Color? inactiveColor;

  const SliderCustom({
    Key? key,
    required this.value,
    required this.onChanged,
    this.min = 0,
    this.max = 100,
    this.divisions,
    this.label,
    this.activeColor,
    this.inactiveColor,
  }) : super(key: key);

  @override
  State<SliderCustom> createState() => _SliderCustomState();
}

class _SliderCustomState extends State<SliderCustom> {
  late double _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) ...
          [
            Text(widget.label!),
            const SizedBox(height: 8),
          ],
        Slider(
          value: _value,
          onChanged: (value) {
            setState(() => _value = value);
            widget.onChanged(value);
          },
          min: widget.min,
          max: widget.max,
          divisions: widget.divisions,
          activeColor: widget.activeColor ?? colorScheme.primary,
          inactiveColor: widget.inactiveColor ?? colorScheme.outlineVariant,
        ),
      ],
    );
  }
}
