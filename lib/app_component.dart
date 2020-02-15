import 'package:angular/angular.dart';

import 'src/bars/bars_playground_component.dart';
import 'src/bouncing_ball/bouncing_ball_playground_component.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [
    BarsPlaygroundComponent,
    BouncingBallPlaygroundComponent,
    coreDirectives,
  ],
  changeDetection: ChangeDetectionStrategy.OnPush,
)
class AppComponent {}
