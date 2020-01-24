import 'dart:async';

import 'package:build/build.dart';

Builder animeScssBuilder(BuilderOptions options) => AnimeScssBuilder();

class AnimeScssBuilder implements Builder {
  @override
  final buildExtensions = const {
    '.anime.scss': ['.animated.scss']
  };

  @override
  Future<void> build(BuildStep buildStep) async {
    final inputId = buildStep.inputId;

    // Change suffix .anime.scss to .animated.scss.
    // Note: changeExtension('') strips off .scss.
    final outputId = inputId.changeExtension('')
        .changeExtension('.animated.scss');

    log.info('Animating ${inputId} to ${outputId}.');

    final contents = await buildStep.readAsString(inputId);
    await buildStep.writeAsString(outputId, contents);
  }
}

