import 'dart:io';
import 'package:image_picker/image_picker.dart';


Future<Map<String, dynamic>> pickAssets(ImageSource imageSource) async {
  XFile? pickedImage = await ImagePicker().pickImage(source: imageSource);

  if (pickedImage != null) {
    String imagePath = pickedImage.path;
    File imageFile = File(imagePath);

    return {
      'path': imagePath,
      'file': imageFile,
    };
  } else {
    return {
      'path': '',
      'file': null,
    };
  }
}