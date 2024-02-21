
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubit/home_cubit.dart';
import '../../cubit/home_state.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context)=>  homeCubit(),
    child:  BlocConsumer<homeCubit, homeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final cubit = homeCubit.get(context);
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  Text("homeScreen"),
      
                  
                ],
              ),
            ),
            );
        },
      ),);
    
  }
}
