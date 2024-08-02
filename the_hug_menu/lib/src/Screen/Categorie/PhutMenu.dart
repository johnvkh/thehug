import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../ComponentsUtils/DialogPopupWidget.dart';
import '../../Model/ProductModel.dart';
import '../../Utility/Constants.dart';
import '../../Utility/WidgetUtility.dart';

class PhutMenu extends StatefulWidget {
  const PhutMenu({super.key});

  @override
  State<PhutMenu> createState() => _PhutMenuState();
}

class _PhutMenuState extends State<PhutMenu> {
  final List<ProductModel> _listProduct = [
    ProductModel(
      productId: "1",
      productName: "ຜັດກະລ່ຳນ້ຳປາ",
      price: "39.000 ກີບ",
      productType: phatMenuType,
      image: "assets/images/PhutMenu/PhatKalumPi.jpg",
    ),
    ProductModel(
      productId: "2",
      productName: "ຜັດກະເພົາຫມູ",
      price: "55.000 ກີບ",
      productType: phatMenuType,
      image: "assets/images/PhutMenu/PhatKaPhaoMou.jpg",
    ),
    ProductModel(
      productId: "3",
      productName: "ຜັດກະເພົາກົບ",
      price: "69.000 ກີບ",
      productType: phatMenuType,
      image: "assets/images/PhutMenu/PhatKaPhaoKop.jpg",
    ),
    ProductModel(
      productId: "4",
      productName: "ຜັດກະເພົາທະເລ",
      price: "85.000 ກີບ",
      productType: phatMenuType,
      image: "assets/images/PhutMenu/PhatKaPhaoThaLe.jpg",
    ),
    ProductModel(
      productId: "5",
      productName: "ຜັດຜັກກາດນາຫມູກອບ",
      price: "55.000 ກີບ",
      productType: phatMenuType,
      image: "assets/images/PhutMenu/PhatPhucKatNa.jpg",
    ),
    ProductModel(
      productId: "6",
      productName: "ຜັດຂີງງົວ",
      price: "55.000 ກີບ",
      productType: phatMenuType,
      image: "assets/images/PhutMenu/PhatKingNgoa.jpg",
    ),
    ProductModel(
      productId: "7",
      productName: "ຜັດຂີງໄກ່",
      price: "45.000 ກີບ",
      productType: phatMenuType,
      image: "assets/images/PhutMenu/PhatKingKai.jpg",
    ),
    ProductModel(
      productId: "8",
      productName: "ຜັດຂີງຫມູ",
      price: "45.000 ກີບ",
      productType: phatMenuType,
      image: "assets/images/PhutMenu/PhatKingMu.jpg",
    ),
    ProductModel(
      productId: "9",
      productName: "ຜັດຂີ້ເມົາທະເລ",
      price: "69.000 ກີບ",
      productType: phatMenuType,
      image: "assets/images/PhutMenu/PhatKhiMaoThaLe.jpg",
    ),
    ProductModel(
      productId: "10",
      productName: "ຜັດຊີ້ນຫມູ",
      price: "55.000 ກີບ",
      productType: phatMenuType,
      image: "assets/images/PhutMenu/PhatSinMu.jpg",
    ),
    ProductModel(
      productId: "10",
      productName: "ຜັດທະເລລວມພິກເຜົາ",
      price: "90.000 ກີບ",
      productType: phatMenuType,
      image: "assets/images/PhutMenu/PhatThaLeLoumPikPhao.jpg",
    ),
    ProductModel(
      productId: "11",
      productName: "ຜັດຜັກບົ້ງໄຟແດງ",
      price: "45.000 ກີບ",
      productType: phatMenuType,
      image: "assets/images/PhutMenu/PhatPhukBongFaiDang.jpg",
    ),
    ProductModel(
      productId: "12",
      productName: "ຜັດຜັກລວມ",
      price: "55.000 ກີບ",
      productType: phatMenuType,
      image: "assets/images/PhutMenu/PhatPhucLoum.jpg",
    ),
    ProductModel(
      productId: "13",
      productName: "ຜັດຫອຍແມງຜູ່",
      price: "85.000 ກີບ",
      productType: phatMenuType,
      image: "assets/images/PhutMenu/PhatHoiMengPhou.jpg",
    ),
    ProductModel(
      productId: "14",
      productName: "ຜັດເຜັດກົບ",
      price: "69.000 ກີບ",
      productType: phatMenuType,
      image: "assets/images/PhutMenu/PhatPhetKop.jpg",
    ),

    ProductModel(
      productId: "15",
      productName: "ຜັດເຜັດງົວເຜົາ",
      price: "59.000 ກີບ",
      productType: phatMenuType,
      image: "assets/images/PhutMenu/PhatPhetNguaPhao.jpg",
    ),

    ProductModel(
      productId: "16",
      productName: "ຜັດເຜັດເປັດ",
      price: "45.000 ກີບ",
      productType: phatMenuType,
      image: "assets/images/PhutMenu/PhatPhetPet.jpg",
    ),

    ProductModel(
      productId: "17",
      productName: "ຜັດເສືອຮ້ອງໄຫ້",
      price: "65.000 ກີບ",
      productType: phatMenuType,
      image: "assets/images/PhutMenu/PhatSuaHongHai.jpg",
    ),

    ProductModel(
      productId: "17",
      productName: "ຜັດເຫັດລວມ",
      price: "55.000 ກີບ",
      productType: phatMenuType,
      image: "assets/images/PhutMenu/PhatHetLum.jpg",
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
            "ເມນູຜັດ",
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
