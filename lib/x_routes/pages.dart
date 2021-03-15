
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_flutter_bloc/blocs/counter/counter_bloc.dart';
import 'package:my_flutter_bloc/blocs/splash/splash_bloc.dart';
import 'package:my_flutter_bloc/screens/splash_screen.dart';
import 'package:my_flutter_bloc/blocs/test/test_bloc.dart';
import 'package:my_flutter_bloc/screens/counter_screen.dart';
import 'package:my_flutter_bloc/screens/test_screen.dart';

import 'router_name.dart';

/// createdby Daewu Bintara
/// Wednesday, 2/24/21

class Pages {
  // ignore: missing_return
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name){
      case RouterName.counter:
        return MaterialPageRoute(
              builder: (_) => BlocProvider(
              create: (_) => CounterBloc(),
              child: CounterScreen(),
            )
        );
        break;
      case RouterName.splash:
        return MaterialPageRoute(
              builder: (_) => BlocProvider(
              create: (_) => SplashBloc()..add(Loading()),
              child: SplashScreen(),
            )
        );
        break;
      case RouterName.test:
        return MaterialPageRoute(
              builder: (_) => BlocProvider(
              create: (_) => TestBloc(),
              child: TestScreen(),
            )
        );
        break;
    }

  }
}