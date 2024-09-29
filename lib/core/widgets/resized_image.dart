import 'dart:io';

import 'package:binarize/binarize.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:resizer/resizer.dart';

class AssetBytesLoader {
  /// A loader that retrieves bytes from an [AssetBundle].
  ///
  /// See [AssetBytesLoader].
  const AssetBytesLoader(
    this.assetName, {
    this.packageName,
    this.assetBundle,
  });

  /// The name of the asset to load.
  final String assetName;

  /// The package name to load from, if any.
  final String? packageName;

  /// The asset bundle to use.
  ///
  /// If unspecified, [DefaultAssetBundle.of] the current context will be used.
  final AssetBundle? assetBundle;

  AssetBundle _resolveBundle(BuildContext? context) {
    if (assetBundle != null) {
      return assetBundle!;
    }
    if (context != null) {
      return DefaultAssetBundle.of(context);
    }
    return rootBundle;
  }

  @override
  Future<ByteData> loadBytes(BuildContext? context) {
    return _resolveBundle(context).load(
      packageName == null ? assetName : 'packages/$packageName/$assetName',
    );
  }

  @override
  int get hashCode => Object.hash(assetName, packageName, assetBundle);

  @override
  bool operator ==(Object other) {
    return other is AssetBytesLoader &&
        other.assetName == assetName &&
        other.assetBundle == assetBundle &&
        other.packageName == packageName;
  }

  @override
  Object cacheKey(BuildContext? context) {
    return {};
  }

  @override
  String toString() =>
      'VectorGraphicAsset(${packageName != null ? '$packageName/' : ''}$assetName)';
}

const uInt8List = BinarizedUint8Lists();
typedef IOSSizes = ({Uint8List size3x, Uint8List size2x, Uint8List size1x});

class ImageResized extends StatelessWidget {
  const ImageResized({
    required this.imagePath,
    super.key,
  });

  final String imagePath;

  Future<IOSSizes> loadImageUintLists(BuildContext context) async {
    print('GOOO2');
    final loaded = AssetBytesLoader(imagePath);
    final loaded2 = await loaded.loadBytes(context);
    final loaded3 = loaded2.asUnmodifiableView().buffer.asUint8List();

    // final fileContents = await File(imagePath).readAsBytes();
    final reader = Payload.read(loaded3);
    final images = reader.get(uInt8List);
    return (size3x: images[0], size2x: images[1], size1x: images[2]);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadImageUintLists(context),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Row(
            children: [
              Image.memory(
                snapshot.requireData.size3x,
              ),
              Image.memory(
                snapshot.requireData.size2x,
              ),
              Image.memory(
                snapshot.requireData.size1x,
              ),
            ],
          );
        }

        return const Text('Loading...');
      },
    );
  }
}
