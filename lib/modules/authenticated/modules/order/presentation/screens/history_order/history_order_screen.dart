import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wisata_apps/insfrastructure/assets/assets.gen.dart';
import 'package:flutter_wisata_apps/insfrastructure/constants/colors.dart';
import 'package:flutter_wisata_apps/insfrastructure/extensions/extensions.dart';
import 'package:flutter_wisata_apps/insfrastructure/extensions/string_ext.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/domain/models/order/order_model.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/presentation/screens/history_order/bloc/history_screen_bloc.dart';
import 'package:intl/intl.dart';

part 'widgets/history_item.dart';

class HistoryOrderScreen extends StatefulWidget {
  const HistoryOrderScreen({super.key});

  @override
  State<HistoryOrderScreen> createState() => _HistoryOrderScreenState();
}

class _HistoryOrderScreenState extends State<HistoryOrderScreen> {
  @override
  void initState() {
    context
        .read<HistoryScreenBloc>()
        .add(const HistoryScreenEvent.getHistories());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction History'),
      ),
      body: BlocBuilder<HistoryScreenBloc, HistoryScreenState>(
        builder: (context, state) {
          return state.maybeWhen(
            success: (histories) {
              if (histories.isEmpty) {
                return const Center(
                  child: Text('No Data'),
                );
              }
              return ListView(
                padding: const EdgeInsets.all(16.0),
                children: List.generate(
                  histories.length,
                  (index) => HistoryItem(
                    items: histories[index],
                  ),
                ),
              );
            },
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            orElse: () {
              return const Center(
                child: Text('No Data'),
              );
            },
          );
        },
      ),
    );
  }
}
