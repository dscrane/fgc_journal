import 'package:fgc/app_state.dart';
import 'package:fgc/data/letters.dart';
import 'package:fgc/widgets/custom_header.dart';
import 'package:fgc/widgets/display_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class JournalEntryDisplay extends StatelessWidget {
  const JournalEntryDisplay({Key? key, required this.entry}) : super(key: key);

  final Map<String, dynamic> entry;

  @override
  Widget build(BuildContext context) {
    final bool hasImages = entry['afterEntry'] != null || entry['letter'] != null;
    final ScrollController _imageScrollController = ScrollController();

    Widget makeImageHero() {
      if (!hasImages) {
        return SizedBox();
      } else if (context.read<AppState>().entryType == LetterEntries) {
        return ConstrainedBox(
          constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * .5),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: _imageScrollController,
            child: Row(
              children: entry['letter'].map<Widget>((pg) => EntryImage(entryImage: pg)).toList(),
            ),
          ),
        );
      } else {
        return FractionallySizedBox(
          widthFactor: 0.70,
          child: EntryImage(entryImage: entry['afterImage']),
        );
      }
    }

    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: kIsWeb ? 0.0 : 8.0,
          left: kIsWeb ? 110.0 : 15.0,
          right: kIsWeb ? 110.0 : 15.0,
          bottom: kIsWeb ? 0.0 : 15.0,
        ),
        child: Flex(
          direction: Axis.vertical,
          children: [
            Expanded(
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        entry['beforeEntry'] ?? '',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 4.0),
                        child: Text(
                          entry['date'],
                          softWrap: true,
                          style: context.watch<AppState>().entryTextStyle,
                        ),
                      ),
                    ],
                  ),
                  FractionallySizedBox(
                    widthFactor: kIsWeb ? .70 : .85,
                    child: Text(
                      entry['entry'],
                      softWrap: true,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  SizedBox(height: hasImages ? 30.0 : 0.0),
                  Center(child: makeImageHero()),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(entry['additionalContent'] ?? ''),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key, required this.image}) : super(key: key);

  final String image;
  @override
  Widget build(BuildContext context) {
    return DisplayScaffold(
      header: CustomHeader(hasDrawer: false, header: SizedBox()),
      body: Expanded(
        child: Center(
          child: GestureDetector(
            child: Hero(
              tag: image,
              child: Image.asset(
                image,
                filterQuality: FilterQuality.high,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}

class EntryImage extends StatelessWidget {
  EntryImage({Key? key, required this.entryImage}) : super(key: key);

  final String entryImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        child: Hero(
          tag: entryImage,
          child: Image.asset(
            entryImage,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.medium,
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) {
                return DetailScreen(image: entryImage);
              },
            ),
          );
        },
      ),
    );
  }
}
