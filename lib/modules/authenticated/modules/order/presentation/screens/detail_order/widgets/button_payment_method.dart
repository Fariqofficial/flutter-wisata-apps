part of '../detail_order_screen.dart';

class _ButtonPayment extends StatelessWidget {
  final String iconPath;
  final String label;
  final bool isActive;
  final VoidCallback onPressed;
  const _ButtonPayment({
    required this.iconPath,
    required this.label,
    required this.isActive,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(20.sp),
        decoration: BoxDecoration(
          color: isActive ? ColorsConstants.primary : ColorsConstants.white,
          border: Border.all(color: ColorsConstants.stroke),
          borderRadius: BorderRadius.circular(10.sp),
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              iconPath,
              colorFilter: isActive
                  ? const ColorFilter.mode(
                      ColorsConstants.white, BlendMode.srcIn)
                  : null,
            ),
            10.verticalSpace,
            Text(
              label,
              style: TextStyle(
                color:
                    isActive ? ColorsConstants.white : ColorsConstants.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
