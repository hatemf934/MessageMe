import 'package:chat_group/constant.dart';
import 'package:chat_group/core/utils/paddingmanager.dart';
import 'package:chat_group/core/utils/routemanger.dart';
import 'package:chat_group/core/widget/showmodel.dart';
import 'package:chat_group/features/account/presentation/view/widgets/section_profile_app_bar.dart';
import 'package:chat_group/features/account/presentation/view/widgets/section_profile_data.dart';
import 'package:chat_group/features/authapp/presentation/manager/datauserscubit/datausers_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class Profileview extends StatefulWidget {
  const Profileview({super.key});
  static String id = RouteManager.kProfileViewPersonal;

  @override
  State<Profileview> createState() => _ProfileviewState();
}

class _ProfileviewState extends State<Profileview> {
  final ImagePicker _picker = ImagePicker();
  XFile? selectedImage; // لتخزين الصورة المختارة

  // دالة لفتح الخيارات (كاميرا أو معرض)
  void _onEditPressed() async {
    // await requestCameraPermission();
    await showOptionsDialog(context, (source) async {
      final pickedImage = await _picker.pickImage(source: source);
      if (pickedImage != null) {
        setState(() {
          selectedImage = pickedImage; // تحديث الصورة
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(Paddingmanager.p15),
        child: Column(children: [
          const SectionProfileAppBar(),
          BlocBuilder<DatausersCubit, DatausersState>(
            builder: (context, state) {
              if (state is DatausersSucsses) {
                final dataModel = state.data[0];
                return SectionProfileData(
                  imageAsset: selectedImage?.path ?? dataModel.image,
                  onEditPressed: () => _onEditPressed(),
                  name: dataModel.name,
                  phone: dataModel.phone,
                  email: dataModel.id,
                  country: dataModel.country,
                  date: dataModel.date,
                  gender: dataModel.gender,
                );
              }

              return const Center(
                  child: CircularProgressIndicator(
                color: kPrimaryColor,
              ));
            },
          )
        ]),
      ),
    );
  }
}
