# ValifySelfie

[![CI Status](https://img.shields.io/travis/mkornyali/ValifySelfie.svg?style=flat)](https://travis-ci.org/mkornyali/ValifySelfie)
[![Version](https://img.shields.io/cocoapods/v/ValifySelfie.svg?style=flat)](https://cocoapods.org/pods/ValifySelfie)
[![License](https://img.shields.io/cocoapods/l/ValifySelfie.svg?style=flat)](https://cocoapods.org/pods/ValifySelfie)
[![Platform](https://img.shields.io/cocoapods/p/ValifySelfie.svg?style=flat)](https://cocoapods.org/pods/ValifySelfie)

## Screenshots
![300E472C-A3EA-43E5-A983-D0EFD7351FEA](https://user-images.githubusercontent.com/45698820/131361501-7eb825cd-a881-4d69-93ce-0d0aa27bf64e.jpg)
![5026D392-BC3E-42AF-A221-1BA84A59047D](https://user-images.githubusercontent.com/45698820/131361511-1adc97e8-2255-4002-b350-935b4d2bb372.jpg)
![69628F0D-58C0-4BC4-BF6F-240042A569FB](https://user-images.githubusercontent.com/45698820/131361515-ad5318df-ce08-4147-9ee2-5579acbba9b2.jpg)
![C2DED783-8006-40B3-A44A-B53D5F6F4006](https://user-images.githubusercontent.com/45698820/131361523-8298383f-93c5-438b-86ee-77ba94e23a30.jpg)


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
