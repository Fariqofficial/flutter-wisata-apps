import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_wisata_apps/insfrastructure/assets/assets.gen.dart';
import 'package:flutter_wisata_apps/insfrastructure/components/components.dart';
import 'package:flutter_wisata_apps/insfrastructure/constants/colors.dart';
import 'package:flutter_wisata_apps/insfrastructure/extensions/extensions.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/data/datasource/product/product_remote_dts_impl.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/domain/models/order/order_item.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/domain/models/order/order_model.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/presentation/screens/detail_order/bloc/order/order_item_products_bloc.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/presentation/screens/list_order/bloc/checkout_product/checkout_product_bloc.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/presentation/screens/payment_receipt/payment_success_screen.dart';

part 'widgets/button_payment_method.dart';
part 'widgets/order_item_card.dart';
part 'widgets/navbar_payment_method.dart';

//Payment Method Dialog
part 'widgets/dialog/payment_cash_method_dialog.dart';

class DetailOrderScreen extends StatefulWidget {
  const DetailOrderScreen({super.key});

  @override
  State<DetailOrderScreen> createState() => _DetailOrderScreenState();
}

class _DetailOrderScreenState extends State<DetailOrderScreen> {
  int totalPrice = 0;
  List<OrderItem> orderItems = [];
  @override
  Widget build(BuildContext context) {
    int paymentButtonIndex = 0;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail Pesanan'),
          leading: GestureDetector(
            onTap: () => context.pop(),
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Assets.images.back.image()),
          ),
        ),
        body: BlocBuilder<CheckoutProductBloc, CheckoutProductState>(
          builder: (context, state) {
            final products = state.maybeWhen(
              success: (checkout) => checkout,
              orElse: () => [],
            );
            return ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              itemCount: products.length,
              separatorBuilder: (context, index) => 20.verticalSpace,
              itemBuilder: (context, index) => _OrderItemCard(
                item: products[index],
              ),
            );
          },
        ),
        bottomNavigationBar: _NavbarPaymentMethod(
          content: StatefulBuilder(
            builder: (context, setState) => Row(
              children: [
                Expanded(
                  child: _ButtonPayment(
                    iconPath: Assets.icons.payment.qris.path,
                    label: 'QRIS',
                    isActive: paymentButtonIndex == 0,
                    onPressed: () => setState(() => paymentButtonIndex = 0),
                  ),
                ),
                20.horizontalSpace,
                Expanded(
                  child: _ButtonPayment(
                    iconPath: Assets.icons.payment.tunai.path,
                    label: 'Tunai',
                    isActive: paymentButtonIndex == 1,
                    onPressed: () => setState(() => paymentButtonIndex = 1),
                  ),
                ),
                20.horizontalSpace,
                Expanded(
                  child: _ButtonPayment(
                    iconPath: Assets.icons.payment.transfer.path,
                    label: 'Transfer',
                    isActive: paymentButtonIndex == 2,
                    onPressed: () => setState(() => paymentButtonIndex = 2),
                  ),
                ),
              ],
            ),
          ),
          footer: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Order Summary'),
                  BlocBuilder<CheckoutProductBloc, CheckoutProductState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        success: (checkout) {
                          orderItems = checkout;
                          final total = checkout.fold<int>(
                            0,
                            (previousValue, element) =>
                                previousValue +
                                element.product.price! * element.quantity,
                          );
                          totalPrice = total;
                          return Text(
                            total.currencyFormatRp,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          );
                        },
                        orElse: () => const Text(
                          '0',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: CustomButton.filled(
                onPressed: () {
                  if (paymentButtonIndex == 0) {
                    // showDialog(
                    //   context: context,
                    //   builder: (context) => PaymentQrisDialog(
                    //     price: totalPrice,
                    //   ),
                    // );
                  } else if (paymentButtonIndex == 1) {
                    context.read<OrderItemProductsBloc>().add(
                        OrderItemProductsEvent.addPaymentMethod(
                            'Cash', orderItems));
                    showDialog(
                      context: context,
                      builder: (context) => _PaymentCashMethodDialog(
                        totalPrice: totalPrice,
                      ),
                    );
                  }
                },
                label: 'Process',
              ),
            ),
          ],
        ));
  }
}
