# ValifySelfie

[![CI Status](https://img.shields.io/travis/mkornyali/ValifySelfie.svg?style=flat)](https://travis-ci.org/mkornyali/ValifySelfie)
[![Version](https://img.shields.io/cocoapods/v/ValifySelfie.svg?style=flat)](https://cocoapods.org/pods/ValifySelfie)
[![License](https://img.shields.io/cocoapods/l/ValifySelfie.svg?style=flat)](https://cocoapods.org/pods/ValifySelfie)
[![Platform](https://img.shields.io/cocoapods/p/ValifySelfie.svg?style=flat)](https://cocoapods.org/pods/ValifySelfie)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

### Usage
```swift
import UIKit
import ValifySelfie

// MARK: - ViewController
//
class ViewController: UIViewController {
  
  // MARK: - IBOutlets
  
  @IBOutlet weak var imageView: UIImageView!
  
  // MARK: - IBActions
  
  @IBAction func showValifyTapped(_ sender: Any) {
    showValify(from: self, with: .present)
  }
}

// MARK: - ValifyDelegate
//
extension ViewController: ValifySelfieDelegate {
  
  func didFinishScan(from viewController: UIViewController, with result: Result<UIImage, Error>) {
    viewController.dismiss(animated: true)
    let image = try? result.get()
    self.imageView.image = image?.withHorizontallyFlippedOrientation()
  }
}
```
## Installation

ValifySelfie is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ValifySelfie'
```

## Author

mokoranyali, mohammed.korany.ali@gmail.com

## License

ValifySelfie is available under the MIT license. See the LICENSE file for more info.
