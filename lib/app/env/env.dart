
import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
    @EnviedField(varName: 'PRIVATEKEY')
    static String privateKey = _Env.privateKey;
    @EnviedField(varName: "PUBLICKEY")
    static String publicKey = _Env.publicKey;
    
}