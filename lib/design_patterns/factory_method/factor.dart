import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class CustomButton {
  Widget build(VoidCallback onPressed, String title);
  factory CustomButton(TargetPlatform targetPlatform) {
    switch (targetPlatform) {
      case TargetPlatform.android:
        return AndriodButton();
      case TargetPlatform.iOS:
        return IosButton();
      default:
        return AndriodButton();
    }
  }
}

class AndriodButton implements CustomButton {
  @override
  Widget build(VoidCallback onPressed, String title) {
    return ElevatedButton(
      onPressed: onPressed,
      style: const ButtonStyle(),
      child: Text(title),
    );
  }
}

class IosButton implements CustomButton {
  @override
  Widget build(VoidCallback onPressed, String title) {
    return CupertinoButton(
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
