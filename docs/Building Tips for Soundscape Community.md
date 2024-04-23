# Building Tips for Soundscape Community
Welcome to the journey of testing Soundscape for RCOS! As someone who has delved into an issue within the project, I've compiled a set of tips aimed at enhancing your understanding of Soundscape, SwiftUI, and iOS app development. This document serves as your roadmap to navigate through the intricacies of our project, empowering you to contribute effectively to the testing efforts.

Within these pages, you'll find valuable insights derived from practical experience, aimed at accelerating your familiarity with Soundscape and SwiftUI. Whether you're a seasoned developer or just starting out, these tips are crafted to provide actionable guidance that will streamline your journey into the world of sound exploration and iOS development.

Think of this document as your personalized instruction manual, designed to equip you with the knowledge and skills needed to make meaningful contributions to Soundscape for RCOS

## What is Soundscape? 
[Microsoft Soundscape](https://www.microsoft.com/en-us/research/product/soundscape/overview/) [was] a product from Microsoft Research that explored the use of innovative audio-based technology to enable people to build a richer awareness of their surroundings, thus becoming more confident and empowered to get around. Unlike step-by-step navigation apps, Soundscape uses 3D audio cues to enrich ambient awareness and provide a new way to relate to the environment. It allows you to build a mental map and make personal route choices while being more comfortable within unfamiliar spaces. Soundscape is designed to be used by everyone and live in the background; therefore, feel free to use it in conjunction with other apps such as podcasts, audio books, email and even GPS navigation!
## The issue that I worked on:
“Allow the user to configure the current setting of 15 metres for turning off the audio beacon. This distance was set in the original Soundscape and took into account the general level of accuracy experienced with GPS behaviour. However, based on user feedback, having the beacon turn off automatically can lead to frustration - hence the requirement to make it configurable by the user. This could be done via 5 metre increments or less.”

## How to get started with building Soundscape?
* Fork the repository from Soundscape Community to your own github, link: https://github.com/soundscape-community/soundscape?tab=readme-ov-file
* Clone the repository that you forked from Soundscape Community to your own local machine.
* Make sure that your MacOS and Xcode on your local machine have been updated to the newest version.
* Open soundscape/apps/ios/GuideDogs.xcworkspace in Xcode.

**If you don't have an Apple Developer account and you want to build Soundscape, do the following:**
* Open GuideDogs.xcworkspace in xcode.
* Press command 1, to open the project navigator.
* Scroll all the way to the top, to the guide dogs project.
* Navigate to the "signing and capabilities" tab by hitting the button with the same label.
* Choose whatever kind of build you want to make (debug is probably fine)
* Expand the first signing option, (E.G. signing, debug), and change the team to your personal account. Make sure that "automatically manage signing" is checked.
* Either expand and change any other signing settings for build types if you need to (E.G. for release as well), or move on to the next step.
* Find the remove buttons for any capabilities. Specifically ones for notifications, cloud sync and associated domains. These require entitlements granted by a paid dev account.

**There is more building tips for Soundscape on Xcode on [this page](https://github.com/soundscape-community/soundscape/wiki/build-tips)**

**If new to SwiftUI or iOS development:**
Here is some resource that would be useful to get familiar with SwiftUI and iOS development
* https://docs.swift.org/swift-book/documentation/the-swift-programming-language/guidedtour/
This is the official language guide.You don’t need to memorize every chapter or anything like that, but it’s a great resource to look over. It offers guided tours covering essential aspects of SwiftUI development, ranging from basic syntax to various data structures.
* https://developer.apple.com/tutorials/swiftui and https://developer.apple.com/tutorials/swiftui-concepts This is the official tutorial for SwiftUI and SwiftUI concepts from Apple. If you are new to programming and SwiftUI, this will be a great place to start.
* https://www.youtube.com/watch?v=09TeUXjzpKs This video teaches you how to get set up for iOS app development, how to use the tools required and how to write/read Swift code so that you can build your own app. If you are a visual learner, this will be a great place to start.
* https://www.youtube.com/watch?v=F2ojC6TNwws This video is a comprehensive tutorial for SwiftUI. Basically, tecahes you everything you might need for SwiftUI.



