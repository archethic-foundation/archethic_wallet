//@Timeout(Duration(seconds: 90))
import 'package:aewallet/main.dart' as app;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import 'config.dart';

void main() {
  patrolTest('As a user I can create a NFT',
      nativeAutomatorConfig: nativeAutomatorConfig,
      nativeAutomation: true, ($) async {
    await app.main();
    await $(CheckboxListTile).tap();
    await $(#importWallet).tap();
    final finder = createFinder(RegExp('.*testnet.*'));
    await $(finder).tap();

    final seedWord = [
      'pave',
      'shrug',
      'coffee',
      'daughter',
      'hip',
      'mechanic',
      'scale',
      'trigger',
      'lake',
      'resist',
      'way',
      'repair',
      'good',
      'animal',
      'tennis',
      'boost',
      'walk',
      'story',
      'dash',
      'brass',
      'buzz',
      'orphan',
      'feed',
      'connect'
    ];

    const length = 24;
    for (var index = 1; index <= length; index++) {
      final finder = createFinder(Key('seedWord$index'));
      await $(finder).tap();
      await $(finder).enterText(seedWord[index]);
    }
    await $(#ok).tap();
    $(#nftTab).tap();
    $(#noCategoryNFTs).tap();
    $(#createNFTbutton).tap();
  });
}