import 'package:flutter/material.dart';
import 'package:rent_my_boat/data/colors.dart';

class CheckBoxCreate extends StatelessWidget {
  final bool value;
  final void Function(bool?) onChanged;
  final String equipmentName;

  const CheckBoxCreate({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.equipmentName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
        onTap: () {
          onChanged(!value);
        },
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  //SizedBox for get checkbox minimum padding around
                  height: 19.0,
                  width: 19.0,
                  child: Checkbox(
                    value: value,
                    onChanged: onChanged,
                    side: BorderSide(color: activeButton),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    activeColor: activeButton,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  equipmentName,
                  style: const TextStyle(fontSize: 17, letterSpacing: 0.24),
                ),
              ],
            ),
            const SizedBox(height: 9),
          ],
        ),
      ),
    );
  }
}
