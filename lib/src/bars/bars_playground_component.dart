import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import 'bars_component.dart';

@Component(
  selector: 'bars-playground',
  styleUrls: ['bars_playground_component.css'],
  templateUrl: 'bars_playground_component.html',
  directives: [BarsComponent, coreDirectives, formDirectives],
  changeDetection: ChangeDetectionStrategy.OnPush,
)
class BarsPlaygroundComponent {
  static const _defaultNumBars = 10;
  int userNumBars = _defaultNumBars;
  int get numBars => userNumBars ?? 0;

  var barStyle = {
    '--bar-color': 'black',
  };
}

