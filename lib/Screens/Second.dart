import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:owend_app/bloc/cubit/conter_cubit.dart';

class Screen extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              DropD(),
              Container(height: 30, ),
              BlocConsumer<ConterCubit, ConterState>(
                listener: (context, state) {
                  return null;
                },
                builder: (context, state) {
                  if (state.counterval < 0) {
                    return Text("hello");
                  } else if (state.counterval < 1) {
                    return Text("do not press again");
                  } else if (state.counterval < 2) {
                    return Text("what ia say");
                  } else if (state.counterval < 3) {
                    return Text("again");
                  } else if (state.counterval < 4) {
                    return Text("had inf");
                  } else if (state.counterval < 5) {
                    return Text("what else");
                  } else
                    return Text(state.counterval.toString());
                },
              ),
              
              Container(height: 50, ),
              FloatingActionButton(
                onPressed: () =>
                    BlocProvider.of<ConterCubit>(context).increment(),
                child: Icon(Icons.add),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DropD extends StatefulWidget {
  @override
  _DropDState createState() => _DropDState();
}

class _DropDState extends State<DropD> {
  var _dropDown = [
    'hay',
    'hello',
    'hi'
        'bye'
        '🖐🏼'
  ];
  String _selected = 'hay';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: DropdownButton<String>(
        
        items: _dropDown.map((e) {
          return DropdownMenuItem<String>(
            child: Text(e),
            value: e,
          );
        }).toList(),
        onChanged: ( value) {
          setState(() {
            this._selected = value.toString();
          });
          
        },
        value: _selected,
      ),
    );
  }
}
