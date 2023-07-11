import 'package:demo_maps/data/webservices/places_webservices.dart';
import 'package:demo_maps/presentation/screens/login_screen.dart';
import 'package:demo_maps/presentation/screens/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../constants/strings.dart';
import '../data/repositry/maps_repo.dart';
import '../logic/manager/maps_cubit/maps_cubit.dart';
import '../logic/manager/phone_auth_cubit/phone_auth_cubit.dart';
import '../presentation/screens/maps_screen.dart';

class AppRouter {
  PhoneAuthCubit? phoneAuthCubit;

  AppRouter() {
    phoneAuthCubit = PhoneAuthCubit();
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case mapScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) =>
                MapsCubit(MapsRepository(PlacesWebservices())),
                child:  const MapsScreen(),
              ),
        );

      case loginScreen:
        return MaterialPageRoute(
          builder: (_) =>
          BlocProvider<PhoneAuthCubit>.value(
            value: phoneAuthCubit!,
            child: const LoginScreen(),
          ),
        );

      case otpScreen:
        final phoneNumber = settings.arguments;
        return MaterialPageRoute(
          builder: (_) =>
          BlocProvider<PhoneAuthCubit>.value(
            value: phoneAuthCubit!,
            child: OtpScreen(phoneNumber: phoneNumber),
          ),
        );
    }
  }
}