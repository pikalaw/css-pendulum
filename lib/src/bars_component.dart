import 'dart:html';

import 'package:angular/angular.dart';

@Component(
  selector: 'bars',
  styleUrls: ['bars_component.animated.css'],
  templateUrl: 'bars_component.html',
  directives: [coreDirectives],
  changeDetection: ChangeDetectionStrategy.OnPush,
)
class BarsComponent implements AfterChanges {
  HtmlElement element;
  BarsComponent(this.element);

  @Input()
  int numBars;

  // x starting position of the bars in percentages.
  List<num> barXStarts;
  // width of each bar.
  num barWidth;

  @override
  void ngAfterChanges() {
    _setXStartAndWidths();
  }

  void _setXStartAndWidths() {
    final barSpace = 100.0 / numBars;
    final xBegin = (barSpace * .2) / 2;
    barXStarts = [for(var x=xBegin; x<100; x+=barSpace) x];
    barWidth = barSpace * .8;
  }
}
