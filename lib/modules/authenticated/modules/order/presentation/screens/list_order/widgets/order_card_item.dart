part of '../list_order_screen.dart';

class OrderCardItem extends StatefulWidget {
  final Product item;
  const OrderCardItem({super.key, required this.item});

  @override
  State<OrderCardItem> createState() => _OrderCardItemState();
}

class _OrderCardItemState extends State<OrderCardItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.sp),
      decoration: BoxDecoration(
        border: Border.all(color: ColorsConstants.stroke),
        borderRadius: BorderRadius.circular(16.sp),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  widget.item.name ?? '',
                  style: TextStyle(fontSize: 15.sp),
                ),
              ),
              InkWell(
                onTap: () {
                  context
                      .read<CheckoutProductBloc>()
                      .add(CheckoutProductEvent.removeCheckout(widget.item));
                },
                child: Assets.icons.reduceQuantity.svg(),
              ),
              BlocBuilder<CheckoutProductBloc, CheckoutProductState>(
                  builder: (context, state) {
                final quantity = state.maybeWhen(
                  success: (checkout) => checkout
                      .firstWhere(
                        (element) => element.product.id == widget.item.id,
                        orElse: () =>
                            OrderItem(product: widget.item, quantity: 0),
                      )
                      .quantity,
                  orElse: () => 0,
                );
                return Text(
                  quantity.toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                );
              }),
              InkWell(
                onTap: () {
                  context.read<CheckoutProductBloc>().add(
                        CheckoutProductEvent.addCheckout(widget.item),
                      );
                },
                child: Assets.icons.addQuantity.svg(),
              ),
            ],
          ),
          Text(
            widget.item.category?.name ?? '',
            style: TextStyle(fontSize: 11.sp),
          ),
          8.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.item.price!.currencyFormatRp,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              BlocBuilder<CheckoutProductBloc, CheckoutProductState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    success: (checkout) {
                      final quantity = checkout
                          .firstWhere(
                            (element) => element.product.id == widget.item.id,
                            orElse: () =>
                                OrderItem(product: widget.item, quantity: 0),
                          )
                          .quantity;
                      return Text(
                        (widget.item.price! * quantity).currencyFormatRp,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      );
                    },
                    orElse: () => const Text(
                      '0',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
