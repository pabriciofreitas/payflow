import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ppayflow/shared/themes/app_colors.dart';
import 'package:ppayflow/shared/themes/app_text_styles.dart';
import 'package:ppayflow/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;
  final bool enablePrimaryColor;
  final bool secondaryPrimaryColor;
  const SetLabelButtons({
    Key? key,
    required this.primaryLabel,
    required this.primaryOnPressed,
    required this.secondaryOnPressed,
    required this.secondaryLabel,
    this.enablePrimaryColor = false,
    this.secondaryPrimaryColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      height: 56,
      child: Row(
        children: [
          Expanded(
            child: LabelButton(
              label: primaryLabel,
              onPressed: primaryOnPressed,
              style: enablePrimaryColor ? AppTextStyles.buttonPrimary : null,
            ),
          ),
          Container(
            height: 56,
            width: 3,
            color: AppColors.stroke, // width: 20, caso queira mexer no t
          ),
          //VerticalDivider(),
          Expanded(
            child: LabelButton(
              label: secondaryLabel,
              onPressed: secondaryOnPressed,
              style: secondaryPrimaryColor ? AppTextStyles.buttonPrimary : null,
            ),
          ),
        ],
      ),
    );
  }
}
