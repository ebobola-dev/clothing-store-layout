import 'package:clothing_store/assets/resources/resources.dart';
import 'package:clothing_store/screens/checkout/checkout_screen.dart';
import 'package:clothing_store/screens/home/widgets/nav_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 48.0,
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(44.0),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: Offset(0, -33.0),
            blurRadius: 70.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarItem(
            onTap: () {},
            isActive: true,
            child: SvgPicture.asset(
              SvgIcons.home,
              colorFilter: ColorFilter.mode(Color(0xFFFDFDFD), BlendMode.srcIn),
            ),
          ),
          NavBarItem(
            onTap: () {
              final route = PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    ScaleTransition(
                  scale: animation,
                  child: CheckoutScreen(),
                ),
              );
              Navigator.of(context).push(route);
            },
            child: Stack(
              children: [
                SvgPicture.asset(
                  SvgIcons.shoppingBag,
                  colorFilter: ColorFilter.mode(
                    Color(0xFFFDFDFD),
                    BlendMode.srcIn,
                  ),
                ),
                Positioned(
                  top: 4,
                  right: 2,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Color(0xFFF13658),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          NavBarItem(
            onTap: () {},
            child: SvgPicture.asset(
              SvgIcons.heart,
              colorFilter: ColorFilter.mode(Color(0xFFFDFDFD), BlendMode.srcIn),
            ),
          ),
          NavBarItem(
            onTap: () {},
            child: SvgPicture.asset(
              SvgIcons.profile,
              colorFilter: ColorFilter.mode(Color(0xFFFDFDFD), BlendMode.srcIn),
            ),
          ),
        ],
      ),
    );
  }
}
