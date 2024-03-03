import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../domain/repo/home_repo.dart';
import '/utlis/network/networkClient.dart';

part 'home_state.dart';


class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);
  
 HomeRepo homeRepo =  HomeRepo(NetworkClient.instance);
}