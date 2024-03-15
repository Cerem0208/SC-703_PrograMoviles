import '/flutter_flow/flutter_flow_util.dart';
import 'admin_crear_empresa_cliente_widget.dart'
    show AdminCrearEmpresaClienteWidget;
import 'package:flutter/material.dart';

class AdminCrearEmpresaClienteModel
    extends FlutterFlowModel<AdminCrearEmpresaClienteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtClienteCrearNombre widget.
  FocusNode? txtClienteCrearNombreFocusNode;
  TextEditingController? txtClienteCrearNombreController;
  String? Function(BuildContext, String?)?
      txtClienteCrearNombreControllerValidator;
  // State field(s) for txtClienteCrearTelefono widget.
  FocusNode? txtClienteCrearTelefonoFocusNode;
  TextEditingController? txtClienteCrearTelefonoController;
  String? Function(BuildContext, String?)?
      txtClienteCrearTelefonoControllerValidator;
  // State field(s) for txtClienteCrearCorreo widget.
  FocusNode? txtClienteCrearCorreoFocusNode;
  TextEditingController? txtClienteCrearCorreoController;
  String? Function(BuildContext, String?)?
      txtClienteCrearCorreoControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtClienteCrearNombreFocusNode?.dispose();
    txtClienteCrearNombreController?.dispose();

    txtClienteCrearTelefonoFocusNode?.dispose();
    txtClienteCrearTelefonoController?.dispose();

    txtClienteCrearCorreoFocusNode?.dispose();
    txtClienteCrearCorreoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
