import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wisata_apps/insfrastructure/constants/colors.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/data/datasource/product/product_remote_dts.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/data/datasource/product/product_remote_dts_impl.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/presentation/screens/detail_order/bloc/order/order_item_products_bloc.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/presentation/screens/history_order/bloc/history_screen_bloc.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/presentation/screens/list_order/bloc/checkout_product/checkout_product_bloc.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/presentation/screens/list_order/bloc/product/list_product_screen_bloc.dart';
import 'package:flutter_wisata_apps/modules/guest/auth/data/datasource/auth_remote_dts.dart';
import 'package:flutter_wisata_apps/modules/guest/auth/presentation/bloc/login/auth_bloc.dart';
import 'package:flutter_wisata_apps/modules/guest/auth/presentation/bloc/logout/logout_bloc.dart';
import 'package:flutter_wisata_apps/modules/guest/landing/presentation/screens/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(AuthRemoteDTS()),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(AuthRemoteDTS()),
        ),
        BlocProvider(
          create: (context) => ListProductScreenBloc(
              ProductRemoteDTS(), ProductRemoteDTSImpl.instance)
            ..add(const ListProductScreenEvent.syncProducts()),
        ),
        BlocProvider(
          create: (context) => CheckoutProductBloc(),
        ),
        BlocProvider(
          create: (context) => OrderItemProductsBloc(),
        ),
        BlocProvider(
          create: (context) => HistoryScreenBloc(ProductRemoteDTSImpl.instance),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme:
                  ColorScheme.fromSeed(seedColor: ColorsConstants.primary),
              useMaterial3: false,
              dialogTheme: const DialogTheme(elevation: 0),
              textTheme:
                  GoogleFonts.outfitTextTheme(Theme.of(context).textTheme),
              appBarTheme: AppBarTheme(
                color: ColorsConstants.white,
                elevation: 0,
                titleTextStyle: GoogleFonts.outfit(
                    color: ColorsConstants.primary,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500),
                iconTheme: const IconThemeData(color: ColorsConstants.black),
                centerTitle: true,
              ),
            ),
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}
