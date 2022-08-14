import 'package:flutter/material.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:provider/provider.dart';


AssetImage backgroundImage(BuildContext context){
  var settingsProvider = Provider.of<SettingsProvider>(context);
  return AssetImage(settingsProvider.isDark() ? "assets/images/background_image_dark.png"
      : "assets/images/background.png");
}
