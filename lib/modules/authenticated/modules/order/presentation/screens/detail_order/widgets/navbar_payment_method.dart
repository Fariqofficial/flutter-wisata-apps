part of '../detail_order_screen.dart';

class _NavbarPaymentMethod extends StatelessWidget {
  final Widget content;
  final List<Widget> footer;
  const _NavbarPaymentMethod({
    required this.content,
    required this.footer,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          content,
          24.verticalSpace,
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.sp),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 30.0,
                  spreadRadius: 0,
                  offset: const Offset(0, -2),
                  color: ColorsConstants.black.withOpacity(8 / 100),
                  blurStyle: BlurStyle.outer,
                ),
              ],
            ),
            child: Row(
              children: footer,
            ),
          ),
        ],
      ),
    );
  }
}
