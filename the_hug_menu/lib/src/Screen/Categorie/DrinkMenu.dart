import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../Model/ProductModel.dart';
import '../../Utility/WidgetUtility.dart';

class DrinkMenu extends StatefulWidget {
  const DrinkMenu({super.key});

  @override
  State<DrinkMenu> createState() => _DrinkMenuState();
}

class _DrinkMenuState extends State<DrinkMenu> {
  List<ProductModel> listProduct = [
    ProductModel(
      productId: "1",
      productName: "ເບຍລາວແກວ",
      price: "25.000 ກີບ",
      productType: DrinkMenu,
      image: "",
    ),
    ProductModel(
      productId: "2",
      productName: "ນ້ຳດື່ມ",
      price: "10.000 ກີບ",
      productType: DrinkMenu,
      image: "",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        TextWidget(
          "ປະເພດເຄື່ອງດື່ມ",
          Colors.black87,
          20,
          FontWeight.bold,
          TextAlign.start,
        ),
        const SizedBox(height: 10),
        ResponsiveStaggeredGridList(
          desiredItemWidth: size.width * 0.18,
          children: List.generate(
            listProduct.length,
            (index) {
              ProductModel productModel = listProduct[index];
              return MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    // MaterialPageRoute route = MaterialPageRoute(
                    //   builder: (context) => ImageServicePage(
                    //     categorieName:
                    //         categorieModel.categorieNameLA.toString(),
                    //     router: "/FemaleService",
                    //   ),
                    // );
                    // Navigator.pushAndRemoveUntil(
                    //     context, route, (route) => false);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      width: size.width * 0.18,
                      height: size.height * 0.34,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(240, 243, 245, 1),
                        border: Border.all(
                          color: const Color.fromRGBO(44, 44, 44, 1),
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              productModel.urlImage.toString(),
                              fit: BoxFit.cover,
                              width: size.width * 0.18,
                              height: size.height * 0.25,
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextWidget(
                            _locale?.languageCode.toString() == "lo"
                                ? categorieModel.categorieNameLA.toString()
                                : categorieModel.categorieNameEN.toString(),
                            Colors.black,
                            14,
                            FontWeight.normal,
                            TextAlign.center,
                          ),
                          const SizedBox(height: 5),
                          TextWidget(
                            "${categorieModel.price} ${getTranslated(context, 'UNIT')!}",
                            Colors.black,
                            14,
                            FontWeight.normal,
                            TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
