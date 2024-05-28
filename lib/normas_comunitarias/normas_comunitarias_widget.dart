import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'normas_comunitarias_model.dart';
export 'normas_comunitarias_model.dart';

class NormasComunitariasWidget extends StatefulWidget {
  const NormasComunitariasWidget({super.key});

  @override
  State<NormasComunitariasWidget> createState() =>
      _NormasComunitariasWidgetState();
}

class _NormasComunitariasWidgetState extends State<NormasComunitariasWidget> {
  late NormasComunitariasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NormasComunitariasModel());
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
        appBar: AppBar(
          backgroundColor: Color(0xFFCF62ED),
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.safePop();
            },
            child: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).secondaryBackground,
              size: 50.0,
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Container(
                width: 393.0,
                height: 741.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/Imagen1.jpg',
                    ).image,
                  ),
                ),
                child: Stack(
                  children: [
                    Stack(
                      children: [
                        Stack(
                          children: [
                            Stack(
                              children: [
                                Stack(
                                  children: [
                                    Stack(
                                      children: [
                                        Stack(
                                          children: [
                                            Stack(
                                              children: [
                                                Stack(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Divider(
                                                            thickness: 1.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .accent4,
                                                          ),
                                                          Container(
                                                            width: 336.0,
                                                            height: 617.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -0.94),
                                                      child: Text(
                                                        'Normas comunitarias',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Playfair Display',
                                                              color: Color(
                                                                  0xFFCB365F),
                                                              fontSize: 30.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -0.06),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(25.0, 0.0,
                                                                25.0, 0.0),
                                                    child: Text(
                                                      '1. Respeto y Amabilidad: \n- No se tolera el acoso ni el lenguaje ofensivo.\n\n2. Inclusión y Diversidad\n - Valora la diversidad y evita la discriminación.\n\n3. Contenido Apropiado\n- Publica contenido adecuado y respetuoso.\n\n4. Privacidad\n- No compartas información personal sin permiso.\n\n5. Honestidad\n - Sé auténtico y reporta conductas inapropiadas.\n\n6. Colaboración\n   - Ayuda a otros y participa constructivamente.\n\n7. Moderación\n   - Los administradores pueden sancionar infracciones.',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.09, 0.64),
                              child: Text(
                                'Estas normas garantizan un ambiente seguro y positivo. \n¡Gracias por ser parte de Rainbow Heaven!',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, -0.8),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                        child: Text(
                          'Nos esforzamos por crear una comunidad inclusiva, respetuosa \ny segura para todos nuestros usuarios.\n Estas normas comunitarias están diseñadas para garantizar\nque todos los miembros de nuestra comunidad se sientan\n bienvenidos y valorados.',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 9.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.1),
                child: Container(
                  width: 419.0,
                  height: 71.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFCF62ED),
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
