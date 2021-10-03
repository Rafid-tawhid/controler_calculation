import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class CameraDemo extends StatefulWidget {
  @override
  _CameraDemoState createState() => _CameraDemoState();
}

class _CameraDemoState extends State<CameraDemo> {
  late CameraController _control;
  late Future<void> _future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initApp();
  }

  void _initApp() async
  {
    WidgetsFlutterBinding.ensureInitialized();
    final cameras = await availableCameras();
    final firstCam = cameras.first;

    _control = CameraController(
      firstCam,
      ResolutionPreset.high,
    );

    _future = _control.initialize();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _control.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Save Picture")),
      body: FutureBuilder<void>(
        future: _future,
        builder: (context, snapshot) {
          if(snapshot.connectionState==ConnectionState.done)
            return CameraPreview(_control);
          else
            return Center(child: CircularProgressIndicator(),);

        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera_alt),
        onPressed: () async {
          try {
            await _future;

            final path = join(
              (await getTemporaryDirectory()).path,
              '${DateTime.now()}.png',
            );

            await _control.takePicture(path);
            Navigator.push(context, MaterialPageRoute(
              builder: (context){
                return DisplayPicture(imagepath: ImagePicker.platform);
              },
            ));
          } catch (e) {
            print(e);
          }
        },
      ),
    );
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<CameraController>('_control', _control));
  }


}

class DisplayPicture extends StatelessWidget {
  String imagepath;
  // DisplayPicture({this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Display the Picture')),
      // The image is stored as a file on the device. Use the `Image.file`
      // constructor with the given path to display the image.
      body: Image.file(File(imagepath)),
    );
  }
}