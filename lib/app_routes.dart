import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mood_up_recruitment_task/app/injection_conatiner.dart';
import 'package:mood_up_recruitment_task/domain/models/details_model.dart';
import 'package:mood_up_recruitment_task/features/pages/detalis_page/detalis_page.dart';
import 'package:mood_up_recruitment_task/features/pages/home_page/cubit/home_page_cubit.dart';
import 'package:mood_up_recruitment_task/features/pages/home_page/home_page.dart';
import 'package:mood_up_recruitment_task/features/pages/search_page/cubit/search_page_cubit.dart';
import 'package:mood_up_recruitment_task/features/pages/search_page/search_page.dart';
import 'package:mood_up_recruitment_task/root_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _homePageNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'sectionANav');
final GlobalKey<NavigatorState> _searchPageNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'sectionANav');
final GlobalKey<NavigatorState> _detalisPageNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'sectionANav');

StatefulNavigationShell? globalNavigationShell;

class AppRouter {
  static GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: "/homePage",
    routes: <RouteBase>[
      StatefulShellRoute.indexedStack(
        builder: (BuildContext context, GoRouterState state,
            StatefulNavigationShell navigationShell) {
          return RootPage(navigationShell: navigationShell);
        },
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            navigatorKey: _homePageNavigatorKey,
            routes: <RouteBase>[
              GoRoute(
                  path: '/homePage',
                  builder: (BuildContext context, GoRouterState state) {
                    return BlocProvider(
                      create: (context) =>
                          getIt<HomePageCubit>()..start(skip: 0),
                      child: HomePage(),
                    );
                  }),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _searchPageNavigatorKey,
            routes: <RouteBase>[
              GoRoute(
                path: '/searchPage',
                builder: (BuildContext context, GoRouterState state) =>
                    BlocProvider(
                  create: (context) => getIt<SearchPageCubit>(),
                  child: SearchPage(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _detalisPageNavigatorKey,
            routes: <RouteBase>[
              GoRoute(
                path: "/detalisPage",
                name: "/detalisPage",
                builder: (context, state) {
                  final DetailsModel comic = state.extra as DetailsModel;
                  return DetailsPage(
                    detailsModel: comic,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
