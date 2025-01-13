import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:camera/camera.dart';
import 'package:my_app/controller/scan_controller.dart';

class CameraView extends StatelessWidget {
  const CameraView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ScanController>(
        init: ScanController(),
        builder: (controller) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              controller.isCameraInitialized.value
                  ? CameraPreview(controller.cameraController)
                  : const Center(child: Text("กำลังเปิดกล้อง....")),
              const SizedBox(height: 20),
              Text(
                controller.labelsText.value,
                style: TextStyle(fontSize: 16),
              ),
            ],
          );
        },
      ),
    );
  }
}
