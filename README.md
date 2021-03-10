# THEOplayerSDK

THEOplayerSDK brings the universal video player solution created by THEO Technologies to iOS and tvOS, enabling you to quickly deliver cross-platform content playback.

## Prerequisites

-   Cocoapods installed. You can install Cocoapods by following the [Cocoapods Installation Guide](https://guides.cocoapods.org/using/getting-started.html#installation) or by using [Brew](https://formulae.brew.sh/formula/cocoapods).
-   A valid THEOplayer license. Request yours via our [THEOportal](https://portal.theoplayer.com).

## Included features

THEOplayerSDK consists of modular features. This package includes only the basic features: hls, ui and airplay.  
Additional feature sets will be provided in the future.

Alternatively, you can make your own custom build via our [THEOportal](https://portal.theoplayer.com).

## Installation

***It's considered good practice to run `pod repo update` before adding new pods to your Podfile.  
This will help find newly added pods by updating the list of references to the public spec repos.  
If you just installed Cocoapods or are already up-to-date, then this step can be skipped.***

Add pod 'THEOplayerSDK-basic', '~> 2.82' similar to the following to your Podfile:

```swift
target 'MyApp' do
  pod 'THEOplayerSDK-basic', '~> 2.82'
end
```

Note that you can omit `~> 2.82` to get the latest published version of the THEOplayerSDK.

Then, using the terminal navigate to the directory where your Podfile is located and run:

```bash
pod install
```

Note that versions earlier than 2.82.0 (release 2021.1.2) are not available on the public Cocoapods registry.  
Earlier versions are available through our [THEOportal](https://portal.theoplayer.com).

## Usage

Import the THEOplayerSDK framework to your swift file:

```swift
import THEOplayerSDK
```

Next, create a player instance using one of the [THEOplayer initializers](https://docs.theoplayer.com/api-reference/ios/Classes/THEOplayer.html) and give it a [frame](https://docs.theoplayer.com/api-reference/ios/Classes/THEOplayer.html#/s:13THEOplayerSDK0A0C5frameSo6CGRectVvp) and a [source](https://docs.theoplayer.com/api-reference/ios/Classes/SourceDescription.html).

This is how the code will look like in a `UIKit` based app's View Controller:

```swift
class ViewController: UIViewController {
    var player = THEOplayer()

    func setupPlayer() {
        let playerFrame = CGRect(x: 0, y: 0, width: 320, height: 180)
        let source = "https://cdn.theoplayer.com/video/big_buck_bunny/big_buck_bunny.m3u8"
        let mimeType = "application/x-mpegurl"

        player.frame = playerFrame
        player.center = view.center
        player.source = SourceDescription(source: TypedSource(src: source, type: mimeType))
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupPlayer()
        player.addAsSubview(of: self.view)
    }
}
```

Note that the `player` variable is declared as a property of the ViewController class.  
This is required to maintain a strong reference to the player object.

This is how the code will look like in a `SwiftUI` based app's Content View:

```swift
struct THEOplayerWrapper: UIViewRepresentable {
    var player = THEOplayer()
    
    func setupPlayer() {
        let playerFrame = CGRect(x: 0, y: 0, width: 320, height: 180)
        let source = "https://cdn.theoplayer.com/video/big_buck_bunny/big_buck_bunny.m3u8"
        let mimeType = "application/x-mpegurl"

        player.frame = playerFrame
        player.source = SourceDescription(source: TypedSource(src: source, type: mimeType))
    }

    func makeUIView(context: Context) -> UIView {
        setupPlayer()
        let playerView = UIView()
        player.addAsSubview(of: playerView)
        return playerView
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        // make necessary updates
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("THEOplayer Sample")
            THEOplayerWrapper()
        }
    }
}
```

That's it! You should now have a working player in your application.

## Documentation

The documentation for THEOplayer is located on our [documentation website](https://docs.theoplayer.com).
For an example on how to setup THEOplayer, take a look at our [Getting started guide](https://docs.theoplayer.com/getting-started/01-sdks/03-ios/00-getting-started.md).

## Support

If you are having issues installing or using the package, first look for existing answers on our [documentation website](https://docs.theoplayer.com/),
and in particular our [FAQ](https://docs.theoplayer.com/faq/00-introduction.md).

You can also contact our technical support team by following the instructions on our [support page](https://docs.theoplayer.com/faq/00-introduction.md).
Note that your level of support depends on your selected [support plan](https://www.theoplayer.com/supportplans).

## License

The contents of this package are subject to the [THEOplayer license](https://www.theoplayer.com/terms).