import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../data/excuse_data.dart';
import '../../services/share_service.dart';

class ExcuseResultController extends GetxController {
  late ExcuseCategory category;
  late String selectedType;

  final currentExcuse = ''.obs;
  final usedIndices = <int>[].obs;

  @override
  void onInit() {
    super.onInit();
    category = Get.arguments['category'] as ExcuseCategory;
    selectedType = Get.arguments['type'] as String;
    generateExcuse();
  }

  int _lastIndex = -1;

  void generateExcuse() {
    final excuses = selectedType == 'funny' ? category.funnyExcuses : category.seriousExcuses;

    if (usedIndices.length >= excuses.length) {
      usedIndices.clear();
    }

    final random = Random();
    int nextIndex;

    do {
      nextIndex = random.nextInt(excuses.length);
    } while ((usedIndices.contains(nextIndex) || nextIndex == _lastIndex) && excuses.length > 1);

    _lastIndex = nextIndex;
    usedIndices.add(nextIndex);
    currentExcuse.value = excuses[nextIndex];
  }

  Future<void> shareExcuse() async {
    await ShareService.shareExcuse(
      category: category.title,
      excuse: currentExcuse.value,
    );
  }

  Future<void> copyExcuse() async {
    await Clipboard.setData(ClipboardData(text: currentExcuse.value));
    Get.snackbar(
      'Copied!',
      'Excuse copied to clipboard',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Get.theme.colorScheme.surface,
      colorText: Get.theme.colorScheme.onSurface,
      margin: const EdgeInsets.all(16),
      duration: const Duration(seconds: 2),
    );
  }
}
