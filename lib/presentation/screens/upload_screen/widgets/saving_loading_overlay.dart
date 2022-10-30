import 'package:flutter/material.dart';

class SavingLoadingOverlay extends StatelessWidget {
  final bool isSaving;

  const SavingLoadingOverlay({super.key, required this.isSaving});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        height: double.infinity,
        width: double.infinity,
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isSaving) const CircularProgressIndicator(),
            const SizedBox(height: 8),
            Text(
              'Saving',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
