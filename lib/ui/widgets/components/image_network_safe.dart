/// SPDX-License-Identifier: AGPL-3.0-or-later
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

class ImageNetworkSafe extends ConsumerStatefulWidget {
  const ImageNetworkSafe({
    super.key,
    required this.url,
    required this.error,
    required this.loading,
  });

  final String url;
  final Widget error;
  final Widget loading;

  @override
  ConsumerState<ImageNetworkSafe> createState() => _ImageNetworkSafeState();
}

class _ImageNetworkSafeState extends ConsumerState<ImageNetworkSafe> {
  bool _isLoading = true;
  bool _isError = false;

  @override
  void initState() {
    super.initState();
    _checkUrl();
  }

  Future<void> _checkUrl() async {
    try {
      final response = await http.head(Uri.parse(widget.url));
      if (response.statusCode == 200) {
        setState(() {
          _isLoading = false;
        });
      } else {
        setState(() {
          _isLoading = false;
          _isError = true;
        });
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
        _isError = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return widget.loading;
    } else if (_isError) {
      return widget.error;
      ;
    } else {
      return Image.network(widget.url,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fitWidth, errorBuilder: (
        BuildContext context,
        Object exception,
        StackTrace? stackTrace,
      ) {
        return widget.error;
      }, loadingBuilder: (
        BuildContext context,
        Widget child,
        ImageChunkEvent? loadingProgress,
      ) {
        if (loadingProgress == null) {
          return child;
        }
        return widget.loading;
      });
    }
  }
}
