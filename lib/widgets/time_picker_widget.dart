import 'package:flutter/material.dart';

class TimePickerWidget extends StatefulWidget {
  final TimeOfDay initialTime;
  final Function(TimeOfDay) onTimeSelected;

  const TimePickerWidget({
    Key? key,
    required this.initialTime,
    required this.onTimeSelected,
  }) : super(key: key);

  @override
  State<TimePickerWidget> createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  late TimeOfDay _selectedTime;

  @override
  void initState() {
    super.initState();
    _selectedTime = widget.initialTime;
  }

  Future<void> _selectTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null && picked != _selectedTime) {
      setState(() => _selectedTime = picked);
      widget.onTimeSelected(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _selectTime,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(_selectedTime.format(context)),
            const Icon(Icons.schedule),
          ],
        ),
      ),
    );
  }
}
