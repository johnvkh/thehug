// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../ComponentsUtils/DialogPopupWidget.dart';
import '../../Model/ProductModel.dart';
import '../../Utility/Constants.dart';
import '../../Utility/WidgetUtility.dart';

class ThortMenu extends StatefulWidget {
  const ThortMenu({super.key});

  @override
  State<ThortMenu> createState() => _ThortMenuState();
}

class _ThortMenuState extends State<ThortMenu> {
  final List<ProductModel> _listProduct = [
    ProductModel(
      productId: "1",
      productName: "ທອດຄາງເປັດ",
      price: "59.000 ກີບ",
      productType: thortMenuType,
      image: "assets/images/ThortMenu/ThortKhangPet.jpg",
    ),
    ProductModel(
      productId: "2",
      productName: "ທອດຈີ່ນາຍ",
      price: "35.000 ກີບ",
      productType: thortMenuType,
      image: "assets/images/ThortMenu/thortChiNai.jpg",
    ),
    ProductModel(
      productId: "3",
      productName: "ທອດຈີ່ຫລໍ່",
      price: "59.000 ກີບ",
      productType: thortMenuType,
      image: "assets/images/ThortMenu/ThortChiLor.jpg",
    ),
    ProductModel(
      productId: "4",
      productName: "ທອດດູກຂ້າງ",
      price: "55.000 ກີບ",
      productType: thortMenuType,
      image: "assets/images/ThortMenu/thortkaloukkhang.jpg",
    ),
    ProductModel(
      productId: "5",
      productName: "ທອດຖົ່ວດິນ",
      price: "55.000 ກີບ",
      productType: thortMenuType,
      image: "assets/images/ThortMenu/thortthuadin.jpg",
    ),
    ProductModel(
      productId: "6",
      productName: "ທອດປີກໄກ່ນະລົກແຕກ",
      price: "69.000 ກີບ",
      productType: thortMenuType,
      image: "assets/images/ThortMenu/thortpikkainaloktek.jpg",
    ),
    ProductModel(
      productId: "7",
      productName: "ທອດພື້ນທ້ອງ ປາແຊວມ້ອນ",
      price: "85.000 ກີບ",
      productType: thortMenuType,
      image: "assets/images/ThortMenu/thort_thongphun_samon.jpg",
    ),
    ProductModel(
      productId: "8",
      productName: "ທອດມັນຝຣັ່ງ",
      price: "55.000 ກີບ",
      productType: thortMenuType,
      image: "assets/images/ThortMenu/thort_munfrance.jpg",
    ),
    ProductModel(
      productId: "9",
      productName: "ທອດໄຂ່ຈຽວຫມູສັບ",
      price: "45.000 ກີບ",
      productType: thortMenuType,
      image: "assets/images/ThortMenu/thort_khaijieumusap.jpg",
    ),
    ProductModel(
      productId: "10",
      productName: "ທອດເຫືອກ",
      price: "59.000 ກີບ",
      productType: thortMenuType,
      image: "assets/images/ThortMenu/thort_nguak.jpg",
    ),
    // ProductModel(
    //   productId: "11",
    //   productName: "ຫມູແດດດຽວ",
    //   price: "35.000 ກີບ",
    //   productType: thortMenuType,
    //   image: "assets/images/ThortMenu/Mudetdieu.jpg",
    // ),
    ProductModel(
      productId: "12",
      productName: "ທອດເມັດຫມາກມ່ວງ ຫິມະພານ",
      price: "55.000 ກີບ",
      productType: thortMenuType,
      image: "assets/images/ThortMenu/thort_makmounghinmapan.jpg",
    ),
    ProductModel(
      productId: "13",
      productName: "ກຸ້ງຊຸບແປ້ງທອດ",
      price: "89.000 ກີບ",
      productType: thortMenuType,
      image: "assets/images/ThortMenu/koung_soup_peng_thort.jpg",
    ),
    ProductModel(
      productId: "14",
      productName: "ທອດລູກຊີນຊົງເຄື່ອງ",
      price: "55.000 ກີບ",
      productType: thortMenuType,
      image: "assets/images/ThortMenu/thort_louk_sin.jpg",
    ),
    ProductModel(
      productId: "15",
      productName: "ທອດຫນັງ",
      price: "59.000 ກີບ",
      productType: thortMenuType,
      image: "assets/images/ThortMenu/thortnang.jpg",
    ),
    ProductModel(
      productId: "16",
      productName: "ທອດເອັນໄກ່",
      price: "59.000 ກີບ",
      productType: thortMenuType,
      image: "assets/images/ThortMenu/thortAnkai.jpg",
    ),
    ProductModel(
      productId: "15",
      productName: "ທອດເອັນເຫລືອງ",
      price: "59.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/ThortMenu/thortAnluong.jpg",
    ),
  ];


  bool loadProcessBar = true;
  List<ProductModel> listProduct = [];

  @override
  void initState() {
    // TODO: implement initState
    loadInfo();
    super.initState();
  }

  Future loadInfo() async {
    setState(() {
      listProduct = _listProduct;
      loadProcessBar = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return loadProcessBar == true
        ? Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            "ເມນູທອດ",
            Colors.black87,
            20,
            FontWeight.bold,
            TextAlign.start,
          ),
          const SizedBox(height: 5),
          ResponsiveStaggeredGridList(
            desiredItemWidth: size.width * 0.235,
            children: List.generate(
              listProduct.length,
                  (index) {
                ProductModel productModel = listProduct[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    width: size.width * 0.235,
                    height: boxHeight,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(240, 243, 245, 1),
                      border: Border.all(
                        color: primaryColor,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset(
                              productModel.image.toString(),
                              fit: BoxFit.cover,
                              width: size.width * 0.235,
                              height: boxImage,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2,vertical: 1),
                          child: TextWidget(
                            productModel.productName.toString(),
                            Colors.black,
                            12,
                            FontWeight.normal,
                            TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2,vertical: 1),
                          child: TextWidget(
                            productModel.price.toString(),
                            Colors.redAccent,
                            12,
                            FontWeight.normal,
                            TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    )
        : LoadDialog(context);
  }
}
