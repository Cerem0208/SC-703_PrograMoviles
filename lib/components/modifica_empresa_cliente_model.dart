import '/flutter_flow/flutter_flow_util.dart';
import 'modifica_empresa_cliente_widget.dart' show ModificaEmpresaClienteWidget;
import 'package:flutter/material.dart';

class ModificaEmpresaClienteModel
    extends FlutterFlowModel<ModificaEmpresaClienteWidget> {
  ///  Local state fields for this component.

  String nombreCliente = 'Nombre';

  int telefonoCliente = 0;

  String correoCliente = 'ejemplo@gmail.com';

  ///  State fields for stateful widgets in this component.

  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreController;
  String? Function(BuildContext, String?)? txtNombreControllerValidator;
  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoController;
  String? Function(BuildContext, String?)? txtCorreoControllerValidator;
  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoController;
  String? Function(BuildContext, String?)? txtTelefonoControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNombreFocusNode?.dispose();
    txtNombreController?.dispose();

    txtCorreoFocusNode?.dispose();
    txtCorreoController?.dispose();

    txtTelefonoFocusNode?.dispose();
    txtTelefonoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
