import 'package:meta/meta.dart';

@immutable
class AutoApplication {
  final String? applicationName;
  const AutoApplication([this.applicationName]);
}

@immutable
class Initialize {
  const Initialize();
}

@immutable
class Config {
  final String configurationName;
  const Config([this.configurationName = "application"]);
}

@immutable
class Session {
  const Session();
}

//--------------------------------   Feign   -----------------------------------------

@immutable
class FeignAuto {
  const FeignAuto();
}

@immutable
class Feign {
  const Feign();
}

@immutable
class FeignLoading {
  const FeignLoading();
}

@immutable
class FeignError {
  const FeignError();
}

@immutable
class FeignDismiss {
  const FeignDismiss();
}

@immutable
class FeignCall {
  const FeignCall();
}

@immutable
class FeignLogout {
  const FeignLogout();
}