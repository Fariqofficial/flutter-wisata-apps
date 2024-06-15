part of '../history_order_screen.dart';

class HistoryItem extends StatelessWidget {
  final OrderModel items;
  const HistoryItem({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        border: Border.all(color: ColorsConstants.stroke),
        borderRadius: BorderRadius.circular(16.sp),
      ),
      child: Row(
        children: [
          Assets.icons.plus.svg(),
          12.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                items.id.toString(),
                style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w600),
              ),
              5.verticalSpace,
              Text(
                DateFormat('dd MMMM yyyy').format(
                  DateTime(
                    items.transactionTime.substring(0, 4).toInt,
                    items.transactionTime.substring(5, 7).toInt,
                    items.transactionTime.substring(8, 10).toInt,
                  ),
                ),
                style: const TextStyle(
                    fontWeight: FontWeight.w500, color: ColorsConstants.grey),
              ),
            ],
          ),
          const Spacer(),
          Text(
            items.totalPrice.currencyFormatRp,
            style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
                color: ColorsConstants.primary),
          ),
        ],
      ),
    );
  }
}
