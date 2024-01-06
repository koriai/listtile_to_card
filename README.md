# ListTileToCard

## Features

![materialCard](https://lh3.googleusercontent.com/RKy5lXvuZCUtOPcYktilkdiatXT0-Ry46KRgldMA_WVBSCJhQBGIoUznlMZfeuzvVaOtHSl1BxDkY2YAc2_oI9dx_40SFDdwkg3GeuRyrC4=s0)

![materialCard_mp4](https://github.com/koriai/listtile_to_card/blob/master/listtile_card.gif)

According to official [Material 3: Card](https://m3.material.io/components/cards/guidelines#f6a5cb7b-b301-425a-a04f-229acc3bb22a), listtile and card are good to show list items.

This package provides Widget transforms into ListTile or Card by the MediaQuery.of(context).size

## Usage

```dart
ListTileToCard(
    breakWidth: 400,
    axisDirection: AxisDirection.left,
    cardMargin: const EdgeInsets.all(12),
    cardElevation: 6,
    cardShape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
    ),
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.end,
    listTile: ListTile(
    leading: const Icon(Icons.start),
    trailing: const Icon(Icons.exit_to_app_outlined),
    title: Text('Width: ${size.width}, Heigth: ${size.height}'),
    onTap: _incrementCounter,
    ),
)
```

## Additional information

On progress: ListView for ListTile and Gridview for Card
