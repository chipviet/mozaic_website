part of '../main.dart';

class _NavbarDesktop extends StatefulWidget {
  const _NavbarDesktop({Key? key}) : super(key: key);

  @override
  State<_NavbarDesktop> createState() => _NavbarDesktopState();
}

class _NavbarDesktopState extends State<_NavbarDesktop> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // theme
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width / 12, vertical: 10),
      // color: Colors.transparent,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.headerBg),
          fit: BoxFit.fill,
        ),
        color: Color(0xFF0D1E3D),
      ),
      child: Row(
        children: [
          const NavBarLogo(),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...NavBarUtils.names.asMap().entries.map(
                    (e) => NavBarActionButton(
                      label: e.value,
                      index: e.key,
                    ),
                  ),
            ],
          )),
          InkWell(
            onTap: () => {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              decoration: ShapeDecoration(
                color: const Color(0xFF24416B),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.50,
                    color: Colors.white.withOpacity(0.4000000059604645),
                  ),
                  borderRadius: BorderRadius.circular(120),
                ),
              ),
              child: const Text(
                'Work with us',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class _NavBarTablet extends StatelessWidget {
//   const _NavBarTablet({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final drawerProvider = Provider.of<DrawerProvider>(context);
//     var theme = Theme.of(context);
//     return Container(
//       color: theme.navBarColor,
//       padding: EdgeInsets.symmetric(
//           horizontal: Responsive.isTablet(context) ? 10.w : 10, vertical: 10),
//       child: Row(
//         children: [
//           IconButton(
//             highlightColor: Colors.white54,
//             onPressed: () {
//               drawerProvider.key.currentState!.openDrawer();
//             },
//             icon: const Icon(Icons.menu),
//           ),
//           Space.xm!,
//           const NavBarLogo(),
//           // Space.x1!,
//         ],
//       ),
//     );
//   }
// }
