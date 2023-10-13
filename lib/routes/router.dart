import 'package:auto_route/auto_route.dart';

import '../shared/screen/home_screen.dart';
import '../shared/screen/user_profile.dart';

part 'router.gr.dart';

// flutter packages pub run build_runner build
@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
)
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: UserProfileRoute.page),
      ];
}
