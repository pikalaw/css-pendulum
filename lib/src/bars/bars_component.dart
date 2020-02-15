import 'dart:html';

import 'package:angular/angular.dart';

@Component(
  selector: 'bars',
  styleUrls: ['bars_component.css'],
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
  var barXStarts = <num>[];
  // width of each bar.
  var barWidth = 0.0;

  @override
  void ngAfterChanges() {
    _setXStartAndWidths();
  }

  void _setXStartAndWidths() {
    if ((numBars??-1) <= 0) {
      barXStarts = [];
      barWidth = 0.0;
      return;
    }

    // The gap width as a fraction of the bar's width.
    const gap = .2;

    // (numBars+1)*gap*barWidth + numBars*barWidth = 100;
    // ((numBars+1)*gap + numBars)*barWidth = 100;
    barWidth = 100.0 / ((numBars+1)*gap + numBars);

    final gapWidth = gap*barWidth;
    final barInterval = barWidth + gapWidth;
    final xBegin = gapWidth;
    barXStarts = [for(var x=xBegin, i=0; i<numBars; i++, x+=barInterval) x];
  }
}
