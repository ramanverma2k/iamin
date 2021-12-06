# IAMIN Dashboard

[![codecov](https://codecov.io/gh/ramanverma2k/iamin/branch/main/graph/badge.svg?token=4URX31NQ1A)](https://codecov.io/gh/ramanverma2k/iamin)

## Tech stack
The libraries that this app is using as of now:
- [flutter_svg](https://pub.dev/packages/flutter_svg)
- [flutter_gradient_colors](https://pub.dev/packages/flutter_gradient_colors)
- [auto_animated](https://pub.dev/packages/auto_animated)

## Run Locally

Make sure that you have flutter and dart installed and setup. If you don't then refer to the official installation instructions at [Flutter Docs](https://flutter.dev/docs/get-started/install)

Then run the following commands

Clone the project

```bash
  git clone https://github.com/ramanverma2k/iamin
```

Go to the project directory

```bash
  cd iamin
```

Run the app

```bash
  flutter pub get
  flutter run
```

## Screenshot
<p align="left">
  <img width="32%" src="Screenshot.png?raw=true">
</p>

## Given Task
Recreate the given ui along with animations.
<p align="left">
  <img width="32%" src="requirements/Screenshot.jpg?raw=true">
</p>

## Important points

- The whole UI should be refreshable
- Each payment category card has 3 parts as highlighted in the image:
- Category Spend Amount
  - This shows the amount user spend in this category
  - Category Percentage
  - Percentage of spend for this category as compared to the total spending Tile
- Each payment category card has a 7x4 grid. The grid shows tiles filled up according to the percentage of the particular category spend. The last tile may or may not be completely full in height. It will depend on the percentage of the category spend.
- Payment category cards data has to be randomly generated/calculated upon each load/refresh as follows:
- Total amount of all payment categories has to be constant ₹10,000.
- The category spend amount of categories has to be randomly generated.
- Based upon the randomly generated category spend amount, category percentage has to be calculated.
- Transactions’ amounts also have to be randomly generated for max ₹1,000. No rules/validations are needed for transactions’ amounts.
- Try to match the UI as close as possible as the given screenshot/screenrecord.
- If you recreate the tiles animation properly, your chances for selection will be greatly improved. So try your best on the tiles animation part.
- Tiles have to be sequentially animated inside a payment category card, as seen in the screenrecord.
