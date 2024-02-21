import 'package:flutter_bloc/flutter_bloc.dart';
import '../domain/repository/home_repo.dart';
import 'home_state.dart';
import '/utlis/network/networkClient.dart';

class homeCubit extends Cubit<homeState> {
  homeCubit() : super(homeInitial());
  static homeCubit get(context) => BlocProvider.of(context);
  
 homeRepo home_Repo =  homeRepo(NetworkClient.instance);
}