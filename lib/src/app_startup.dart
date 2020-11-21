import 'package:fimber/fimber.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libertime/src/configuration/bloc_delegate_log.dart';
import 'package:libertime/src/configuration/injection_container.dart' as di;
import 'package:splash/splash_screen.dart';

class AppStartup {
  Future setupInBackground(MessageState state) async {
    Fimber.plantTree(DebugTree());
    BlocSupervisor.delegate = BlocDelegateLog();
    await di.setup();
  }
}
