import 'package:flutter/material.dart';
import 'package:learning/design_patterns/factory_method/factor.dart';

class FactoryMain extends StatelessWidget {
  const FactoryMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          CustomButton(TargetPlatform.android).build(
            () => debugPrint("Hello"),
            "Android Button",
          ),
          CustomButton(TargetPlatform.android).build(
            () {
              debugPrint("Clicked IOS Button");
            },
            "IOS Button",
          ),
        ],
      ),
    );
  }
}
