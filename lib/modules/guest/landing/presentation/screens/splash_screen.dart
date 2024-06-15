import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wisata_apps/insfrastructure/assets/assets.gen.dart';
import 'package:flutter_wisata_apps/insfrastructure/constants/constants.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/home/presentation/screens/home_screen.dart';
import 'package:flutter_wisata_apps/modules/guest/auth/data/datasource/auth_remote_dts_impl.dart';
import 'package:flutter_wisata_apps/modules/guest/auth/presentation/screens/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Future.delayed(
          const Duration(seconds: 2),
          () => AuthRemoteDTSImpl().isLogin(),
        ),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.data == true) return const HomeScreen();
            return const LoginScreen();
          }
          return Stack(
            children: [
              Column(
                children: [
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.all(32.sp),
                    child: Center(
                      child: Assets.images.logoBlue.image(),
                    ),
                  ),
                  const Spacer(),
                  const Center(
                    child: CircularProgressIndicator(
                        color: ColorsConstants.primary),
                  ),
                  40.verticalSpace,
                  SizedBox(
                    height: 100.h,
                    child: Align(
                        alignment: Alignment.center,
                        child: Assets.images.logoCwb.image(width: 96.w)),
                  )
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
