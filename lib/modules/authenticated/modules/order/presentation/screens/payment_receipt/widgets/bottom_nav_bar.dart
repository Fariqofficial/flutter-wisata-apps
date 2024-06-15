part of '../payment_success_screen.dart';

class _BottomNavBar extends StatelessWidget {
  final Function()? onTap;
  const _BottomNavBar({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(36, 0, 36, 20),
      child: CustomButton.filled(
          onPressed: onTap ?? () {},
          label: 'Cetak Transaksi',
          borderRadius: 10.sp),
    );
  }
}
