import 'package:flutter/material.dart';

/// A performance-optimized version of [IndexedStack] that lazily builds children.
///
/// Only the initially visible child and children that become visible through
/// index changes are built. This avoids building off-screen widgets, improving
/// performance for screens with expensive initialization.
///
/// The built children are cached and reused, so each child is built at most once.
/// Unbuilt children are replaced with [SizedBox.shrink] to maintain layout.
///
/// ## Performance Characteristics
///
/// - **Initial build:** Only builds the child at [index]
/// - **Index changes:** Builds new visible child only if not previously built
/// - **Child count changes:** Preserves existing cache, extends or truncates as needed
/// - **Memory:** O(n) where n is the number of children
///
/// ## Usage Example
///
/// ```dart
/// LazyIndexedStack(
///   index: 0,
///   children: const [
///     WaterfallItems(mainAppBarType: MainAppBarType.notStarted),
///     WaterfallItems(mainAppBarType: MainAppBarType.inProgress),
///     Settings(),
///   ],
/// )
/// ```
///
/// **Important:** Children MUST use const constructors for correct caching behavior.
/// If children are recreated on each rebuild without const, stale widgets may persist
/// in the cache and behavior will be undefined.
///
/// See also:
/// - [IndexedStack], which builds all children immediately
/// - [Stack], which stacks children without lazy loading
class LazyIndexedStack extends StatefulWidget {
  /// Creates a lazy-loaded indexed stack.
  ///
  /// The [index] must be within the bounds of [children].
  ///
  /// All [children] should be const widgets to enable proper caching.
  const LazyIndexedStack({
    super.key,
    required this.index,
    required this.children,
  }) : assert(
         index >= 0 && index < children.length,
         'index must be within children bounds',
       );

  /// The index of the currently visible child.
  ///
  /// Changing this value triggers a rebuild of the new visible child if it
  /// hasn't been built before.
  final int index;

  /// The list of children to display.
  ///
  /// Children should be const widgets for optimal caching behavior.
  /// Example: `const [WaterfallItems(), Settings()]`
  ///
  /// If the children list changes between rebuilds, the cache is preserved
  /// for existing indices and extended or truncated as needed.
  final List<Widget> children;

  @override
  State<LazyIndexedStack> createState() => _LazyIndexedStackState();
}

class _LazyIndexedStackState extends State<LazyIndexedStack> {
  /// Cache of built children. Null values indicate unbuilt widgets.
  late final List<Widget?> _builtChildren;

  /// Currently visible child index.
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.index;
    _builtChildren = List<Widget?>.filled(widget.children.length, null)
      ..[_currentIndex] = widget.children[_currentIndex];
  }

  @override
  void didUpdateWidget(LazyIndexedStack oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Handle children list length changes (preserve existing cache)
    if (_builtChildren.length != widget.children.length) {
      final newBuiltChildren = List<Widget?>.filled(
        widget.children.length,
        null,
      );
      for (
        int i = 0;
        i < _builtChildren.length && i < newBuiltChildren.length;
        i++
      ) {
        newBuiltChildren[i] = _builtChildren[i];
      }
      _builtChildren
        ..clear()
        ..addAll(newBuiltChildren);
    }

    // Handle index changes (build new visible child if not cached)
    if (widget.index != oldWidget.index) {
      setState(() {
        _currentIndex = widget.index;
        if (_builtChildren[_currentIndex] == null) {
          _builtChildren[_currentIndex] = widget.children[_currentIndex];
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: _currentIndex,
      children: List.generate(
        _builtChildren.length,
        (i) => _builtChildren[i] ?? const SizedBox.shrink(),
        growable: false,
      ),
    );
  }
}
