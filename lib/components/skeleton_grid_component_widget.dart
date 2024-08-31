import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'skeleton_grid_component_model.dart';
export 'skeleton_grid_component_model.dart';

class SkeletonGridComponentWidget extends StatefulWidget {
  const SkeletonGridComponentWidget({super.key});

  @override
  State<SkeletonGridComponentWidget> createState() =>
      _SkeletonGridComponentWidgetState();
}

class _SkeletonGridComponentWidgetState
    extends State<SkeletonGridComponentWidget> with TickerProviderStateMixin {
  late SkeletonGridComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SkeletonGridComponentModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation1': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'columnOnPageLoadAnimation2': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 600.0.ms,
            color: Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'columnOnPageLoadAnimation3': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            color: Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'columnOnPageLoadAnimation4': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 600.0.ms,
            color: Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'columnOnPageLoadAnimation5': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            color: Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'columnOnPageLoadAnimation6': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 250.0.ms,
            duration: 600.0.ms,
            color: Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).backgroundColor,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          height: 30.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10.0,
                                color: Color(0x204D4D4D),
                                offset: Offset(
                                  2.0,
                                  1.0,
                                ),
                                spreadRadius: 1.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      Container(
                        width: 60.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ].divide(SizedBox(width: 20.0)),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ]
                        .divide(SizedBox(width: 15.0))
                        .addToStart(SizedBox(width: 15.0)),
                  ),
                ),
              ].divide(SizedBox(height: 15.0)),
            ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation1']!),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          height: 30.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10.0,
                                color: Color(0x204D4D4D),
                                offset: Offset(
                                  2.0,
                                  1.0,
                                ),
                                spreadRadius: 1.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      Container(
                        width: 60.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ].divide(SizedBox(width: 20.0)),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ]
                        .divide(SizedBox(width: 15.0))
                        .addToStart(SizedBox(width: 15.0)),
                  ),
                ),
              ].divide(SizedBox(height: 15.0)),
            ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation2']!),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          height: 30.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10.0,
                                color: Color(0x204D4D4D),
                                offset: Offset(
                                  2.0,
                                  1.0,
                                ),
                                spreadRadius: 1.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      Container(
                        width: 60.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ].divide(SizedBox(width: 20.0)),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ]
                        .divide(SizedBox(width: 15.0))
                        .addToStart(SizedBox(width: 15.0)),
                  ),
                ),
              ].divide(SizedBox(height: 15.0)),
            ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation3']!),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          height: 30.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10.0,
                                color: Color(0x204D4D4D),
                                offset: Offset(
                                  2.0,
                                  1.0,
                                ),
                                spreadRadius: 1.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      Container(
                        width: 60.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ].divide(SizedBox(width: 20.0)),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ]
                        .divide(SizedBox(width: 15.0))
                        .addToStart(SizedBox(width: 15.0)),
                  ),
                ),
              ].divide(SizedBox(height: 15.0)),
            ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation4']!),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          height: 30.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10.0,
                                color: Color(0x204D4D4D),
                                offset: Offset(
                                  2.0,
                                  1.0,
                                ),
                                spreadRadius: 1.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      Container(
                        width: 60.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ].divide(SizedBox(width: 20.0)),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ]
                        .divide(SizedBox(width: 15.0))
                        .addToStart(SizedBox(width: 15.0)),
                  ),
                ),
              ].divide(SizedBox(height: 15.0)),
            ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation5']!),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          height: 30.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10.0,
                                color: Color(0x204D4D4D),
                                offset: Offset(
                                  2.0,
                                  1.0,
                                ),
                                spreadRadius: 1.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      Container(
                        width: 60.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ].divide(SizedBox(width: 20.0)),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      Container(
                        width: 140.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Color(0x204D4D4D),
                              offset: Offset(
                                2.0,
                                1.0,
                              ),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ]
                        .divide(SizedBox(width: 15.0))
                        .addToStart(SizedBox(width: 15.0)),
                  ),
                ),
              ].divide(SizedBox(height: 15.0)),
            ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation6']!),
          ].divide(SizedBox(height: 15.0)),
        ),
      ),
    );
  }
}
