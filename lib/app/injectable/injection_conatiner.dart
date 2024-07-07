import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mood_up_recruitment_task/app/injectable/injection_conatiner.config.dart';

final getIt = GetIt.instance;
@InjectableInit()
void configureDependencies() => getIt.init();
