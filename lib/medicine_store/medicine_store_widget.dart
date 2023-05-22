import '/components/product_widget.dart';
import '/components/search_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'medicine_store_model.dart';
export 'medicine_store_model.dart';

class MedicineStoreWidget extends StatefulWidget {
  const MedicineStoreWidget({Key? key}) : super(key: key);

  @override
  _MedicineStoreWidgetState createState() => _MedicineStoreWidgetState();
}

class _MedicineStoreWidgetState extends State<MedicineStoreWidget>
    with TickerProviderStateMixin {
  late MedicineStoreModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  int get pageViewCurrentIndex => _model.pageViewController != null &&
          _model.pageViewController!.hasClients &&
          _model.pageViewController!.page != null
      ? _model.pageViewController!.page!.round()
      : 0;

  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: Offset(0.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 600.ms,
          begin: Offset(0.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'productOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'productOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: Offset(0.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'productOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 600.ms,
          begin: Offset(0.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'productOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 600.ms,
          begin: Offset(0.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'productOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 800.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 800.ms,
          duration: 600.ms,
          begin: Offset(0.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'productOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1000.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1000.ms,
          duration: 600.ms,
          begin: Offset(0.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MedicineStoreModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 48.0,
                        height: 48.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).quinary,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pop();
                          },
                          child: Icon(
                            Icons.arrow_left_rounded,
                            color: FlutterFlowTheme.of(context).quaternary,
                            size: 28.0,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 12.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      barrierColor: Color(0x00000000),
                                      enableDrag: false,
                                      context: context,
                                      builder: (bottomSheetContext) {
                                        return GestureDetector(
                                          onTap: () => FocusScope.of(context)
                                              .requestFocus(_unfocusNode),
                                          child: Padding(
                                            padding: MediaQuery.of(
                                                    bottomSheetContext)
                                                .viewInsets,
                                            child: SearchWidget(),
                                          ),
                                        );
                                      },
                                    ).then((value) => setState(() {}));
                                  },
                                  child: Container(
                                    width: 48.0,
                                    height: 48.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).quinary,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 16.0, 16.0, 16.0),
                                          child: Image.asset(
                                            'assets/images/search.png',
                                            width: 24.0,
                                            height: 24.0,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 48.0,
                                height: 48.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).quinary,
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 16.0, 16.0),
                                      child: Image.asset(
                                        'assets/images/Filter.png',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 0.0, 17.0),
                            child: Text(
                              'Buy Medicine',
                              style: FlutterFlowTheme.of(context).displaySmall,
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation']!),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 160.0,
                              child: Stack(
                                children: [
                                  PageView(
                                    controller: _model.pageViewController ??=
                                        PageController(initialPage: 0),
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        child: Image.asset(
                                          'assets/images/Frame_31.png',
                                          width: 100.0,
                                          height: 100.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        child: Image.asset(
                                          'assets/images/Frame_32.png',
                                          width: 100.0,
                                          height: 100.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        child: Image.asset(
                                          'assets/images/Frame_31.png',
                                          width: 100.0,
                                          height: 100.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 16.0, 16.0),
                                      child: smooth_page_indicator
                                          .SmoothPageIndicator(
                                        controller:
                                            _model.pageViewController ??=
                                                PageController(initialPage: 0),
                                        count: 3,
                                        axisDirection: Axis.horizontal,
                                        onDotClicked: (i) async {
                                          await _model.pageViewController!
                                              .animateToPage(
                                            i,
                                            duration:
                                                Duration(milliseconds: 500),
                                            curve: Curves.ease,
                                          );
                                        },
                                        effect: smooth_page_indicator
                                            .ExpandingDotsEffect(
                                          expansionFactor: 2.0,
                                          spacing: 8.0,
                                          radius: 16.0,
                                          dotWidth: 6.0,
                                          dotHeight: 3.0,
                                          dotColor: Color(0xFF9E9E9E),
                                          activeDotColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          paintStyle: PaintingStyle.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation']!),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 25.0),
                            child: GridView(
                              padding: EdgeInsets.zero,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                childAspectRatio: 0.7,
                              ),
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('ProductDetails');
                                  },
                                  child: wrapWithModel(
                                    model: _model.productModel1,
                                    updateCallback: () => setState(() {}),
                                    child: ProductWidget(
                                      isFavourite: true,
                                      productImage:
                                          'https://i.postimg.cc/0jJXWzrk/wkmxonjuot7skrmdoxxx.webp',
                                      productTitle: 'Protinex Health Drink',
                                      productCategory: 'NUTRIENTS',
                                      productPrice: '200',
                                      regularPrice: '249',
                                      productRating: 3,
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'productOnPageLoadAnimation1']!),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'ProductDetailswithParam',
                                      queryParams: {
                                        'productImage': serializeParam(
                                          'https://i.postimg.cc/Dzx0tJGT/p5bkn6luonsx4cb442k5.png',
                                          ParamType.String,
                                        ),
                                        'productName': serializeParam(
                                          'Crocin Advance Tablet',
                                          ParamType.String,
                                        ),
                                        'productCategory': serializeParam(
                                          'MEDICINE',
                                          ParamType.String,
                                        ),
                                        'productPrice': serializeParam(
                                          '1',
                                          ParamType.String,
                                        ),
                                        'productRegularPrice': serializeParam(
                                          '2',
                                          ParamType.String,
                                        ),
                                        'productDescription': serializeParam(
                                          'Amoxicillin, a penicillin antibiotic, topped the list as the most common prescription filled by SingleCard card users in 2020. This powerhouse drug is used to treat a host of common bacterial infections like pneumonia, tonsillitis, and ear, nose, throat, skin, or urinary tract infections.',
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: wrapWithModel(
                                    model: _model.productModel2,
                                    updateCallback: () => setState(() {}),
                                    child: ProductWidget(
                                      isFavourite: true,
                                      productImage:
                                          'https://i.postimg.cc/Dzx0tJGT/p5bkn6luonsx4cb442k5.png',
                                      productTitle: 'Crocin Advance Tablet',
                                      productCategory: 'MEDICINE',
                                      productPrice: '1',
                                      regularPrice: '2',
                                      productRating: 5,
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'productOnPageLoadAnimation2']!),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'ProductDetailswithParam',
                                      queryParams: {
                                        'productImage': serializeParam(
                                          'https://i.postimg.cc/vZBBF7rZ/dpsh8z3rldqlg33kavbh.png',
                                          ParamType.String,
                                        ),
                                        'productName': serializeParam(
                                          'Calpol 500mg Tablet',
                                          ParamType.String,
                                        ),
                                        'productCategory': serializeParam(
                                          'MEDICINE',
                                          ParamType.String,
                                        ),
                                        'productPrice': serializeParam(
                                          '1',
                                          ParamType.String,
                                        ),
                                        'productRegularPrice': serializeParam(
                                          '2',
                                          ParamType.String,
                                        ),
                                        'productDescription': serializeParam(
                                          'Amoxicillin, a penicillin antibiotic, topped the list as the most common prescription filled by SingleCard card users in 2020. This powerhouse drug is used to treat a host of common bacterial infections like pneumonia, tonsillitis, and ear, nose, throat, skin, or urinary tract infections.',
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: wrapWithModel(
                                    model: _model.productModel3,
                                    updateCallback: () => setState(() {}),
                                    child: ProductWidget(
                                      isFavourite: true,
                                      productImage:
                                          'https://i.postimg.cc/vZBBF7rZ/dpsh8z3rldqlg33kavbh.png',
                                      productTitle: 'Calpol 500mg Tablet',
                                      productCategory: 'MEDICINE',
                                      productPrice: '1',
                                      regularPrice: '3',
                                      productRating: 4,
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'productOnPageLoadAnimation3']!),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'ProductDetailswithParam',
                                      queryParams: {
                                        'productImage': serializeParam(
                                          'https://i.postimg.cc/qRQSTKXp/myklulf7pehqk5hiyziz.png',
                                          ParamType.String,
                                        ),
                                        'productName': serializeParam(
                                          'daflon 500 MG Tablet',
                                          ParamType.String,
                                        ),
                                        'productCategory': serializeParam(
                                          'MEDICINE',
                                          ParamType.String,
                                        ),
                                        'productPrice': serializeParam(
                                          '1',
                                          ParamType.String,
                                        ),
                                        'productRegularPrice': serializeParam(
                                          '2',
                                          ParamType.String,
                                        ),
                                        'productDescription': serializeParam(
                                          'Amoxicillin, a penicillin antibiotic, topped the list as the most common prescription filled by SingleCard card users in 2020. This powerhouse drug is used to treat a host of common bacterial infections like pneumonia, tonsillitis, and ear, nose, throat, skin, or urinary tract infections.',
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: wrapWithModel(
                                    model: _model.productModel4,
                                    updateCallback: () => setState(() {}),
                                    child: ProductWidget(
                                      isFavourite: true,
                                      productImage:
                                          'https://i.postimg.cc/qRQSTKXp/myklulf7pehqk5hiyziz.png',
                                      productTitle: 'Daflon 500 MG Tablet',
                                      productCategory: 'MEDICINE',
                                      productPrice: '3',
                                      regularPrice: '5',
                                      productRating: 5,
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'productOnPageLoadAnimation4']!),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'ProductDetailswithParam',
                                      queryParams: {
                                        'productImage': serializeParam(
                                          'https://i.postimg.cc/0yptvmPh/kyjqhw8oznfhfm4t1bts.png',
                                          ParamType.String,
                                        ),
                                        'productName': serializeParam(
                                          'Vita D 50000 UI Tablet',
                                          ParamType.String,
                                        ),
                                        'productCategory': serializeParam(
                                          'MEDICINE',
                                          ParamType.String,
                                        ),
                                        'productPrice': serializeParam(
                                          '1',
                                          ParamType.String,
                                        ),
                                        'productRegularPrice': serializeParam(
                                          '2',
                                          ParamType.String,
                                        ),
                                        'productDescription': serializeParam(
                                          'Amoxicillin, a penicillin antibiotic, topped the list as the most common prescription filled by SingleCard card users in 2020. This powerhouse drug is used to treat a host of common bacterial infections like pneumonia, tonsillitis, and ear, nose, throat, skin, or urinary tract infections.',
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: wrapWithModel(
                                    model: _model.productModel5,
                                    updateCallback: () => setState(() {}),
                                    child: ProductWidget(
                                      isFavourite: true,
                                      productImage:
                                          'https://i.postimg.cc/0yptvmPh/kyjqhw8oznfhfm4t1bts.png',
                                      productTitle: 'Vita-D 50000 IU Tablet',
                                      productCategory: 'MULTIVITAMIN',
                                      productPrice: '200',
                                      regularPrice: '249',
                                      productRating: 5,
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'productOnPageLoadAnimation5']!),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'ProductDetailswithParam',
                                      queryParams: {
                                        'productImage': serializeParam(
                                          'https://i.postimg.cc/3r14sxs9/oev9nhjcdp4smsnwbmaj.png',
                                          ParamType.String,
                                        ),
                                        'productName': serializeParam(
                                          'Himalayan Organics',
                                          ParamType.String,
                                        ),
                                        'productCategory': serializeParam(
                                          'MEDICINE',
                                          ParamType.String,
                                        ),
                                        'productPrice': serializeParam(
                                          '1',
                                          ParamType.String,
                                        ),
                                        'productRegularPrice': serializeParam(
                                          '2',
                                          ParamType.String,
                                        ),
                                        'productDescription': serializeParam(
                                          'Amoxicillin, a penicillin antibiotic, topped the list as the most common prescription filled by SingleCard card users in 2020. This powerhouse drug is used to treat a host of common bacterial infections like pneumonia, tonsillitis, and ear, nose, throat, skin, or urinary tract infections.',
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: wrapWithModel(
                                    model: _model.productModel6,
                                    updateCallback: () => setState(() {}),
                                    child: ProductWidget(
                                      isFavourite: true,
                                      productImage:
                                          'https://i.postimg.cc/3r14sxs9/oev9nhjcdp4smsnwbmaj.png',
                                      productTitle: 'Himalayan Organics',
                                      productCategory: 'NUTRIENTS',
                                      productPrice: '200',
                                      regularPrice: '249',
                                      productRating: 5,
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'productOnPageLoadAnimation6']!),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
