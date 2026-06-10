import 'package:flutter/material.dart';

class DatePickerWidget extends StatefulWidget {
  final DateTime initialDate;
  final Function(DateTime) onDateSelected;
  final DateTime? firstDate;
  final DateTime? lastDate;

  const DatePickerWidget({
    Key? key,
    required this.initialDate,
    required this.onDateSelected,
    this.firstDate,
    this.lastDate,
  }) : super(key: key);

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialDate;
  }

  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: widget.firstDate ?? DateTime(2000),
      lastDate: widget.lastDate ?? DateTime(2100),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() => _selectedDate = picked);
      widget.onDateSelected(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _selectDate,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('${_selectedDate.toLocal()}'.split(' ')[0]),
            const Icon(Icons.calendar_today),
          ],
        ),
      ),
    );
  }
}
