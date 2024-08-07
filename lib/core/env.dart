import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(obfuscate: true, allowOptionalFields: true)
abstract class AppEnv {
  @EnviedField(varName: 'PROVIDER_URL')
  static final String providerUrl = _AppEnv.providerUrl;

  @EnviedField(varName: 'PROVIDER_KEY')
  static final String providerKey = _AppEnv.providerKey;
}
