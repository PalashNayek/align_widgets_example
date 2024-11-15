import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/service_locator.dart';
import '../view_models/align_viewmodel.dart';

class AlignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<AlignViewModel>(),
      child: Consumer<AlignViewModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Align Widget with MVVM"),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Align(
                    alignment: viewModel.alignment,
                    child: Container(
                      color: Colors.blueAccent,
                      width: 100,
                      height: 100,
                      child: Center(
                        child: Text(
                          "Aligned",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        viewModel.updateAlignment(Alignment.topLeft);
                      },
                      child: Text("Top Left"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        viewModel.updateAlignment(Alignment.center);
                      },
                      child: Text("Center"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        viewModel.updateAlignment(Alignment.bottomRight);
                      },
                      child: Text("Bottom Right"),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          );
        },
      ),
    );
  }
}
