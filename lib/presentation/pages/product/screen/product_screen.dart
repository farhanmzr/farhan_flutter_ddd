import 'package:cached_network_image/cached_network_image.dart';
import 'package:farhan_flutter_ddd/application/product/bloc/product_bloc.dart';
import 'package:farhan_flutter_ddd/presentation/pages/product/screen/shimmer_item.dart';
import 'package:farhan_flutter_ddd/presentation/utils/custom_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductBloc, ProductState>(
      listener: (BuildContext context, ProductState state) {
        state.optionFailureOrSuccess.match(
          () => null,
          (a) => a.fold(
            (l) {
              l.map(
                noData: (_) {
                  CustomAlert.showAlert(
                      context: context,
                      bodyText: 'There no data',
                      onPressed: () {});
                },
                noInternet: (_) {
                  CustomAlert.showAlert(
                      context: context,
                      bodyText: 'Please check your internet connection',
                      onPressed: () {});
                },
                failed: (_) {
                  CustomAlert.showAlert(
                      context: context,
                      bodyText: 'Server Error,\nplease try again later',
                      onPressed: () {});
                },
              );
            },
            (r) => null,
          ),
        );
      },
      builder: (BuildContext context, ProductState state) {
        return Scaffold(
            body: Column(
              children: [
                Expanded(
                  child: state.optionFailureOrSuccess.match(
                    () => const ShimmerProductList(), 
                    (options) => options.fold(
                      (l) => const Center(
                            child: Text('No Data'),
                          ), 
                      (items) => Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14),
                                child: GridView.builder(
                                    // shrinkWrap: true,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            childAspectRatio: 0.6,
                                            mainAxisSpacing: 24,
                                            crossAxisSpacing: 10
                                            ),
                                    itemCount: state.item.length,
                                    itemBuilder: (BuildContext ctx, index) {
                                      var item = state.item[index];
                                      var image = item.images?[0] ?? '';
                                      print('Log Image: $image');
                                      return GestureDetector(
                                        onTap: () {
                                          
                                          print(
                                              'This product number: $index | id: ${item.ids}');
                                        },
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 10),
                                          child: Container(
                                              // alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        15),
                                                boxShadow: const <BoxShadow>[
                                                  BoxShadow(
                                                      color: Colors.grey,
                                                      offset: Offset(
                                                          0, 2),
                                                      blurRadius: 10.0)
                                                ],
                                              ),
                                              child: Column(
                                                children: [
                                                  Container(
                                                      decoration: const BoxDecoration(
                                                          color:
                                                              Colors.white,
                                                          borderRadius: BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      15),
                                                              topRight: Radius
                                                                  .circular(
                                                                      15))),
                                                      height: 200,
                                                      width: 200,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        child:  CachedNetworkImage(imageUrl: image, placeholder: (context, url) {
                                                          return Image.asset('assets/no_pictures.png');
                                                        },
                                                        errorWidget: (context, url, error) {
                                                          return Image.asset('assets/error_pictures.png');
                                                        },
                                                        ),
                                                      )),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets
                                                            .all(10),
                                                    child: Text(
                                                      item.title,
                                                      style: const TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight
                                                                  .bold),
                                                      maxLines: 2,
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                    ),
                                                  ),
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10),
                                                    alignment: Alignment
                                                        .centerLeft,
                                                    child: Container(
                                                      decoration:
                                                          BoxDecoration(
                                                        borderRadius:
                                                            const BorderRadius
                                                                .all(Radius
                                                                    .circular(
                                                                        8)),
                                                        color: Colors
                                                            .green.shade200,
                                                      ),
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                              vertical: 8,
                                                              horizontal:
                                                                  8),
                                                      child: Text(
                                                        '\$${item.price} USD',
                                                        style: const TextStyle(
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              )),
                                        ),
                                      );
                                    }),
                              ))),
                  ),
              ],
            ),
          ); 
      },
    );
  }

}