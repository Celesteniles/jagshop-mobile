import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_card_model.dart';
export 'product_card_model.dart';

class ProductCardWidget extends StatefulWidget {
  const ProductCardWidget({
    super.key,
    required this.product,
  });

  final dynamic product;

  @override
  State<ProductCardWidget> createState() => _ProductCardWidgetState();
}

class _ProductCardWidgetState extends State<ProductCardWidget> {
  late ProductCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 400.0,
          maxHeight: 400.0,
        ),
        decoration: BoxDecoration(),
        child: Stack(
          alignment: AlignmentDirectional(1.0, -1.0),
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'DetailsPage',
                      queryParameters: {
                        'product': serializeParam(
                          widget!.product,
                          ParamType.JSON,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      getJsonField(
                        widget!.product,
                        r'''$.image''',
                      ).toString(),
                      width: MediaQuery.sizeOf(context).width * 0.48,
                      height: 135.0,
                      fit: BoxFit.cover,
                      cacheHeight: 120,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      getJsonField(
                        widget!.product,
                        r'''$.name''',
                      )?.toString(),
                      '-',
                    ).maybeHandleOverflow(
                      maxChars: 22,
                      replacement: '…',
                    ),
                    maxLines: 1,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'DM Sans',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                    child: Text(
                      formatNumber(
                        functions.toDouble(getJsonField(
                          widget!.product,
                          r'''$.sale_price''',
                        ).toString()),
                        formatType: FormatType.decimal,
                        decimalType: DecimalType.automatic,
                        currency: 'XAF ',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'DM Sans',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 2.0)),
            ),
            Align(
              alignment: AlignmentDirectional(1.0, -1.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Builder(
                    builder: (context) {
                      if (functions.inFavoritesList(
                              FFAppState().favorites.toList(),
                              widget!.product!) ==
                          false) {
                        return FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 24.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.favorite_border,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 24.0,
                          ),
                          showLoadingIndicator: true,
                          onPressed: () async {
                            var _shouldSetState = false;
                            _model.apiResultesy =
                                await APIJagShopGroup.addToFavoritesCall.call(
                              productId: getJsonField(
                                widget!.product,
                                r'''$.id''',
                              ),
                              accessToken: FFAppState().accessToken,
                            );

                            _shouldSetState = true;
                            if ((_model.apiResultesy?.succeeded ?? true)) {
                              ScaffoldMessenger.of(context).clearSnackBars();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    APIJagShopGroup.addToFavoritesCall.message(
                                      (_model.apiResultesy?.jsonBody ?? ''),
                                    )!,
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).success,
                                ),
                              );
                              FFAppState().addToFavorites(widget!.product!);
                              FFAppState().update(() {});
                              if (_shouldSetState) setState(() {});
                              return;
                            } else {
                              ScaffoldMessenger.of(context).clearSnackBars();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    valueOrDefault<String>(
                                      APIJagShopGroup.addToFavoritesCall
                                          .message(
                                        (_model.apiResultesy?.jsonBody ?? ''),
                                      ),
                                      'Quelque chose ne s\'est pas bien passée.',
                                    ),
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).error,
                                ),
                              );
                              if (_shouldSetState) setState(() {});
                              return;
                            }

                            if (_shouldSetState) setState(() {});
                          },
                        );
                      } else {
                        return FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 24.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.favorite_rounded,
                            color: FlutterFlowTheme.of(context).error,
                            size: 24.0,
                          ),
                          showLoadingIndicator: true,
                          onPressed: () async {
                            var _shouldSetState = false;
                            _model.apiResultesC = await APIJagShopGroup
                                .removeFromFavoritesCall
                                .call(
                              productId: getJsonField(
                                widget!.product,
                                r'''$.id''',
                              ),
                              accessToken: FFAppState().accessToken,
                            );

                            _shouldSetState = true;
                            if ((_model.apiResultesC?.succeeded ?? true)) {
                              ScaffoldMessenger.of(context).clearSnackBars();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    APIJagShopGroup.removeFromFavoritesCall
                                        .message(
                                      (_model.apiResultesC?.jsonBody ?? ''),
                                    )!,
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).success,
                                ),
                              );
                              FFAppState()
                                  .removeFromFavorites(widget!.product!);
                              FFAppState().update(() {});
                              if (_shouldSetState) setState(() {});
                              return;
                            } else {
                              ScaffoldMessenger.of(context).clearSnackBars();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    valueOrDefault<String>(
                                      APIJagShopGroup.removeFromFavoritesCall
                                          .message(
                                        (_model.apiResultesC?.jsonBody ?? ''),
                                      ),
                                      'Quelque chose ne s\'est pas bien passée.',
                                    ),
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).error,
                                ),
                              );
                              if (_shouldSetState) setState(() {});
                              return;
                            }

                            if (_shouldSetState) setState(() {});
                          },
                        );
                      }
                    },
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
