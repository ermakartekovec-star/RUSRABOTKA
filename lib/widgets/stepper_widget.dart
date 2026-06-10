import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  final int steps;
  final int currentStep;
  final Function(int) onStepTapped;
  final List<String> stepTitles;
  final List<String> stepSubtitles;

  const StepperWidget({
    Key? key,
    required this.steps,
    required this.currentStep,
    required this.onStepTapped,
    required this.stepTitles,
    required this.stepSubtitles,
  }) : super(key: key);

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Stepper(
      currentStep: widget.currentStep,
      onStepTapped: widget.onStepTapped,
      steps: List.generate(
        widget.steps,
        (index) => Step(
          title: Text(widget.stepTitles[index]),
          subtitle: Text(widget.stepSubtitles[index]),
          content: Container(),
          isActive: index == widget.currentStep,
        ),
      ),
    );
  }
}
