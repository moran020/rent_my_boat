import 'package:flutter/material.dart';
import 'package:rent_my_boat/data/helpers_owner_form/singles/image_container.dart';

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
                  child: ImageContainerButtonCreate(
                      icon: Image.asset('assets/icons/speedboat.png'),
                      onPressed: () {})),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                  child: ImageContainerButtonCreate(
                icon: Image.asset('assets/icons/ship.png'),
                onPressed: () {},
              ))
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                  child: ImageContainerButtonCreate(
                icon: Image.asset('assets/icons/ferry.png'),
                onPressed: () {},
              )),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: ImageContainerButtonCreate(
                  icon: Image.asset('assets/icons/motor_boat.png'),
                  onPressed: () {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
