import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import '../../ComponentsUtils/DialogPopupWidget.dart';
import '../../Model/ProductModel.dart';
import '../../Utility/Constants.dart';
import '../../Utility/WidgetUtility.dart';

class DrinkMenu extends StatefulWidget {
  const DrinkMenu({super.key});

  @override
  State<DrinkMenu> createState() => _DrinkMenuState();
}

class _DrinkMenuState extends State<DrinkMenu> {
  final List<ProductModel> _listProduct = [
    ProductModel(
      productId: "1",
      productName: "ເບຍລາວແກວ",
      price: "25.000 ກີບ",
      productType: drinkMenuType,
      image: "assets/images/Drink/beerlao.png",
    ),
    ProductModel(
      productId: "2",
      productName: "ນ້ຳດື່ມ",
      price: "10.000 ກີບ",
      productType: drinkMenuType,
      image: "assets/images/Drink/water.PNG",
    ),
    ProductModel(
      productId: "3",
      productName: "ເບຍລາວຂຽວ",
      price: "25.000 ກີບ",
      productType: drinkMenuType,
      image: "assets/images/Drink/BeerLaoGreen.png",
    ),
    ProductModel(
      productId: "4",
      productName: "ເບຍຄາສເບິດ",
      price: "36.000 ກີບ",
      productType: drinkMenuType,
      image: "assets/images/drink/Carlsberg.jpg",
    ),
    ProductModel(
      productId: "5",
      productName: "ໄຮເນເກັນ",
      price: "36.000 ກີບ",
      productType: drinkMenuType,
      image: "assets/images/drink/heineken_bottle.jpg",
    ),
    ProductModel(
      productId: "6",
      productName: "ສະຕິງ",
      price: "18.000 ກີບ",
      productType: drinkMenuType,
      image: "assets/images/drink/String.PNG",
    ),
    ProductModel(
      productId: "7",
      productName: "ສະໄປ",
      price: "36.000 ກີບ",
      productType: drinkMenuType,
      image: "assets/images/drink/Spy.PNG",
    ),
    ProductModel(
      productId: "8",
      productName: "ເບຍໄທເກີ",
      price: "36.000 ກີບ",
      productType: drinkMenuType,
      image: "assets/images/drink/Tiger.PNG",
    ),
    ProductModel(
      productId: "9",
      productName: "ຊຳເມີບີແອັບເປິນ",
      price: "28.000 ກີບ",
      productType: drinkMenuType,
      image: "assets/images/drink/Somersby_mango.jpg",
    ),
    ProductModel(
      productId: "10",
      productName: "ຊຳເມີບີແຕ່ງໂມ",
      price: "28.000 ກີບ",
      productType: drinkMenuType,
      image: "assets/images/drink/SomersbyMelon.PNG",
    ),
    ProductModel(
      productId: "11",
      productName: "ຊຳເມີບີແຕ່ງໂມ",
      price: "28.000 ກີບ",
      productType: drinkMenuType,
      image: "assets/images/drink/Somersby_mango.jpg",
    ),
    ProductModel(
      productId: "12",
      productName: "ໂອອີຊິ",
      price: "20.000 ກີບ",
      productType: drinkMenuType,
      image: "assets/images/drink/Oishi.png",
    ),
    ProductModel(
      productId: "13",
      productName: "ໂອອີຊິ",
      price: "20.000 ກີບ",
      productType: drinkMenuType,
      image: "assets/images/drink/Oishi.png",
    ),
    ProductModel(
      productId: "14",
      productName: "7up",
      price: "18.000 ກີບ",
      productType: drinkMenuType,
      image: "assets/images/drink/7Up.jpg",
    ),
    ProductModel(
      productId: "15",
      productName: "ນ້ຳຂຽວ",
      price: "18.000 ກີບ",
      productType: drinkMenuType,
      image: "assets/images/drink/Milinda_green.PNG",
    ),
    ProductModel(
      productId: "16",
      productName: "ນ້ຳແດງ",
      price: "18.000 ກີບ",
      productType: drinkMenuType,
      image: "assets/images/drink/Milinda_red.PNG",
    ),
    ProductModel(
      productId: "17",
      productName: "ນ້ຳສົ້ມ",
      price: "18.000 ກີບ",
      productType: drinkMenuType,
      image: "assets/images/drink/mirinda_orange.jpg",
    ),
  ];
  bool loadProcessBar = true;
  List<ProductModel> listProduct=[];
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
                  "ປະເພດເຄື່ອງດື່ມ",
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
                          height: size.height * 0.15,
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
                                    height: size.height * 0.09,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: TextWidget(
                                  productModel.productName.toString(),
                                  Colors.black,
                                  12,
                                  FontWeight.normal,
                                  TextAlign.start,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
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
