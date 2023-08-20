import 'package:flutter/material.dart';
import 'package:my_flutter_web/animations/_entrance_fader.dart';
import 'package:my_flutter_web/theme/app_theme.dart';
// import 'package:mysite/core/color/colors.dart';
// import 'package:mysite/core/configs/configs.dart';
// import 'package:mysite/core/providers/scroll_provider.dart';
// import 'package:provider/provider.dart';

class NavBarActionButton extends StatefulWidget {
  final String label;
  final int index;
  const NavBarActionButton({
    Key? key,
    required this.label,
    required this.index,
  }) : super(key: key);

  @override
  State<NavBarActionButton> createState() => _NavBarActionButtonState();
}

class _NavBarActionButtonState extends State<NavBarActionButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
   // final scrollProvider = Provider.of<ScrollProvider>(context);
    // theme
    var theme = Theme.of(context);
    const colorHover = const Color(0xFF24416B);
    return EntranceFader(
      offset: const Offset(0, -10),
      delay: const Duration(milliseconds: 1000),
      duration: const Duration(milliseconds: 250),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: isHover ? colorHover : null,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: InkWell(
          onHover: (value) {
            setState(() => isHover = value);
          },
          // onTap: () {
          //   scrollProvider.jumpTo(widget.index);
          // },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              widget.label,
              style: TextStyle(color: theme.textColorNavbar),
            ),
          ),
        ),
      ),
    );
  }
}
