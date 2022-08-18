import 'package:flutter/material.dart';
import 'package:rent_my_boat/data/colors.dart';

class ModuleImages extends StatelessWidget {
  const ModuleImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  child: IconButton(
                      icon: Image.asset('assets/icons/speedboat.png'),
                      onPressed: (() {})),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: photoContainer),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Container(
                  height: 100,
                  child: IconButton(
                      icon: Image.asset('assets/icons/ship.png'),
                      onPressed: (() {})),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: photoContainer),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  child: IconButton(
                      icon: Image.asset('assets/icons/ferry.png'),
                      onPressed: (() {})),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: photoContainer),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Container(
                  height: 100,
                  width: 1.4,
                  child: IconButton(
                      icon: Image.asset('assets/icons/motor_boat.png'),
                      onPressed: (() {})),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: photoContainer),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
