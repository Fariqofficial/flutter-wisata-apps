part of '../detail_order_screen.dart';

class _OrderItemCard extends StatelessWidget {
  final OrderItem item;
  const _OrderItemCard({required this.item});

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
          Text(
            item.product.name ?? '',
            style: TextStyle(fontSize: 15.sp),
          ),
          Text(
            item.product.category?.name ?? '',
            style: TextStyle(fontSize: 11.sp),
          ),
          8.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${item.product.price!.currencyFormatRp} x ${item.quantity}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                (item.product.price! * item.quantity).currencyFormatRp,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
