import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_wisata_apps/insfrastructure/assets/assets.dart';
import 'package:flutter_wisata_apps/insfrastructure/constants/colors.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/home/presentation/widgets/nav_bar_item.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/presentation/screens/history_order/history_order_screen.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/presentation/screens/list_order/bloc/product/list_product_screen_bloc.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/presentation/screens/list_order/list_order_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final _pages = [
    // TicketOrderScreen(),
    // HistoryOrderScreen(),
    // SettingScreen(),
    const ListOrderScreen(),
    const Center(child: Text("Home Page Screen")),
    const HistoryOrderScreen(),
    const Center(child: Text("Setting Screen")),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ListProductScreenBloc, ListProductScreenState>(
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
        );
      },
      child: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavBar(
          child: [
            NavBarItem(
              iconPath: Assets.icons.nav.home.path,
              label: "Home",
              isActive: _selectedIndex == 0,
              onTap: () => _onItemTapped(0),
            ),
            NavBarItem(
              iconPath: Assets.icons.nav.ticket.path,
              label: "Ticket",
              isActive: _selectedIndex == 1,
              onTap: () => _onItemTapped(1),
            ),
            NavBarItem(
              iconPath: Assets.icons.nav.history.path,
              label: "History",
              isActive: _selectedIndex == 2,
              onTap: () => _onItemTapped(2),
            ),
            NavBarItem(
              iconPath: Assets.icons.nav.setting.path,
              label: "Setting",
              isActive: _selectedIndex == 3,
              onTap: () => _onItemTapped(3),
            ),
          ],
        ),
        floatingActionButton: GestureDetector(
          onTap: () {},
          child: ActionButton(
            child: Assets.icons.nav.scan.svg(),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
