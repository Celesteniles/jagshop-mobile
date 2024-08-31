import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'skeleton_ad_component_model.dart';
export 'skeleton_ad_component_model.dart';

class SkeletonAdComponentWidget extends StatefulWidget {
  const SkeletonAdComponentWidget({super.key});

  @override
  State<SkeletonAdComponentWidget> createState() =>
      _SkeletonAdComponentWidgetState();
}

class _SkeletonAdComponentWidgetState extends State<SkeletonAdComponentWidget>
    with TickerProviderStateMixin {
  late SkeletonAdComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SkeletonAdComponentModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        height: 180.0,
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
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        height: 180.0,
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
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        height: 180.0,
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
            ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!),
          ].divide(SizedBox(height: 15.0)),
        ),
      ),
    );
  }
}
