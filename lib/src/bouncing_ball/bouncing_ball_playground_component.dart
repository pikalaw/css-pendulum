import 'package:angular/angular.dart';

import 'bouncing_ball_component.dart';

@Component(
  selector: 'bouncing-ball-playground',
  styleUrls: ['bouncing_ball_playground_component.css'],
  templateUrl: 'bouncing_ball_playground_component.html',
  directives: [BouncingBallComponent],
  changeDetection: ChangeDetectionStrategy.OnPush,
)
class BouncingBallPlaygroundComponent {
}
