import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/modificar/editar_facturas/editar_facturas_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'vendedor_mostrar_factura_model.dart';
export 'vendedor_mostrar_factura_model.dart';

class VendedorMostrarFacturaWidget extends StatefulWidget {
  const VendedorMostrarFacturaWidget({super.key});

  @override
  State<VendedorMostrarFacturaWidget> createState() =>
      _VendedorMostrarFacturaWidgetState();
}

class _VendedorMostrarFacturaWidgetState
    extends State<VendedorMostrarFacturaWidget> {
  late VendedorMostrarFacturaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VendedorMostrarFacturaModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF1F66F2), Color(0xFFF4B402)],
                  stops: [0.0, 1.0],
                  begin: AlignmentDirectional(0.0, -1.0),
                  end: AlignmentDirectional(0, 1.0),
                ),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 90.0, 0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 0.6,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(50.0),
                                bottomRight: Radius.circular(50.0),
                                topLeft: Radius.circular(50.0),
                                topRight: Radius.circular(50.0),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 60.0, 0.0, 0.0),
                                        child: Text(
                                          'Mostrar Facturas',
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: const Color(0xFF1F66F2),
                                                fontSize: 28.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -0.44),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 150.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: AuthUserStreamWidget(
                                            builder: (context) => StreamBuilder<
                                                List<FacturaRecord>>(
                                              stream: queryFacturaRecord(
                                                queryBuilder: (facturaRecord) =>
                                                    facturaRecord
                                                        .where(
                                                          'empresa',
                                                          isEqualTo: valueOrDefault(
                                                              currentUserDocument
                                                                  ?.sEmpresa,
                                                              ''),
                                                        )
                                                        .orderBy('fecha'),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<FacturaRecord>
                                                    listViewFacturaRecordList =
                                                    snapshot.data!;
                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      listViewFacturaRecordList
                                                          .length,
                                                  itemBuilder:
                                                      (context, listViewIndex) {
                                                    final listViewFacturaRecord =
                                                        listViewFacturaRecordList[
                                                            listViewIndex];
                                                    return Slidable(
                                                      endActionPane: ActionPane(
                                                        motion:
                                                            const ScrollMotion(),
                                                        extentRatio: 0.5,
                                                        children: [
                                                          SlidableAction(
                                                            label: 'Modificar',
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                            icon: Icons.edit,
                                                            onPressed:
                                                                (_) async {
                                                              await showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                enableDrag:
                                                                    false,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return GestureDetector(
                                                                    onTap: () => _model
                                                                            .unfocusNode
                                                                            .canRequestFocus
                                                                        ? FocusScope.of(context).requestFocus(_model
                                                                            .unfocusNode)
                                                                        : FocusScope.of(context)
                                                                            .unfocus(),
                                                                    child:
                                                                        Padding(
                                                                      padding: MediaQuery
                                                                          .viewInsetsOf(
                                                                              context),
                                                                      child:
                                                                          const EditarFacturasWidget(),
                                                                    ),
                                                                  );
                                                                },
                                                              ).then((value) =>
                                                                  safeSetState(
                                                                      () {}));
                                                            },
                                                          ),
                                                          SlidableAction(
                                                            label: 'Eliminar',
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                            icon: Icons
                                                                .delete_sharp,
                                                            onPressed:
                                                                (_) async {
                                                              await listViewFacturaRecord
                                                                  .reference
                                                                  .delete();
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                      child: ListTile(
                                                        leading: const Icon(
                                                          Icons.person_rounded,
                                                          size: 35.0,
                                                        ),
                                                        title: Text(
                                                          listViewFacturaRecord
                                                              .nombre,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleLarge,
                                                        ),
                                                        subtitle: Text(
                                                          listViewFacturaRecord
                                                              .total
                                                              .toString(),
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium,
                                                        ),
                                                        trailing: Icon(
                                                          Icons.double_arrow,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 35.0,
                                                        ),
                                                        tileColor: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        dense: false,
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.24, 1.01),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 0.1,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(50.0),
                                topRight: Radius.circular(50.0),
                              ),
                              border: Border.all(
                                color: const Color(0x0014181B),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.01, -4.51),
                                  child: FlutterFlowIconButton(
                                    borderColor: const Color(0x004B39EF),
                                    borderRadius: 20.0,
                                    borderWidth: 9.0,
                                    buttonSize: 70.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    icon: const Icon(
                                      Icons.logout_sharp,
                                      color: Color(0xFFEDB718),
                                      size: 50.0,
                                    ),
                                    onPressed: () async {
                                      context.pushNamed('Login');
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => Container(
                              width: 150.0,
                              height: 150.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                currentUserPhoto,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 50.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('vendedorMenuFacturas');
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
