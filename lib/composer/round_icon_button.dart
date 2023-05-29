import 'package:flutter/material.dart';

class RoundIconBotton extends StatelessWidget {
  final IconData? icon;
  final VoidCallback? onPress;

  RoundIconBotton({required this.icon,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints : BoxConstraints.tightFor(
        width:56.0 ,
        height: 56.0,
      ),
      elevation: 6,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      onPressed: onPress,
    );
  }
}
