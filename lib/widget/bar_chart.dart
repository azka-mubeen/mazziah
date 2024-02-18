import 'package:flutter/material.dart';

import '../models/purchase_model.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class CustomBarChart extends StatelessWidget {
  final List<PurchaseData> data;

  const CustomBarChart({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: charts.BarChart(
        [
          charts.Series<PurchaseData, String>(
            id: 'Purchases',
            domainFn: (PurchaseData data, _) => data.day,
            measureFn: (PurchaseData data, _) => data.purchases,
            data: data,
            colorFn: (_, __) => charts.Color.fromHex(code: '#D97559'), // Custom color
          ),
          charts.Series<PurchaseData, String>(
            id: 'Average',
            domainFn: (PurchaseData data, _) => data.day,
            measureFn: (PurchaseData data, _) => data.average,
            data: data,
            colorFn: (_, __) => charts.Color.fromHex(code: '#FACD18'), // Custom color
          )
            ..setAttribute(charts.rendererIdKey, 'customLine')
        ],
        animate: true,
        barGroupingType: charts.BarGroupingType.grouped,
        behaviors: [
          charts.SeriesLegend(position: charts.BehaviorPosition.bottom),
        ],
        primaryMeasureAxis: const charts.NumericAxisSpec(),
        defaultRenderer: charts.BarRendererConfig(groupingType: charts.BarGroupingType.grouped),
        customSeriesRenderers: [
          charts.LineRendererConfig(
            customRendererId: 'customLine',
            includePoints: true, // Display data points
            strokeWidthPx: 2, // Adjust the thickness of the line
          ),
        ],
        domainAxis: charts.OrdinalAxisSpec(
          renderSpec: charts.SmallTickRendererSpec(
            labelRotation: 45, // Rotate the labels by 45 degrees
          ),
        ),
      ),
    );
  }
}
