/// Provide conversion from [ListTile] to [Card]
library;

// ignore_for_file: lines_longer_than_80_chars, prefer_expression_function_bodies
/// Provide conversion from [ListTile] to [Card]
import 'package:flutter/material.dart';

///
/// [ListTile.width] is larger than breakWidth,
///
class ListTileToCard extends StatelessWidget {
  const ListTileToCard({
    required this.listTile,
    this.cardSize = const Size(200, 200),
    this.customCard,
    this.breakHeight,
    this.breakWidth = 600,
    this.axisDirection = AxisDirection.down,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.color,
    this.splashColor,
    this.cardShadowColor,
    this.cardSurfaceTintColor,
    this.cardElevation,
    this.cardShape,
    this.borderOnForeground = true,
    this.cardMargin,
    this.clipBehavior = Clip.hardEdge,
    this.child,
    this.semanticContainer = true,
    this.boxFit,
    this.flexFit = FlexFit.loose,
    this.flexes = (
      titleFlex: 1,
      subtitleFlex: 1,
      leadingFlex: 1,
      trailingFlex: 1
    ),
    super.key,
  });

  final Size cardSize;

  final BoxFit? boxFit;
  final FlexFit flexFit;

  /// Records for widget flexes
  ///
  /// if (Flex == 0), do not show in Card
  final ({
    int titleFlex,
    int subtitleFlex,
    int leadingFlex,
    int trailingFlex,
  }) flexes;

  /// The card's background color.
  ///
  /// Defines the card's [Material.color].
  ///
  /// In Material 3, [surfaceTintColor] is drawn on top of this color
  /// when the card is elevated. This might make the appearance of
  /// the card slightly different than in Material 2. To disable this
  /// feature, set [surfaceTintColor] to [Colors.transparent].
  /// See [Material.surfaceTintColor] for more details.
  ///
  /// If this property is null then the ambient [CardTheme.color] is used. If that is null,
  /// and [ThemeData.useMaterial3] is true, then [ColorScheme.surface] of
  /// [ThemeData.colorScheme] is used. Otherwise, [ThemeData.cardColor] is used.
  final Color? color;

  /// The splash color of the button's [InkWell].
  ///
  /// The ink splash indicates that the button has been touched. It
  /// appears on top of the button's child and spreads in an expanding
  /// circle beginning where the touch occurred.
  ///
  /// The default splash color is the current theme's splash color,
  /// [ThemeData.splashColor].
  ///
  /// The appearance of the splash can be configured with the theme's splash
  /// factory, [ThemeData.splashFactory].
  final Color? splashColor;
  final Color? cardShadowColor;
  final Color? cardSurfaceTintColor;

  /// The z-coordinate at which to place this card. This controls the size of
  /// the shadow below the card.
  ///
  /// Defines the card's [Material.elevation].
  ///
  /// If this property is null then [CardTheme.elevation] of
  /// [ThemeData.cardTheme] is used. If that's null, the default value is 1.0.
  final double? cardElevation;

  /// The shape of the card's [Material].
  ///
  /// Defines the card's [Material.shape].
  ///
  /// If this property is null then [CardTheme.shape] of [ThemeData.cardTheme]
  /// is used. If that's null then the shape will be a [RoundedRectangleBorder]
  /// with a circular corner radius of 4.0.
  final ShapeBorder? cardShape;

  /// Whether to paint the [cardShape] border in front of the [child].
  ///
  /// The default value is true.
  /// If false, the border will be painted behind the [child].
  final bool borderOnForeground;

  /// {@macro flutter.material.Material.clipBehavior}
  ///
  /// If this property is null then [CardTheme.clipBehavior] of
  /// [ThemeData.cardTheme] is used. If that's null then the behavior will be [Clip.none].
  final Clip? clipBehavior;

  /// The empty space that surrounds the card.
  ///
  /// Defines the card's outer [Container.margin].
  ///
  /// If this property is null then [CardTheme.margin] of
  /// [ThemeData.cardTheme] is used. If that's null, the default margin is 4.0
  /// logical pixels on all sides: `EdgeInsets.all(4.0)`.
  final EdgeInsetsGeometry? cardMargin;

  /// Whether this widget represents a single semantic container, or if false
  /// a collection of individual semantic nodes.
  ///
  /// Defaults to true.
  ///
  /// Setting this flag to true will attempt to merge all child semantics into
  /// this node. Setting this flag to false will force all child semantic nodes
  /// to be explicit.
  ///
  /// This flag should be false if the card contains multiple different types
  /// of content.
  final bool semanticContainer;

  /// The widget below this widget in the tree.
  ///
  /// {@macro flutter.widgets.ProxyWidget.child}
  final Widget? child;

  /// Input [ListTile] to convert.
  final ListTile listTile;

  /// if [customCard] is null, return default card
  final Card? customCard;

  /// if listTile.width > breakpoint,
  /// convert into Card
  final double? breakHeight;

  /// if listTile.width > breakpoint,
  /// convert into Card
  final double breakWidth;

