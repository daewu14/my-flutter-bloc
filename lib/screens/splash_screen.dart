import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_flutter_bloc/blocs/splash/splash_bloc.dart';
import 'package:my_flutter_bloc/main.dart';
import 'package:my_flutter_bloc/x_src/my_res.dart';
import 'package:my_flutter_bloc/x_routes/router_name.dart';

/// createdby Daewu Bintara
/// Saturday, 2/27/21

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocConsumer<SplashBloc, SplashState>(
          listener: (_, state) {
            if(state is GoToCounterPage) {
              Navigator.pushReplacementNamed(context, RouterName.counter, arguments: "Okee");
            }
          },
          builder: (_, state){
            return Text(XR().string(context).title_app(),
              style: themeData?.textTheme.headline1,
            );
          },
        ),
      ),
    );
  }
}
