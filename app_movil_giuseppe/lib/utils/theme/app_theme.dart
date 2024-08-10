import 'package:app_movil_giuseppe/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get generalTheme{
    return ThemeData(
      primaryColor: AppColors.primaryColor,
      /*colorScheme: ColorScheme(
          brightness: brightness,
          primary: AppColors.primaryColor,
          onPrimary: onPrimary,
          secondary: secondary,
          onSecondary: onSecondary,
          error: error, onError: onError,
          surface: surface,
          onSurface: onSurface
      ),*/
      scaffoldBackgroundColor: AppColors.backgroundColor,
      textTheme: const TextTheme(
        displaySmall: TextStyle(
            color: AppColors.textColor, fontWeight: FontWeight.bold),
        headlineSmall: TextStyle( // *Para titulos principales
            color: AppColors.textColor, fontWeight: FontWeight.bold,fontSize: 30.0),
        titleLarge: TextStyle(  // *Para subtitulos
            color: AppColors.textColor, fontWeight: FontWeight.bold),
        titleSmall: TextStyle( // *Para texto de botones
            color: AppColors.textColor,fontSize: 17.0,  fontWeight: FontWeight.bold ),
        bodySmall: TextStyle( // *Para descripciones de las cards
            color: AppColors.textColor,fontWeight: FontWeight.w500,fontSize: 13.0),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColors.secondaryColor),
          foregroundColor: WidgetStateProperty.all(AppColors.secondaryTextColor),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
            )),
          splashFactory: InkRipple.splashFactory,
          overlayColor: WidgetStateProperty.all(AppColors.primaryVariantColor),
        )
      ),
    );
  }
}
