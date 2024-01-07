// import 'package:flutter/material.dart';

// class ListToGridView extends BoxScrollView {
//   ListToGridView({
//     super.key,
//     required this.listTile,
//     this.customCard,
//     this.breakHeight,
//     this.breakWidth = 600,
//     this.axisDirection = AxisDirection.down,
//     this.mainAxisAlignment = MainAxisAlignment.center,
//     this.crossAxisAlignment = CrossAxisAlignment.center,
//     this.color,
//     this.splashColor,
//     this.cardElevation,
//     this.cardShape,
//     this.borderOnForeground = true,
//     this.cardMargin,
//     this.clipBehavior,
//     this.child,
//     this.semanticContainer = true,
//   });

//   /// The card's background color.
//   ///
//   /// Defines the card's [Material.color].
//   ///
//   /// In Material 3, [surfaceTintColor] is drawn on top of this color
//   /// when the card is elevated. This might make the appearance of
//   /// the card slightly different than in Material 2. To disable this
//   /// feature, set [surfaceTintColor] to [Colors.transparent].
//   /// See [Material.surfaceTintColor] for more details.
//   ///
//   /// If this property is null then the ambient [CardTheme.color] is used. If that is null,
//   /// and [ThemeData.useMaterial3] is true, then [ColorScheme.surface] of
//   /// [ThemeData.colorScheme] is used. Otherwise, [ThemeData.cardColor] is used.
//   final Color? color;

//   /// The splash color of the button's [InkWell].
//   ///
//   /// The ink splash indicates that the button has been touched. It
//   /// appears on top of the button's child and spreads in an expanding
//   /// circle beginning where the touch occurred.
//   ///
//   /// The default splash color is the current theme's splash color,
//   /// [ThemeData.splashColor].
//   ///
//   /// The appearance of the splash can be configured with the theme's splash
//   /// factory, [ThemeData.splashFactory].
//   final Color? splashColor;

//   /// The z-coordinate at which to place this card. This controls the size of
//   /// the shadow below the card.
//   ///
//   /// Defines the card's [Material.elevation].
//   ///
//   /// If this property is null then [CardTheme.elevation] of
//   /// [ThemeData.cardTheme] is used. If that's null, the default value is 1.0.
//   final double? cardElevation;

//   /// The shape of the card's [Material].
//   ///
//   /// Defines the card's [Material.shape].
//   ///
//   /// If this property is null then [CardTheme.shape] of [ThemeData.cardTheme]
//   /// is used. If that's null then the shape will be a [RoundedRectangleBorder]
//   /// with a circular corner radius of 4.0.
//   final ShapeBorder? cardShape;

//   /// Whether to paint the [cardShape] border in front of the [child].
//   ///
//   /// The default value is true.
//   /// If false, the border will be painted behind the [child].
//   final bool borderOnForeground;

//   /// {@macro flutter.material.Material.clipBehavior}
//   ///
//   /// If this property is null then [CardTheme.clipBehavior] of
//   /// [ThemeData.cardTheme] is used. If that's null then the behavior will be [Clip.none].
//   final Clip? clipBehavior;

//   /// The empty space that surrounds the card.
//   ///
//   /// Defines the card's outer [Container.margin].
//   ///
//   /// If this property is null then [CardTheme.margin] of
//   /// [ThemeData.cardTheme] is used. If that's null, the default margin is 4.0
//   /// logical pixels on all sides: `EdgeInsets.all(4.0)`.
//   final EdgeInsetsGeometry? cardMargin;

//   /// Whether this widget represents a single semantic container, or if false
//   /// a collection of individual semantic nodes.
//   ///
//   /// Defaults to true.
//   ///
//   /// Setting this flag to true will attempt to merge all child semantics into
//   /// this node. Setting this flag to false will force all child semantic nodes
//   /// to be explicit.
//   ///
//   /// This flag should be false if the card contains multiple different types
//   /// of content.
//   final bool semanticContainer;

//   /// The widget below this widget in the tree.
//   ///
//   /// {@macro flutter.widgets.ProxyWidget.child}
//   final Widget? child;

//   /// Input [ListTile] to convert.
//   final ListTile listTile;

//   /// if [customCard] is null, return default card
//   final Card? customCard;

//   /// if listTile.width > breakpoint,
//   /// convert into Card
//   final double? breakHeight;

//   /// if listTile.width > breakpoint,
//   /// convert into Card
//   final double breakWidth;

//   /// Defing axises of Column, Row
//   ///
//   /// Column : [AxisDirection.down],[AxisDirection.up]
//   /// Row : [AxisDirection.right],[AxisDirection.left]
//   ///
//   /// default value is to make [Column]
//   final AxisDirection axisDirection;

//   final MainAxisAlignment mainAxisAlignment;
//   final CrossAxisAlignment crossAxisAlignment;

//   @override
//   Widget buildChildLayout(BuildContext context) {
//     return Semantics(
//       container: semanticContainer,
//       child: Material(
//         type: MaterialType.card,
//         child: LayoutBuilder(
//           builder: (BuildContext context, BoxConstraints constraints) {
//             final size = MediaQuery.of(context).size;
//             if (size.width > breakWidth) {
//             return GridView(gridDelegate: gridDelegate);
//             }else{
//               return ListView(
//                 children: [],
//               );
//             }
//   }
// }
