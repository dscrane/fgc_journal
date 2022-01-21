import 'package:fgc/app_state.dart';
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
    final ScrollController _entryScrollController = ScrollController();

    Widget? makeImageHero() {
      if (entry['afterEntry'] == null) {
        return null;
      }
      return GestureDetector(
        child: Hero(
          tag: 'imageHero',
          child: Image.asset(
            entry['afterEntry'],
            fit: BoxFit.cover,
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) {
                return DetailScreen(image: entry['afterEntry']);
              },
            ),
          );
        },
      );
    }

    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: kIsWeb ? 0.0 : 8.0,
          left: kIsWeb ? 110.0 : 15.0,
          right: kIsWeb ? 110.0 : 15.0,
          bottom: kIsWeb ? 0.0 : 15.0,
        ),
        child: Expanded(
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
                    padding: const EdgeInsets.symmetric(horizontal: 110.0, vertical: 4.0),
                    child: Text(
                      entry['date'],
                      softWrap: true,
                      style: context.watch<AppState>().entryTextStyle,
                    ),
                  ),
                ],
              ),
              Text(
                entry['entry'],
                softWrap: true,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(height: entry['afterEntry'] != null ? 15.0 : 0.0),
              FractionallySizedBox(
                widthFactor: 0.70,
                child: makeImageHero(),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(entry['additionalContent'] ?? ''),
              )
            ],
          ),
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
              tag: 'imageHero',
              child: Image.asset(
                image,
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
