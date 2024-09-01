import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/product_component/product_component_widget.dart';
import '/components/skeleton_ad_component_widget.dart';
import '/components/skeleton_grid_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      Function() _navigate = () {};
      _model.apiResultrff = await APIJagShopGroup.checkUserCall.call(
        accessToken: FFAppState().accessToken,
      );

      if ((_model.apiResultrff?.statusCode ?? 200) == 401) {
        FFAppState().deletePhone();
        FFAppState().phone = '';

        FFAppState().deleteUserConnecte();
        FFAppState().userConnecte = null;

        FFAppState().deleteAccessToken();
        FFAppState().accessToken = '';

        FFAppState().deleteCarts();
        FFAppState().carts = [];

        FFAppState().deleteFavorites();
        FFAppState().favorites = [];

        FFAppState().deleteCart();
        FFAppState().cart = 0;

        FFAppState().deleteAdresse();
        FFAppState().adresse = null;

        FFAppState().deleteMode();
        FFAppState().mode = null;

        FFAppState().update(() {});
        await actions.customToast(
          'Session expirée ou invalide.',
        );
        GoRouter.of(context).prepareAuthEvent();
        await authManager.signOut();
        GoRouter.of(context).clearRedirectLocation();

        _navigate = () => context.goNamedAuth('Onboarding', context.mounted);
      } else {
        if (APIJagShopGroup.checkUserCall.user(
              (_model.apiResultrff?.jsonBody ?? ''),
            ) !=
            null) {
          FFAppState().userConnecte = APIJagShopGroup.checkUserCall.user(
            (_model.apiResultrff?.jsonBody ?? ''),
          );
          FFAppState().carts = APIJagShopGroup.checkUserCall
              .carts(
                (_model.apiResultrff?.jsonBody ?? ''),
              )!
              .toList()
              .cast<dynamic>();
          FFAppState().favorites = APIJagShopGroup.checkUserCall
              .favorites(
                (_model.apiResultrff?.jsonBody ?? ''),
              )!
              .toList()
              .cast<dynamic>();
          FFAppState().cart = APIJagShopGroup.checkUserCall.countCart(
            (_model.apiResultrff?.jsonBody ?? ''),
          )!;
          FFAppState().update(() {});
        }
      }

      _navigate();
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).backgroundColor,
        drawer: Drawer(
          elevation: 16.0,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 120.0,
                      height: 120.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        getJsonField(
                          FFAppState().userConnecte,
                          r'''$.image_url''',
                        ).toString(),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      getJsonField(
                        FFAppState().userConnecte,
                        r'''$.name''',
                      ).toString(),
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'DM Sans',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ]
                      .divide(SizedBox(height: 8.0))
                      .addToStart(SizedBox(height: 30.0)),
                ),
              ),
              ListView(
                padding: EdgeInsets.fromLTRB(
                  0,
                  15.0,
                  0,
                  0,
                ),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.share_sharp,
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'nh5emetf' /* Partager */,
                      ),
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'DM Sans',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    subtitle: Text(
                      FFLocalizations.of(context).getText(
                        'hj3ofbv1' /* Partagez l'application à vos a... */,
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'DM Sans',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                    dense: false,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.star_sharp,
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
                    title: Text(
                      FFLocalizations.of(context).getText(
                        '2cxy1oqp' /* Noter l'application */,
                      ),
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'DM Sans',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    subtitle: Text(
                      FFLocalizations.of(context).getText(
                        'glgaipvp' /* Dites ce que vous pensez de ce... */,
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'DM Sans',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                    dense: false,
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await launchUrl(Uri(
                        scheme: 'tel',
                        path: '+242067230101',
                      ));
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.mail_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                      title: Text(
                        FFLocalizations.of(context).getText(
                          '58u7hxlp' /* Contact */,
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'DM Sans',
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      subtitle: Text(
                        FFLocalizations.of(context).getText(
                          'lx4xssax' /* Nous contacter */,
                        ),
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'DM Sans',
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w300,
                                ),
                      ),
                      dense: false,
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      FFAppState().deletePhone();
                      FFAppState().phone = '';

                      FFAppState().deleteUserConnecte();
                      FFAppState().userConnecte = null;

                      FFAppState().deleteAccessToken();
                      FFAppState().accessToken = '';

                      FFAppState().update(() {});
                      GoRouter.of(context).prepareAuthEvent();
                      await authManager.signOut();
                      GoRouter.of(context).clearRedirectLocation();

                      context.goNamedAuth('Onboarding', context.mounted);
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.logout_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                      title: Text(
                        FFLocalizations.of(context).getText(
                          'yxgbi4pn' /* Se déconnecter */,
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'DM Sans',
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      subtitle: Text(
                        FFLocalizations.of(context).getText(
                          '4g9lvli3' /* Quitter la session */,
                        ),
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'DM Sans',
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w300,
                                ),
                      ),
                      dense: false,
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('AproposPage');
                    },
                    child: ListTile(
                      leading: FaIcon(
                        FontAwesomeIcons.question,
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                      title: Text(
                        FFLocalizations.of(context).getText(
                          'i43hr7zz' /* A propos */,
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'DM Sans',
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      dense: false,
                    ),
                  ),
                ].divide(SizedBox(height: 12.0)),
              ),
            ],
          ),
        ),
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              pinned: false,
              floating: false,
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              leading: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  scaffoldKey.currentState!.openDrawer();
                },
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 32.0,
                ),
              ),
              title: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: FFLocalizations.of(context).getText(
                            '26z39fhi' /* JAG  */,
                          ),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: FFLocalizations.of(context).getText(
                            'fy7yxyt5' /* Shop */,
                          ),
                          style: TextStyle(),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'DM Sans',
                            color: FlutterFlowTheme.of(context).tertiary,
                            fontSize: 22.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ],
              ),
              actions: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('FavoritePage');
                      },
                      child: Icon(
                        Icons.favorite_border_rounded,
                        color: FlutterFlowTheme.of(context).tertiary,
                        size: 32.0,
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('Cart');
                      },
                      child: badges.Badge(
                        badgeContent: Text(
                          FFAppState().cart.toString(),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'DM Sans',
                                    color: Colors.white,
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        showBadge: FFAppState().cart.toString() != '0',
                        shape: badges.BadgeShape.circle,
                        badgeColor: FlutterFlowTheme.of(context).secondary,
                        elevation: 4.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        position: badges.BadgePosition.topStart(),
                        animationType: badges.BadgeAnimationType.scale,
                        toAnimate: true,
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          color: FlutterFlowTheme.of(context).tertiary,
                          size: 32.0,
                        ),
                      ),
                    ),
                  ].divide(SizedBox(width: 12.0)),
                ),
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(50.0),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('searchPage');
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).backgroundColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                '5qmprxu9' /* Rechercher */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'DM Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                            Icon(
                              Icons.search_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              centerTitle: true,
              elevation: 2.0,
            )
          ],
          body: Builder(
            builder: (context) {
              return SafeArea(
                top: false,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: FutureBuilder<ApiCallResponse>(
                              future: FFAppState().ads(
                                requestFn: () =>
                                    APIJagShopGroup.getADSCall.call(
                                  accessToken: FFAppState().accessToken,
                                ),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Container(
                                    width: double.infinity,
                                    height: 180.0,
                                    child: SkeletonAdComponentWidget(),
                                  );
                                }
                                final carouselGetADSResponse = snapshot.data!;

                                return Builder(
                                  builder: (context) {
                                    final adVar = APIJagShopGroup.getADSCall
                                            .data(
                                              carouselGetADSResponse.jsonBody,
                                            )
                                            ?.toList() ??
                                        [];

                                    return Container(
                                      width: double.infinity,
                                      height: 180.0,
                                      child: CarouselSlider.builder(
                                        itemCount: adVar.length,
                                        itemBuilder: (context, adVarIndex, _) {
                                          final adVarItem = adVar[adVarIndex];
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await launchURL(getJsonField(
                                                adVarItem,
                                                r'''$.link_url''',
                                              ).toString());
                                            },
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                getJsonField(
                                                  adVarItem,
                                                  r'''$.image_url''',
                                                ).toString(),
                                                width: 300.0,
                                                height: 200.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          );
                                        },
                                        carouselController:
                                            _model.carouselController ??=
                                                CarouselController(),
                                        options: CarouselOptions(
                                          initialPage:
                                              max(0, min(1, adVar.length - 1)),
                                          viewportFraction: 0.9,
                                          disableCenter: true,
                                          enlargeCenterPage: true,
                                          enlargeFactor: 0.2,
                                          enableInfiniteScroll: true,
                                          scrollDirection: Axis.horizontal,
                                          autoPlay: true,
                                          autoPlayAnimationDuration:
                                              Duration(milliseconds: 800),
                                          autoPlayInterval: Duration(
                                              milliseconds: (800 + 4000)),
                                          autoPlayCurve: Curves.linear,
                                          pauseAutoPlayInFiniteScroll: true,
                                          onPageChanged: (index, _) => _model
                                              .carouselCurrentIndex = index,
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 20.0),
                            child: FutureBuilder<ApiCallResponse>(
                              future: _model.categories(
                                requestFn: () => APIJagShopGroup
                                    .getProductsCategoriesCall
                                    .call(
                                  accessToken: FFAppState().accessToken,
                                ),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return SkeletonGridComponentWidget();
                                }
                                final columnGetProductsCategoriesResponse =
                                    snapshot.data!;

                                return Builder(
                                  builder: (context) {
                                    final categoryVar = APIJagShopGroup
                                            .getProductsCategoriesCall
                                            .data(
                                              columnGetProductsCategoriesResponse
                                                  .jsonBody,
                                            )
                                            ?.toList() ??
                                        [];

                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children:
                                          List.generate(categoryVar.length,
                                              (categoryVarIndex) {
                                        final categoryVarItem =
                                            categoryVar[categoryVarIndex];
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 10.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    getJsonField(
                                                      categoryVarItem,
                                                      r'''$.name''',
                                                    )
                                                        .toString()
                                                        .maybeHandleOverflow(
                                                          maxChars: 25,
                                                          replacement: '…',
                                                        ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'DM Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed(
                                                        'CategoryPage',
                                                        queryParameters: {
                                                          'category':
                                                              serializeParam(
                                                            categoryVarItem,
                                                            ParamType.JSON,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(24.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .arrow_forward_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 8.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Builder(
                                              builder: (context) {
                                                final productVar = getJsonField(
                                                  categoryVarItem,
                                                  r'''$.products''',
                                                ).toList();

                                                return SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: List.generate(
                                                            productVar.length,
                                                            (productVarIndex) {
                                                      final productVarItem =
                                                          productVar[
                                                              productVarIndex];
                                                      return InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            'DetailsPage',
                                                            queryParameters: {
                                                              'product':
                                                                  serializeParam(
                                                                productVarItem,
                                                                ParamType.JSON,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child:
                                                            ProductComponentWidget(
                                                          key: Key(
                                                              'Keyyim_${productVarIndex}_of_${productVar.length}'),
                                                          productJson:
                                                              productVarItem,
                                                        ),
                                                      );
                                                    })
                                                        .divide(SizedBox(
                                                            width: 15.0))
                                                        .around(SizedBox(
                                                            width: 15.0)),
                                                  ),
                                                );
                                              },
                                            ),
                                          ].divide(SizedBox(height: 10.0)),
                                        );
                                      }).divide(SizedBox(height: 20.0)),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ].divide(SizedBox(height: 12.0)),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
