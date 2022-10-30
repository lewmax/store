import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class TabNavigationCubit extends Cubit<int> {
  TabNavigationCubit() : super(0);

  void changeTabIndex(int index) {
    emit(index);
  }
}
