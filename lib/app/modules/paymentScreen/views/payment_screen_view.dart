import 'package:flutter/material.dart';
import 'package:gardeniapp/app/core/utils/size_utils.dart';

import 'package:get/get.dart';

import '../../../theme/app_decoration.dart';
import '../../../theme/custom_button_style.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../cartScreen/controllers/cart_screen_controller.dart';
import '../controllers/payment_screen_controller.dart';

class PaymentScreenView extends GetView<PaymentScreenController> {
  PaymentScreenView({Key? key}) : super(key: key);
  final PaymentScreenController paymentController =
      Get.put(PaymentScreenController());
  final CartScreenController cartController = Get.find<CartScreenController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Screen'),
        centerTitle: true,
      ),
      body: Center(
          child: Obx(
        () => Container(
          // height: MediaQuery.of(context).size.height * 0.30,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    paymentController.isCodSelected.value = true;
                    paymentController.isTunaiSelected.value = false;
                    // Get.back();
                  },
                  child: Container(
                    //
                    padding: const EdgeInsets.all(10),
                    height: 60,
                    decoration: BoxDecoration(
                      // color: Colors.orange,
                      border: Border.all(
                        width: 1.5,
                        color: paymentController.isCodSelected.value
                            ? appTheme.red300
                            : Colors.grey,
                      ),

                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          10,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          // ini container dot
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: paymentController.isCodSelected.value
                                      ? appTheme.red300
                                      : Colors.grey),
                              color: paymentController.isCodSelected.value
                                  ? appTheme.red300
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.payment,
                          size: 24.0,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'COD',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    paymentController.isCodSelected.value = false;
                    paymentController.isTunaiSelected.value = true;
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 60,
                    decoration: BoxDecoration(
                      // color: Colors.orange,
                      border: Border.all(
                        width: 1.5,
                        color: paymentController.isTunaiSelected.value
                            ? appTheme.red300
                            : Colors.grey,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          10,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: paymentController.isTunaiSelected.value
                                    ? appTheme.red300
                                    : Colors.grey,
                              ),
                              color: paymentController.isTunaiSelected.value
                                  ? appTheme.red300
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.developer_board,
                          size: 24.0,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Tunai',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 107.h,
                    right: 107.h,
                    bottom: 22.v,
                  ),
                  decoration: AppDecoration.fillGray20001.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderBL20,
                  ),
                  child: CustomElevatedButton(
                    height: 50.v,
                    text: "Order Now",
                    buttonStyle: CustomButtonStyles.fillRedTL10,
                    buttonTextStyle: CustomTextStyles.titleMediumPrimary,
                    onPressed: () {
                      cartController
                          .submitOrder(paymentController.selectedPaymentMethod);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
