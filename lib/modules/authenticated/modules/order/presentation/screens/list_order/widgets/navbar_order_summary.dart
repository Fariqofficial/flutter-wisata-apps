part of '../list_order_screen.dart';

class NavbarOrderSummary extends StatelessWidget {
  final Function()? onTap;
  const NavbarOrderSummary({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.sp),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Order Summary'),
                BlocBuilder<CheckoutProductBloc, CheckoutProductState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      success: (products) {
                        final total = products.fold(
                            0,
                            (previousValue, element) =>
                                previousValue +
                                element.product.price! * element.quantity);
                        return Text(
                          total.currencyFormatRp,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        );
                      },
                      orElse: () => Text(
                        '0',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: CustomButton.filled(
              height: 48.h,
              width: 120.w,
              onPressed: onTap ?? () {},
              label: 'Process',
            ),
          ),
        ],
      ),
    );
  }
}
