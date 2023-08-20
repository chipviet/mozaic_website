import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // theme
    var theme = Theme.of(context);
    //
    var textSty = TextStyle(
      color:  Colors.white,
      fontWeight: FontWeight.w700,
      fontSize:  32,
    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Mozaic", style: textSty),
      ],
    );
  }
}
