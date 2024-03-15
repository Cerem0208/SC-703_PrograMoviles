import '/flutter_flow/flutter_flow_util.dart';
import 'admin_crear_vendedor_widget.dart' show AdminCrearVendedorWidget;
import 'package:flutter/material.dart';

class AdminCrearVendedorModel
    extends FlutterFlowModel<AdminCrearVendedorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtVendedorCrearEmpresa widget.
  FocusNode? txtVendedorCrearEmpresaFocusNode;
  TextEditingController? txtVendedorCrearEmpresaController;
  String? Function(BuildContext, String?)?
      txtVendedorCrearEmpresaControllerValidator;
  // State field(s) for txtVendedorCrearNombre widget.
  FocusNode? txtVendedorCrearNombreFocusNode;
  TextEditingController? txtVendedorCrearNombreController;
  String? Function(BuildContext, String?)?
      txtVendedorCrearNombreControllerValidator;
  // State field(s) for txtVendedorCrearPApellido widget.
  FocusNode? txtVendedorCrearPApellidoFocusNode;
  TextEditingController? txtVendedorCrearPApellidoController;
  String? Function(BuildContext, String?)?
      txtVendedorCrearPApellidoControllerValidator;
  // State field(s) for txtVendedorCrearSApellido widget.
  FocusNode? txtVendedorCrearSApellidoFocusNode;
  TextEditingController? txtVendedorCrearSApellidoController;
  String? Function(BuildContext, String?)?
      txtVendedorCrearSApellidoControllerValidator;
  // State field(s) for txtVendedorCrearTelefono widget.
  FocusNode? txtVendedorCrearTelefonoFocusNode;
  TextEditingController? txtVendedorCrearTelefonoController;
  String? Function(BuildContext, String?)?
      txtVendedorCrearTelefonoControllerValidator;
  // State field(s) for txtVendedorCrearCorreo widget.
  FocusNode? txtVendedorCrearCorreoFocusNode;
  TextEditingController? txtVendedorCrearCorreoController;
  String? Function(BuildContext, String?)?
      txtVendedorCrearCorreoControllerValidator;
  // State field(s) for txtVendedorCrearSalario widget.
  FocusNode? txtVendedorCrearSalarioFocusNode;
  TextEditingController? txtVendedorCrearSalarioController;
  String? Function(BuildContext, String?)?
      txtVendedorCrearSalarioControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtVendedorCrearEmpresaFocusNode?.dispose();
    txtVendedorCrearEmpresaController?.dispose();

    txtVendedorCrearNombreFocusNode?.dispose();
    txtVendedorCrearNombreController?.dispose();

    txtVendedorCrearPApellidoFocusNode?.dispose();
    txtVendedorCrearPApellidoController?.dispose();

    txtVendedorCrearSApellidoFocusNode?.dispose();
    txtVendedorCrearSApellidoController?.dispose();

    txtVendedorCrearTelefonoFocusNode?.dispose();
    txtVendedorCrearTelefonoController?.dispose();

    txtVendedorCrearCorreoFocusNode?.dispose();
    txtVendedorCrearCorreoController?.dispose();

    txtVendedorCrearSalarioFocusNode?.dispose();
    txtVendedorCrearSalarioController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
