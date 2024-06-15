import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_wisata_apps/insfrastructure/constants/colors.dart';

class BottomNavBar extends StatelessWidget {
  final List<Widget> child;
  const BottomNavBar({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30.sp),
        ),
        color: ColorsConstants.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: 30.sp,
            blurStyle: BlurStyle.outer,
            spreadRadius: 0,
            color: ColorsConstants.black.withOpacity(0.8),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: child,
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String iconPath;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const NavBarItem({
    super.key,
    required this.iconPath,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: const BorderRadius.all(Radius.circular(16.0)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 25.0,
            height: 25.0,
            child: SvgPicture.asset(
              iconPath,
              colorFilter: ColorFilter.mode(
                isActive
                    ? ColorsConstants.primary
                    : ColorsConstants.navInActive,
                BlendMode.srcIn,
              ),
            ),
          ),
          4.verticalSpace,
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: isActive
                  ? ColorsConstants.primary
                  : ColorsConstants.navInActive,
            ),
          ),
        ],
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final Widget child;
  const ActionButton({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.sp),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: ColorsConstants.primary,
      ),
      child: child,
    );
  }
}
