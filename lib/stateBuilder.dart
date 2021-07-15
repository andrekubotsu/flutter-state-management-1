import 'package:flutter/material.dart';
import 'package:gerencia_estado/controller.dart';

class StateBuilder<T> extends StatefulWidget {
  // calback function
  final Widget Function(BuildContext, T state) builder;
  final Controller<T> controller;

  StateBuilder({Key? key, required this.builder, required this.controller})
      : super(key: key);

  @override
  _StateBuilderState<T> createState() => _StateBuilderState<T>();
}

class _StateBuilderState<T> extends State<StateBuilder<T>> {
  @override
  void initState() {
    widget.controller.listen((_) => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // o contexto não necessariamente trabalha com relação à atualização,
    // o contexto serve para puxar informações
    // o setState será chamado pela callBack
    return widget.builder(context, widget.controller.state);
  }
}
