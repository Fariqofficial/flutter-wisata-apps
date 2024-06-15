import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wisata_apps/insfrastructure/assets/assets.dart';
import 'package:flutter_wisata_apps/insfrastructure/components/custom_button.dart';
import 'package:flutter_wisata_apps/insfrastructure/components/custom_text_field.dart';
import 'package:flutter_wisata_apps/insfrastructure/constants/colors.dart';
import 'package:flutter_wisata_apps/insfrastructure/extensions/build_context_ext.dart';
import 'package:flutter_wisata_apps/modules/authenticated/modules/home/presentation/screens/home_screen.dart';
import 'package:flutter_wisata_apps/modules/guest/auth/data/datasource/auth_remote_dts_impl.dart';
import 'package:flutter_wisata_apps/modules/guest/auth/presentation/bloc/login/auth_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConstants.primary,
      body: Stack(
        children: [
          SizedBox(
            height: 250.h,
            child: Center(
              child: Assets.images.logoWhite.image(height: 55.h),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: ClipRRect(
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(20.sp)),
                child: ColoredBox(
                  color: ColorsConstants.white,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 45.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextField(
                          controller: emailController,
                          label: "Email",
                          isOutlineBorder: false,
                        ),
                        29.verticalSpace,
                        CustomTextField(
                          controller: passwordController,
                          label: 'Password',
                          isOutlineBorder: false,
                          obscureText: true,
                        ),
                        86.verticalSpace,
                        BlocListener<AuthBloc, AuthState>(
                          listener: (context, state) {
                            state.maybeWhen(
                              orElse: () {},
                              success: (data) async {
                                await AuthRemoteDTSImpl().saveToken(data);
                                // ignore: use_build_context_synchronously
                                context.pushReplacement(const HomeScreen());
                                print("Token : $data");
                              },
                              error: (error) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    shape: const BeveledRectangleBorder(),
                                    content: Text(error),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                              },
                            );
                          },
                          child: BlocBuilder<AuthBloc, AuthState>(
                            builder: (context, state) {
                              return state.maybeWhen(orElse: () {
                                return CustomButton.filled(
                                  onPressed: () {
                                    //Add Event From Bloc
                                    context.read<AuthBloc>().add(
                                          AuthEvent.login(
                                            email: emailController.text,
                                            password: passwordController.text,
                                          ),
                                        );
                                  },
                                  label: "Login",
                                );
                              }, loading: () {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              });
                            },
                          ),
                        ),
                        128.verticalSpace,
                        Center(
                          child: Assets.images.logoCwb.image(height: 40.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
