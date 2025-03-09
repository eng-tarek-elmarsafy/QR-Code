import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_code/Feature/Home/presentation/views/widget/flash.dart';

import '../../manager/cubit/flash_cubit.dart';

class FlashToggle extends StatelessWidget {
  const FlashToggle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<FlashCubit>(context).toggle();
      },
      child:const Flash(),
    );
  }
}
