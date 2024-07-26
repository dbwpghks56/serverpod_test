import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:serverpod_test_client/serverpod_test_client.dart';

class NoteDetailDialog extends HookConsumerWidget {
  const NoteDetailDialog({
    super.key,
    required this.note,
  });

  final Note note;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container();
  }
}
