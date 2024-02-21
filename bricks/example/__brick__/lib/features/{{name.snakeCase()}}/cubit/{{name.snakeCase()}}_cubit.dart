import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../domain/repo/{{name.snakeCase()}}_repo.dart';
import '/utlis/network/networkClient.dart';

part '{{name.snakeCase()}}_state.dart';


class {{name.pascalCase()}}Cubit extends Cubit<{{name.pascalCase()}}State> {
  {{name.pascalCase()}}Cubit() : super({{name.pascalCase()}}Initial());
  static {{name.pascalCase()}}Cubit get(context) => BlocProvider.of(context);
  
 {{name.pascalCase()}}Repo {{name.snakeCase()}}Repo =  {{name.pascalCase()}}Repo(NetworkClient.instance);
}