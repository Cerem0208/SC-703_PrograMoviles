import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_crear_ruta_widget.dart' show AdminCrearRutaWidget;
import 'package:flutter/material.dart';

class AdminCrearRutaModel extends FlutterFlowModel<AdminCrearRutaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  RutasRecord? docCREADO;
  // State field(s) for txtRutaCrearProvincia widget.
  FocusNode? txtRutaCrearProvinciaFocusNode;
  TextEditingController? txtRutaCrearProvinciaController;
  String? Function(BuildContext, String?)?
      txtRutaCrearProvinciaControllerValidator;
  // State field(s) for txtRutaCrearCanton widget.
  FocusNode? txtRutaCrearCantonFocusNode;
  TextEditingController? txtRutaCrearCantonController;
  String? Function(BuildContext, String?)?
      txtRutaCrearCantonControllerValidator;
  // State field(s) for txtRutaCrearDistrito widget.
  FocusNode? txtRutaCrearDistritoFocusNode;
  TextEditingController? txtRutaCrearDistritoController;
  String? Function(BuildContext, String?)?
      txtRutaCrearDistritoControllerValidator;
  // State field(s) for txtRutaCrearCalle widget.
  FocusNode? txtRutaCrearCalleFocusNode;
  TextEditingController? txtRutaCrearCalleController;
  String? Function(BuildContext, String?)? txtRutaCrearCalleControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtRutaCrearProvinciaFocusNode?.dispose();
    txtRutaCrearProvinciaController?.dispose();

    txtRutaCrearCantonFocusNode?.dispose();
    txtRutaCrearCantonController?.dispose();

    txtRutaCrearDistritoFocusNode?.dispose();
    txtRutaCrearDistritoController?.dispose();

    txtRutaCrearCalleFocusNode?.dispose();
    txtRutaCrearCalleController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
