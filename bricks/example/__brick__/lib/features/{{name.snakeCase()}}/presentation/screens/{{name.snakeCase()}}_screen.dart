
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubit/{{name.snakeCase()}}_cubit.dart';
import '../../cubit/{{name.snakeCase()}}_state.dart';

class {{name.snakeCase()}}Screen extends StatefulWidget {
  const {{name.snakeCase()}}Screen({Key? key}) : super(key: key);

  @override
  State<{{name.snakeCase()}}Screen> createState() => _{{name.snakeCase()}}ScreenState();
}

class _{{name.snakeCase()}}ScreenState extends State<{{name.snakeCase()}}Screen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context)=>  {{name.snakeCase()}}Cubit(),
    child:  BlocConsumer<{{name.snakeCase()}}Cubit, {{name.snakeCase()}}State>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final cubit = {{name.snakeCase()}}Cubit.get(context);
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  Text("{{name.snakeCase()}}Screen"),
      
                  
                ],
              ),
            ),
            );
        },
      ),);
    
  }
}
