import 'package:data_connection_checker/data_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class DefaultNetworkInfo extends NetworkInfo {
  final DataConnectionChecker dataConnectionChecker;

  DefaultNetworkInfo(this.dataConnectionChecker);

  @override
  Future<bool> get isConnected => dataConnectionChecker.hasConnection;
}
