import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_api/presentation/common/theme/app_colors.dart';
import 'package:news_api/presentation/common/theme/app_text_styles.dart';
import 'package:news_api/presentation/common/utils/dimensions.dart';

/// {@template app_theme}
/// The Default App [ThemeData].
/// {@endtemplate}
class AppTheme {
  /// {@macro app_theme}
  const AppTheme();

  /// Default `ThemeData` for App UI.
  ThemeData get themeData {
    return ThemeData(
      primaryColor: AppColors.primaryColor,
      canvasColor: _backgroundColor,
      scaffoldBackgroundColor: _backgroundColor,
      appBarTheme: _appBarTheme,
      textTheme: _textTheme,
      buttonTheme: _buttonTheme,
      splashColor: AppColors.transparent,
      textButtonTheme: _textButtonTheme,
      colorScheme: _colorScheme,
    );
  }

  ColorScheme get _colorScheme {
    return ColorScheme.light(
      secondary: AppColors.secondaryColor,
      background: _backgroundColor,
    );
  }

  Color get _backgroundColor => AppColors.backgroundColor;

  AppBarTheme get _appBarTheme {
    return AppBarTheme(
      titleTextStyle: _textTheme.titleLarge,
      elevation: 0,
      toolbarHeight: 64,
      backgroundColor: AppColors.transparent,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    );
  }

  TextTheme get _textTheme => uiTextTheme;

  /// The UI text theme based on [AppTextStyles].
  static final uiTextTheme = const TextTheme(
    displayLarge: AppTextStyles.displayLarge,
    displayMedium: AppTextStyles.displayMedium,
    displaySmall: AppTextStyles.displaySmall,
    headlineMedium: AppTextStyles.headlineMedium,
    headlineSmall: AppTextStyles.headlineSmall,
    titleLarge: AppTextStyles.titleLarge,
    titleMedium: AppTextStyles.titleMedium,
    titleSmall: AppTextStyles.titleSmall,
    bodyLarge: AppTextStyles.bodyLarge,
    bodyMedium: AppTextStyles.bodyMedium,
    labelLarge: AppTextStyles.labelLarge,
    bodySmall: AppTextStyles.bodySmall,
    labelSmall: AppTextStyles.labelSmall,
  ).apply(
    bodyColor: AppColors.textColor,
    displayColor: AppColors.textColor,
    decorationColor: AppColors.textColor,
  );

  ButtonThemeData get _buttonTheme {
    return ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimensions.radiusSmall),
      ),
    );
  }

  TextButtonThemeData get _textButtonTheme {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: _textTheme.labelLarge,
        foregroundColor: AppColors.textColor,
      ),
    );
  }
}
