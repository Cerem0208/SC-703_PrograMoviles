import '/flutter_flow/flutter_flow_util.dart';
import 'editar_ruta_widget.dart' show EditarRutaWidget;
import 'package:flutter/material.dart';

class EditarRutaModel extends FlutterFlowModel<EditarRutaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtProvincia widget.
  FocusNode? txtProvinciaFocusNode;
  TextEditingController? txtProvinciaController;
  String? Function(BuildContext, String?)? txtProvinciaControllerValidator;
  // State field(s) for txtCanton widget.
  FocusNode? txtCantonFocusNode;
  TextEditingController? txtCantonController;
  String? Function(BuildContext, String?)? txtCantonControllerValidator;
  // State field(s) for txtDistrito widget.
  FocusNode? txtDistritoFocusNode;
  TextEditingController? txtDistritoController;
  String? Function(BuildContext, String?)? txtDistritoControllerValidator;
  // State field(s) for txtCalle widget.
  FocusNode? txtCalleFocusNode;
  TextEditingController? txtCalleController;
  String? Function(BuildContext, String?)? txtCalleControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtProvinciaFocusNode?.dispose();
    txtProvinciaController?.dispose();

    txtCantonFocusNode?.dispose();
    txtCantonController?.dispose();

    txtDistritoFocusNode?.dispose();
    txtDistritoController?.dispose();

    txtCalleFocusNode?.dispose();
    txtCalleController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
