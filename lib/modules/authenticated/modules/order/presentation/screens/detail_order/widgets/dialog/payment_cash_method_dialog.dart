part of '../../detail_order_screen.dart';

class _PaymentCashMethodDialog extends StatefulWidget {
  final int totalPrice;
  const _PaymentCashMethodDialog({super.key, required this.totalPrice});

  @override
  State<_PaymentCashMethodDialog> createState() =>
      _PaymentCashMethodDialogState();
}

class _PaymentCashMethodDialogState extends State<_PaymentCashMethodDialog> {
  final nominalController = TextEditingController();
  int paidIndex = -1;

  @override
  void initState() {
    nominalController.text = widget.totalPrice.currencyFormatRp;
    super.initState();
  }

  @override
  void dispose() {
    nominalController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          12.verticalSpace,
          CustomTextField(
            controller: nominalController,
            label: 'Input Total Price',
            keyboardType: TextInputType.number,
          ),
          20.verticalSpace,
          Row(
            children: [
              Flexible(
                child: CustomButton.outlined(
                  label: 'Uang Pas',
                  borderRadius: 10.sp,
                  fontSize: 12.sp,
                  onPressed: () => setState(() {
                    paidIndex = 0;
                    nominalController.text = widget.totalPrice.currencyFormatRp;
                  }),
                  textColor: paidIndex == 0
                      ? ColorsConstants.white
                      : ColorsConstants.grey,
                  color: paidIndex == 0
                      ? ColorsConstants.primary
                      : Colors.transparent,
                ),
              ),
              10.horizontalSpace,
              Flexible(
                child: CustomButton.outlined(
                  label: 200000.currencyFormatRp,
                  borderRadius: 10.sp,
                  fontSize: 12.sp,
                  onPressed: () => setState(() {
                    paidIndex = 1;
                    nominalController.text = 200000.currencyFormatRp;
                  }),
                  textColor: paidIndex == 1
                      ? ColorsConstants.white
                      : ColorsConstants.grey,
                  color: paidIndex == 1
                      ? ColorsConstants.primary
                      : Colors.transparent,
                ),
              ),
            ],
          ),
          // 20.verticalSpace,
          // Row(
          //   children: [
          //     Flexible(
          //       child: CustomButton.outlined(
          //         label: 150000.currencyFormatRp,
          //         borderRadius: 10.sp,
          //         fontSize: 14.sp,
          //         onPressed: () => setState(() => paidIndex = 2),
          //         textColor: paidIndex == 2
          //             ? ColorsConstants.white
          //             : ColorsConstants.grey,
          //         color: paidIndex == 2
          //             ? ColorsConstants.primary
          //             : Colors.transparent,
          //       ),
          //     ),
          //     20.verticalSpace,
          //     Flexible(
          //       child: CustomButton.outlined(
          //         label: 300000.currencyFormatRp,
          //         borderRadius: 10.sp,
          //         fontSize: 14.sp,
          //         onPressed: () => setState(() => paidIndex = 3),
          //         textColor: paidIndex == 3
          //             ? ColorsConstants.white
          //             : ColorsConstants.grey,
          //         color: paidIndex == 3
          //             ? ColorsConstants.primary
          //             : Colors.transparent,
          //       ),
          //     ),
          //   ],
          // ),
          24.verticalSpace,
          BlocListener<OrderItemProductsBloc, OrderItemProductsState>(
            listener: (context, state) {
              state.maybeWhen(
                error: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                      backgroundColor: ColorsConstants.error,
                    ),
                  );
                },
                orElse: () {},
                success: (orders, totalQuantity, totalPrice, paymentNominal,
                    paymentMethod, cashierId, cashierName) {
                  final orderModel = OrderModel(
                      paymentMethod: paymentMethod,
                      nominalPayment: paymentNominal,
                      orders: orders,
                      totalQuantity: totalQuantity,
                      totalPrice: totalPrice,
                      cashierId: cashierId,
                      cashierName: cashierName,
                      isSync: false,
                      transactionTime: DateTime.now().toIso8601String());
                  ProductRemoteDTSImpl.instance.insertOrder(orderModel);
                  context
                      .pushReplacement(PaymentSuccessScreen(order: orderModel));
                },
              );
            },
            child: CustomButton.filled(
              disabled: paidIndex == -1,
              onPressed: () {
                //Parse Value To Int For Nominal Price
                int nominal = int.parse(nominalController.text
                    .replaceAll('Rp.', '')
                    .replaceAll('.', ''));
                context
                    .read<OrderItemProductsBloc>()
                    .add(OrderItemProductsEvent.addNominalPayment(nominal));
              },
              label: 'Bayar',
              fontSize: 16.0,
              borderRadius: 10.0,
            ),
          ),
        ],
      ),
    );
  }
}
