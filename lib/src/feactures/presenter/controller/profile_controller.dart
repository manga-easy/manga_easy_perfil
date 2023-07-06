import 'package:flutter/material.dart';
import 'package:persistent_database/persistent_database.dart';

class ProfileController extends ChangeNotifier {
  final Preference _preference;

  ProfileController(this._preference);

  bool seeGmail = true;

  void init() async {
    seeGmail = await loadingGmail();
    notifyListeners();
  }

  void saveGmail() async {
    seeGmail = !seeGmail;
    await _preference.put(
      value: seeGmail,
      keyPreferences: KeyPreferences.seeGmail,
    );
    notifyListeners();
  }

  Future<bool> loadingGmail() async {
    return await _preference.get<bool>(keyPreferences: KeyPreferences.seeGmail);
  }

//   Future<File?> selectImageFromGallery() async {
//     final picker = ImagePicker();
//     final pickedFile = await picker.pickImage(source: ImageSource.gallery);

//     if (pickedFile != null) {
//       return File(pickedFile.path);
//     }

//     return null;
//   }
// }

// Future<void> sendImageToAPI(File imageFile) async {
//   Dio dio = Dio();
//   FormData formData = FormData.fromMap({
//     'image': await MultipartFile.fromFile(imageFile.path),
//   });

//   print(formData);

//   try {
//     Response response = await dio.post('URL_DA_API_AQUI', data: formData);
//     print('Imagem enviada com sucesso! Resposta: ${response.data}');
//   } catch (error) {
//     print('Falha ao enviar a imagem. Erro: $error');
//   }
}
