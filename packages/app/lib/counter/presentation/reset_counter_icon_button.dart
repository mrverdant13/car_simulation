import 'package:car_simulation/counter/counter.dart';
import 'package:car_simulation/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ResetCounterIconButton extends ConsumerWidget {
  const ResetCounterIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return IconButton(
      onPressed: () => ref.invalidate(counterPod),
      tooltip: l10n.counterResetButtonTooltip,
      icon: const Icon(Icons.refresh),
    );
  }
}
