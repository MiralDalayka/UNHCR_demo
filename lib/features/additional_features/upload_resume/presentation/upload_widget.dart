
import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';


class UploadResume extends StatelessWidget {
  const UploadResume({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.cloud_upload_outlined,
              size: 30,
              color:primaryColor,
            ),
            const SizedBox(height: 12),
             Text(
              'Upload Resume',
              style: TextStyles.largeRegular.copyWith(color: thirdColor),
            ),
            const SizedBox(height: 8),
            const Text(
              'Get Connected with the suitable job now',
              style: TextStyles.xSmallRegular
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {

              },
              child:  Text('Browse Files',style: TextStyles.mediumRegular.copyWith(color: thirdColor),),
            ),
          ],
        ),
      ),

    );
  }
}
