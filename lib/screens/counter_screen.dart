import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_flutter_bloc/blocs/counter/counter_bloc.dart';
import '../main.dart';
import '../x_src/my_res.dart';
import '../blocs/_main/main_bloc.dart';

/// createdby Daewu Bintara
/// Friday, 2/26/21

class CounterScreen extends StatelessWidget {
  CounterBloc bloc;
  var fabIncrement = Key('fabIncrement');

  @override
  Widget build(BuildContext context) {
    bloc = context.read<CounterBloc>();
    return Scaffold(
      appBar: AppBar(title: Text(XR().string(context).beranda())),
      body: BlocConsumer<CounterBloc, CounterState>(
        listener: (_, state){
          if (state is CsValue) {
            bloc.val = state.value;
            if (state.value == 10) _showBottomSheet(context);
          }
          if (state is CsLanguage) {
            context.read<MainBloc>().add(MainEventChangeLang(state.locale));
          }
        },
        builder: (_, state){
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('${bloc.val}',
                  style: themeData.textTheme.subtitle1,
                ),
                FlatButton(
                    child: Text(XR().string(context).change_lang(),
                      style: themeData.textTheme.headline1,
                    ),
                    onPressed: () {
                      context.read<CounterBloc>().add(CeChangeLanguage());
                    },
                ),
                FlatButton(
                    child: Text(XR().string(context).goto_test(),
                      style: themeData.textTheme.headline1,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, RouterName.test).then((value) {

                      });
                    },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
              key: fabIncrement,
              heroTag: "0",
              child: const Icon(Icons.add, color: Colors.white),
              onPressed: () =>
                  bloc.add(CeIncrement(bloc.val)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
              heroTag: "1",
              child: const Icon(Icons.remove, color: Colors.white),
              onPressed: () =>
                  bloc.add(CeDecrement(bloc.val)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
              heroTag: "2",
              child: const Icon(Icons.brightness_6, color: Colors.white),
              onPressed: () {
                context.read<MainBloc>().add(MainEventChangeTheme());
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
              heroTag: "3",
              backgroundColor: Colors.red,
              child: const Icon(Icons.error),
              onPressed: () => bloc.add(null),
            ),
          ),
        ],
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (contex){
          return Container(
            child: RaisedButton(
              onPressed: ()=>context.read<CounterBloc>().add(CeIncrement(bloc.val)),
            ),
          );
        }
    );
  }
}
