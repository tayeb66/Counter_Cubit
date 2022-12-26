import 'package:counter_bloc/Cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit,int>(
              builder: (context,state){
                return Text("$state",textScaleFactor: 2,);
              },
            ),
            BlocBuilder<CounterCubit,int>(
              builder: (context,state){
                return ElevatedButton(onPressed: (){
                  BlocProvider.of<CounterCubit>(context).increment();
                }, child: Text("Add"));
              },
            ),
            BlocBuilder<CounterCubit,int>(
              builder: (context,state){
                return ElevatedButton(onPressed: (){
                  BlocProvider.of<CounterCubit>(context).decrement();
                }, child: Text("Remove"));
              },
            )
          ],
        )
      ),
    );
  }
}