  /// Defing axises of Column, Row
  ///
  /// Column : [AxisDirection.down],[AxisDirection.up]
  /// Row : [AxisDirection.right],[AxisDirection.left]
  ///
  /// default value is to make [Column]
  final AxisDirection axisDirection;

  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  Widget _cardContentBuilder(ListTile listTile, AxisDirection axisDirection) {
    switch (axisDirection) {
      case AxisDirection.down:
        return Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: <Widget>[
            if (listTile.leading != null && flexes.leadingFlex > 0)
              Flexible(flex: flexes.leadingFlex, child: listTile.leading!),
            if (listTile.title != null && flexes.titleFlex > 0)
              Flexible(flex: flexes.titleFlex, child: listTile.title!),
            if (listTile.subtitle != null && flexes.subtitleFlex > 0)
              Flexible(flex: flexes.subtitleFlex, child: listTile.subtitle!),
            if (listTile.trailing != null && flexes.trailingFlex > 0)
              Flexible(flex: flexes.trailingFlex, child: listTile.trailing!),
          ],
        );
      case AxisDirection.up:
        return Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: <Widget>[
            if (listTile.trailing != null && flexes.trailingFlex > 0)
              Flexible(
                flex: flexes.trailingFlex,
                fit: flexFit,
                child: listTile.trailing!,
              ),
            if (listTile.subtitle != null && flexes.subtitleFlex > 0)
              Flexible(
                flex: flexes.subtitleFlex,
                fit: flexFit,
                child: listTile.subtitle!,
              ),
            if (listTile.title != null && flexes.titleFlex > 0)
              Flexible(
                flex: flexes.titleFlex,
                fit: flexFit,
                child: listTile.title!,
              ),
            if (listTile.leading != null && flexes.leadingFlex > 0)
              Flexible(
                flex: flexes.leadingFlex,
                fit: flexFit,
                child: listTile.leading!,
              ),
          ],
        );
      case AxisDirection.right:
        return Row(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: <Widget>[
            if (listTile.leading != null && flexes.leadingFlex > 0)
              Flexible(
                flex: flexes.leadingFlex,
                fit: flexFit,
                child: listTile.leading!,
              ),
            if (listTile.title != null && flexes.titleFlex > 0)
              Flexible(
                flex: flexes.titleFlex,
                fit: flexFit,
                child: listTile.title!,
              ),
            if (listTile.subtitle != null && flexes.subtitleFlex > 0)
              Flexible(
                flex: flexes.subtitleFlex,
                fit: flexFit,
                child: listTile.subtitle!,
              ),
            if (listTile.trailing != null && flexes.trailingFlex > 0)
              Flexible(
                flex: flexes.trailingFlex,
                fit: flexFit,
                child: listTile.trailing!,
              ),
          ],
        );
      case AxisDirection.left:
        return Row(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: <Widget>[
            if (listTile.trailing != null && flexes.trailingFlex > 0)
              Flexible(
                flex: flexes.trailingFlex,
                fit: flexFit,
                child: listTile.trailing!,
              ),
            if (listTile.subtitle != null && flexes.subtitleFlex > 0)
              Flexible(
                flex: flexes.subtitleFlex,
                fit: flexFit,
                child: listTile.subtitle!,
              ),
            if (listTile.title != null && flexes.titleFlex > 0)
              Flexible(
                flex: flexes.titleFlex,
                fit: flexFit,
                child: listTile.title!,
              ),
            if (listTile.leading != null && flexes.leadingFlex > 0)
              Flexible(
                flex: flexes.leadingFlex,
                fit: flexFit,
                child: listTile.leading!,
              ),
          ],
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: semanticContainer,
      child: Material(
        type: MaterialType.card,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            final cardTheme = Theme.of(context).cardTheme;
            final size = MediaQuery.of(context).size;
            if (size.width > breakWidth) {
              return Semantics(
                container: semanticContainer,
                child: Container(
                  width: cardSize.width,
                  height: cardSize.height,
                  margin: cardMargin ?? cardTheme.margin,
                  child: Material(
                    type: MaterialType.card,
                    color: color ?? cardTheme.color,
                    shadowColor: cardShadowColor ?? cardTheme.shadowColor,
                    surfaceTintColor:
                        cardSurfaceTintColor ?? cardTheme.surfaceTintColor,
                    elevation: cardElevation ?? cardTheme.elevation ?? 1,
                    shape: cardShape ?? cardTheme.shape,
                    borderOnForeground: borderOnForeground,
                    clipBehavior:
                        clipBehavior ?? cardTheme.clipBehavior ?? Clip.none,
                    child: InkWell(
                      splashColor: listTile.splashColor,
                      focusColor: listTile.focusColor,
                      hoverColor: listTile.hoverColor,
                      enableFeedback: listTile.enableFeedback,
                      onFocusChange: listTile.onFocusChange,
                      onTap: listTile.onTap,
                      onLongPress: listTile.onLongPress,
                      autofocus: listTile.autofocus,
                      child: Padding(
                        padding: cardMargin ??
                            listTile.contentPadding ??
                            EdgeInsets.zero,
                        child: _cardContentBuilder(listTile, axisDirection),
                      ),
                    ),
                  ),
                ),
              );
            } else {
              return listTile;
            }
          },
        ),
      ),
    );
  }
}
