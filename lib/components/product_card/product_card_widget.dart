import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
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

  final ProductsRecord? product;

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
                          ParamType.Document,
                        ),
                      }.withoutNulls,
                      extra: <String, dynamic>{
                        'product': widget!.product,
                      },
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      widget!.product!.images.first,
                      width: MediaQuery.sizeOf(context).width * 0.48,
                      height: 135.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget!.product?.name,
                      '-',
                    ).maybeHandleOverflow(
                      maxChars: 22,
                      replacement: '…',
                    ),
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
                        widget!.product!.price,
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
              ].divide(SizedBox(height: 5.0)),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.favorite_border_rounded,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 24.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
