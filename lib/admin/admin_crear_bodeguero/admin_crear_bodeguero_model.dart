import '/flutter_flow/flutter_flow_util.dart';
import 'admin_crear_bodeguero_widget.dart' show AdminCrearBodegueroWidget;
import 'package:flutter/material.dart';

class AdminCrearBodegueroModel
    extends FlutterFlowModel<AdminCrearBodegueroWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtBodegueroCrearEmpresa widget.
  FocusNode? txtBodegueroCrearEmpresaFocusNode;
  TextEditingController? txtBodegueroCrearEmpresaController;
  String? Function(BuildContext, String?)?
      txtBodegueroCrearEmpresaControllerValidator;
  // State field(s) for txtBodegueroCrearNombre widget.
  FocusNode? txtBodegueroCrearNombreFocusNode;
  TextEditingController? txtBodegueroCrearNombreController;
  String? Function(BuildContext, String?)?
      txtBodegueroCrearNombreControllerValidator;
  // State field(s) for txtBodegueroCrearPApellido widget.
  FocusNode? txtBodegueroCrearPApellidoFocusNode;
  TextEditingController? txtBodegueroCrearPApellidoController;
  String? Function(BuildContext, String?)?
      txtBodegueroCrearPApellidoControllerValidator;
  // State field(s) for txtBodegueroCrearSApellido widget.
  FocusNode? txtBodegueroCrearSApellidoFocusNode;
  TextEditingController? txtBodegueroCrearSApellidoController;
  String? Function(BuildContext, String?)?
      txtBodegueroCrearSApellidoControllerValidator;
  // State field(s) for txtBodegueroCrearTelefono widget.
  FocusNode? txtBodegueroCrearTelefonoFocusNode;
  TextEditingController? txtBodegueroCrearTelefonoController;
  String? Function(BuildContext, String?)?
      txtBodegueroCrearTelefonoControllerValidator;
  // State field(s) for txtBodegueroCrearCorreo widget.
  FocusNode? txtBodegueroCrearCorreoFocusNode;
  TextEditingController? txtBodegueroCrearCorreoController;
  String? Function(BuildContext, String?)?
      txtBodegueroCrearCorreoControllerValidator;
  // State field(s) for txtBodegueroCrearSalario widget.
  FocusNode? txtBodegueroCrearSalarioFocusNode;
  TextEditingController? txtBodegueroCrearSalarioController;
  String? Function(BuildContext, String?)?
      txtBodegueroCrearSalarioControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtBodegueroCrearEmpresaFocusNode?.dispose();
    txtBodegueroCrearEmpresaController?.dispose();

    txtBodegueroCrearNombreFocusNode?.dispose();
    txtBodegueroCrearNombreController?.dispose();

    txtBodegueroCrearPApellidoFocusNode?.dispose();
    txtBodegueroCrearPApellidoController?.dispose();

    txtBodegueroCrearSApellidoFocusNode?.dispose();
    txtBodegueroCrearSApellidoController?.dispose();

    txtBodegueroCrearTelefonoFocusNode?.dispose();
    txtBodegueroCrearTelefonoController?.dispose();

    txtBodegueroCrearCorreoFocusNode?.dispose();
    txtBodegueroCrearCorreoController?.dispose();

    txtBodegueroCrearSalarioFocusNode?.dispose();
    txtBodegueroCrearSalarioController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
