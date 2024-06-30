import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';

class CustomSegmentedButton extends StatelessWidget {
  const CustomSegmentedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomSlidingSegmentedControl<int>(
          decoration: BoxDecoration(
            color: const Color(0xFFE5E5E5),
            borderRadius: BorderRadius.circular(10),
          ),
          thumbDecoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          height: 50,
          initialValue: 0,
          isStretch: true,
          children: const {
            0: Text(
              'History',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            1: Text('Transaction Summary')
          },
          onValueChanged: (value) {}),
    );
  }
}
