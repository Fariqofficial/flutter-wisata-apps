import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wisata_apps/insfrastructure/assets/assets.gen.dart';
import 'package:flutter_wisata_apps/insfrastructure/components/components.dart';
import 'package:flutter_wisata_apps/insfrastructure/constants/colors.dart';
import 'package:flutter_wisata_apps/insfrastructure/extensions/extensions.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/domain/models/order/order_item.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/domain/models/product_model.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/presentation/screens/detail_order/detail_order_screen.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/presentation/screens/list_order/bloc/checkout_product/checkout_product_bloc.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/presentation/screens/list_order/bloc/product/list_product_screen_bloc.dart';

part 'widgets/navbar_order_summary.dart';
part 'widgets/order_card_item.dart';

class ListOrderScreen extends StatefulWidget {
  const ListOrderScreen({super.key});

  @override
  State<ListOrderScreen> createState() => _ListOrderScreenState();
}

class _ListOrderScreenState extends State<ListOrderScreen> {
  @override
  void initState() {
    context
        .read<ListProductScreenBloc>()
        .add(const ListProductScreenEvent.getProductsFromLocal());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Penjualan Tiket'),
        ),
        body: BlocBuilder<ListProductScreenBloc, ListProductScreenState>(
          builder: (context, state) {
            final products = state.maybeWhen(
              orElse: () => [],
              success: (products) => products,
            );
            if (products.isEmpty) {
              return const Center(
                child: Text("No data"),
              );
            }
            return ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              itemCount: products.length,
              separatorBuilder: (context, index) => 20.verticalSpace,
              itemBuilder: (context, index) => OrderCardItem(
                item: products[index],
              ),
            );
          },
        ),
        bottomNavigationBar: NavbarOrderSummary(
          onTap: () {
            context.push(const DetailOrderScreen());
          },
        ));
  }
}
