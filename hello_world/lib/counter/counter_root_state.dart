import 'package:flutter/material.dart';
import 'package:hello_world/counter/counter_inc.dart';
import 'package:hello_world/counter/counter_show.dart';

class CounterRootState extends StatefulWidget {

  const CounterRootState({super.key});

  @override
  State<CounterRootState> createState() => _CounterRootState();
}

class _CounterRootState extends State<CounterRootState> {
  
  int cpt = 0;

  void increment(){
    setState(() {
      cpt++;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    
    return Row(
      children: [
        CounterInc(onClick: increment,),
        CounterShow(cpt:cpt)
      ],
    );
  }
}