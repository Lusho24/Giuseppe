import 'package:app_movil_giuseppe/features/presentation/common_widgets/custom_text_form_field.dart';
import 'package:app_movil_giuseppe/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 60.0, bottom: 20.0),
                child: const Image(image: AssetImage('assets/images/logo.webp')),
              ),
              const Padding(
                  padding: EdgeInsets.all(60.0),
                  child: _SignInForm())
            ],
          ),
        ),
      ),
    );
  }
}


class _SignInForm extends StatelessWidget {
  const _SignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: GlobalKey<FormState>(),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: AppColors.primaryVariantColor, width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: const [
              BoxShadow(
                  color: AppColors.primaryVariantColor,
                  blurRadius: 5.0
              )
            ]
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Usuario', style: Theme.of(context).textTheme.bodyMedium),
                const CustomTextFormField(
                    formFieldType: FormFieldType.identity_card,
                    hintText: '1705380561'),
              ],
            ),
            const SizedBox(height: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Contraseña', style: Theme.of(context).textTheme.bodyMedium),
                const CustomTextFormField(
                    formFieldType: FormFieldType.password,
                    hintText: '********'),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'tabs_page');
                },
                child: const Text('Ingresar'),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Recuperar contraseña',
                    style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: AppColors.secondaryColor,
                    decorationThickness: 2.0,
                  )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
