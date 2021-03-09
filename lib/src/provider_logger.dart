import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

class ProviderLogger extends ProviderObserver {
  final _logger = Logger('ProviderLogger');

  @override
  void didDisposeProvider(ProviderBase provider) {
    _logger.info('''
{
  "provider": "${provider.name ?? provider.runtimeType} was disposed",
}''');
    super.didDisposeProvider(provider);
  }

  @override
  void didAddProvider(ProviderBase provider, Object value) {
    _logger.info('''
{
  "provider": "${provider.name ?? provider.runtimeType} was initialized",
}''');
    super.didAddProvider(provider, value);
  }

  @override
  void didUpdateProvider(ProviderBase provider, Object newValue) {
    _logger.info('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "$newValue"
}''');
    super.didUpdateProvider(provider, newValue);
  }
}
