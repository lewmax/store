import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print(bloc);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('closed$bloc');
  }

@override
void onChange(BlocBase bloc, Change change) {
  super.onChange(bloc, change);
  print(change);
}

// @override
// void onTransition(Bloc bloc, Transition transition) {
//   super.onTransition(bloc, transition);
//   print(transition);
// }
}
