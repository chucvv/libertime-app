import 'dart:async';

import 'package:features/src/splash/presentation/cubit/splash_cubit.dart';
import 'package:features/src/splash/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart' as provider;
import 'package:rive/rive.dart';
import 'package:share_ui/awesome_ui.dart';

import 'rive_callback.dart';

class SplashScreen extends HookWidget {
  final logger = Logger('SplashScreen');
  @override
  Widget build(BuildContext context) {
    final bloc = useProvider(splashBlocProvider);
    return BlocProvider(
      create: (context) => bloc,
      child: BlocConsumer<SplashCubit, SplashState>(builder: (_, state) {
        return Scaffold(
          backgroundColor: kBackgroudColor,
          body: provider.FutureProvider<Artboard>(
            create: _loadArt,
            child: Center(
              child: provider.Consumer<Artboard>(
                builder: (context, art, child) {
                  return Rive(artboard: art);
                },
              ),
            ),
          ),
        );
      }, listener: (context, state) {
        state.when(
            initial: () {},
            isUserLogged: () {
              Navigator.popAndPushNamed(context, '/home');
            },
            isUserNotLogged: () {
              Navigator.popAndPushNamed(context, '/login');
            });
      }),
    );
  }

  Future<Artboard> _loadArt(context) async {
    final data = await rootBundle.load(Assets.heart);
    final file = RiveFile();
    if (file.import(data)) {
      final artboard = file.mainArtboard;
      artboard.addController(
        CallbackAnimation('heart', callback: () {
          logger.info('on animation completed');
          BlocProvider.of<SplashCubit>(context).isSignIn();
        }),
      );
      return artboard;
    }
    return null;
  }
}
