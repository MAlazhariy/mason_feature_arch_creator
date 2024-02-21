import 'package:flutter_bloc/flutter_bloc.dart';
import '../domain/repository/{{name.snakeCase()}}_repo.dart';
import '{{name.snakeCase()}}_state.dart';
import '/utlis/network/networkClient.dart';

class {{name.snakeCase()}}Cubit extends Cubit<{{name.snakeCase()}}State> {
  {{name.snakeCase()}}Cubit() : super({{name.snakeCase()}}Initial());
  static {{name.snakeCase()}}Cubit get(context) => BlocProvider.of(context);
  
 {{name.snakeCase()}}Repo {{name.snakeCase()}}_Repo =  {{name.snakeCase()}}Repo(NetworkClient.instance);
}