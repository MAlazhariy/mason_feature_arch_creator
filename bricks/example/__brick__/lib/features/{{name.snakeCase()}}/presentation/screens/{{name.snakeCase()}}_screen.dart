
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubit/{{name.snakeCase()}}_cubit.dart';

class {{name.pascalCase()}}Screen extends StatefulWidget {
  const {{name.pascalCase()}}Screen({Key? key}) : super(key: key);

  @override
  State<{{name.pascalCase()}}Screen> createState() => _{{name.pascalCase()}}ScreenState();
}

class _{{name.pascalCase()}}ScreenState extends State<{{name.pascalCase()}}Screen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context)=>  {{name.pascalCase()}}Cubit(),
    child:  BlocConsumer<{{name.pascalCase()}}Cubit, {{name.pascalCase()}}State>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final cubit = {{name.pascalCase()}}Cubit.get(context);
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  Text("{{name.pascalCase()}}Screen"),
      
                  
                ],
              ),
            ),
            );
        },
      ),);
    
  }
}
