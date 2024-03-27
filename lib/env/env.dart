// lib/env/env.dart
import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'KEY1')
  static const String key1 = _Env.key1;

  @EnviedField()
  static const int KEY2 = _Env.KEY2;
}
