import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../../core/utils/app_colors.dart';

class MaleOrFemale extends StatelessWidget {
  const MaleOrFemale({super.key});

  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      minWidth: MediaQuery.sizeOf(context).width,
      initialLabelIndex: 0,
      cornerRadius: 30.0,
      activeFgColor: Colors.white,
      inactiveBgColor: AppColors.secondary,
      inactiveFgColor: Colors.white,
      totalSwitches: 2,
      labels: ['Male', 'Female'],
      icons: [FontAwesomeIcons.mars, FontAwesomeIcons.venus],
      activeBgColors: [
        [Colors.blue],
        [Colors.pink],
      ],
      onToggle: (index) {
        print('switched to: $index');
      },
    );
  }
}
