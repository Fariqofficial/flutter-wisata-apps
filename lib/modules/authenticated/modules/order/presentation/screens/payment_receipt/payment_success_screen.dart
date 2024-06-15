import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wisata_apps/insfrastructure/assets/assets.gen.dart';
import 'package:flutter_wisata_apps/insfrastructure/components/components.dart';
import 'package:flutter_wisata_apps/insfrastructure/constants/colors.dart';
import 'package:flutter_wisata_apps/insfrastructure/extensions/extensions.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/home/presentation/screens/home_screen.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/domain/models/order/order_model.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/presentation/screens/detail_order/detail_order_screen.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/presentation/screens/list_order/bloc/checkout_product/checkout_product_bloc.dart';
import 'package:qr_flutter/qr_flutter.dart';

part 'widgets/bottom_nav_bar.dart';

class PaymentSuccessScreen extends StatefulWidget {
  final OrderModel order;
  const PaymentSuccessScreen({super.key, required this.order});

  @override
  State<PaymentSuccessScreen> createState() => _PaymentSuccessScreenState();
}

class _PaymentSuccessScreenState extends State<PaymentSuccessScreen> {
  final xtraSmallSpace = 8.verticalSpace;
  final smallSpace = 16.verticalSpace;
  final mediumSpace = 20.verticalSpace;
  final largeSpace = 40.verticalSpace;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsConstants.primary,
        title: const Text(
          'Payment Reciept',
          style: TextStyle(color: ColorsConstants.white),
        ),
        leading: GestureDetector(
          onTap: () {
            context.pushReplacement(const DetailOrderScreen());
          },
          child: Padding(
            padding: EdgeInsets.all(8.sp),
            child: Assets.images.back.image(color: ColorsConstants.white),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: context.deviceHeight / 2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(12.sp),
                ),
                color: ColorsConstants.primary),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Assets.images.receiptCard.provider(),
                alignment: Alignment.topCenter,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(60.sp),
              child: Column(
                children: [
                  Text(
                    'PAYMENT RECIEPT',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.5,
                    ),
                  ),
                  smallSpace,
                  QrImageView(
                    data: widget.order.id.toString() +
                        widget.order.transactionTime,
                    version: QrVersions.auto,
                  ),
                  smallSpace,
                  const Text('Scan this QR code to verify tickets'),
                  mediumSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Tagihan'),
                      Text(widget.order.totalPrice.currencyFormatRp),
                    ],
                  ),
                  largeSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Metode Bayar'),
                      Text(widget.order.paymentMethod),
                    ],
                  ),
                  smallSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Waktu'),
                      Text(DateTime.now().toFormattedDate()),
                    ],
                  ),
                  8.verticalSpace,
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Status'),
                      Text('Lunas'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: _BottomNavBar(
        onTap: () async {
          context
              .read<CheckoutProductBloc>()
              .add(const CheckoutProductEvent.started());
          context.pushReplacement(const HomeScreen());
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
