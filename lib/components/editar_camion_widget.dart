import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'editar_camion_model.dart';
export 'editar_camion_model.dart';

class EditarCamionWidget extends StatefulWidget {
  const EditarCamionWidget({super.key});

  @override
  State<EditarCamionWidget> createState() => _EditarCamionWidgetState();
}

class _EditarCamionWidgetState extends State<EditarCamionWidget> {
  late EditarCamionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditarCamionModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
