# Lab Notebook
### This documentation serves as a comprehensive record of the progress made and lessons learned throughout the semester within the Soundscape project at RCOS. Designed to aid both current contributors and future members of the RCOS community, this document captures the journey of developing and refining Soundscape, an open-source project aimed at creating an accessible and innovative platform for exploring, creating, and sharing audio experiences. From tackling challenging issues to discovering new techniques, each entry in this documentation reflects our commitment to advancing the project and fostering a collaborative environment where knowledge is shared and ideas flourish.

## The issue I have been working on
"Allow the user to configure the current setting of 15 metres for turning off the audio beacon. This distance was set in the original Soundscape and took into account the general level of accuracy experienced with GPS behaviour. However, based on user feedback, having the beacon turn off automatically can lead to frustration - hence the requirement to make it configurable by the user. This could be done via 5 metre increments or less."

To address the issue of frustration caused by the automatic cut-off of the audio beacon at a fixed distance of 15 meters in Soundscape, my intial approach to this issues involves two main steps:

* A thorough examination of the codebase is undertaken to identify the specific section responsible for controlling the audio beacon's cut-off distance. Once this is identified, modifications are made to ensure that this distance becomes configurable by the user.
* A user interface (UI) component is added to the setting  to allow users to adjust the cut-off distance according to their preferences. 

## Update 02/09/24
I think I am still new to Swift and iOS developement, even I have been participated in another RCOS project, [RPI shuttle trucker](https://github.com/wtg/Shuttle-Tracker-SwiftUI) for a semster. So, for first two week, I decided to get familiar with Xcode and Swift first rather than go straight into the project. I spended my time to explore Xcode's interface, play around with Swift syntax, and do some small coding exercises or tutorials to get comfortable. (If you want me to decrisbe what is Swift in one sentence, I would say "it is something like C++ or Objective C but more sophisticated and without the semi colon") Take some time to understand about the Xcode interface and Swift basics(control flow, data-type, basic syntax) would not only help you transition smoothly into your project with a better understanding of how to implement your ideas but also help your programing in general.

**If you have taken or are taking CSCI1200(Data Structure)**, you can get familiar with Swift quickly. Swift and C++ are basically the same on control flow(If-else statement, switch,etc), data structure(array, link-list,etc) and so on. There are only few key difference between these two language:
* Syntax:
  * C++ has a more complex and verbose syntax compared to Swift. It uses semicolons to end statements and requires explicit memory management (e.g., using pointers and manual memory allocation/deallocation).
  * Swift has a cleaner and more concise syntax. It doesn't use semicolons to end statements and features automatic memory management through Automatic Reference Counting (ARC).
* Memory Management:
  * In C++, developers are responsible for managing memory explicitly, which can lead to issues like memory leaks and dangling pointers if not handled carefully.
  * Swift uses Automatic Reference Counting (ARC) to manage memory automatically. It deallocates objects when they are no longer referenced, reducing the chances of memory-related bugs.

Here is an example of Swift Code:
``` strings
func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("John", on: "Wednesday")
```

It might take some time to familiarize the syntax of Swift, but you don't have to understand or memorize everything in Swift. If you don't understand some concepts,like ARC, it is totally fine, because you will get faimilar with it as you learn more about Swift. **Remember you don't have to understand everything about Swift or iOS development to start work on this project.**


Here are some resource you might find useful when you start to learning about Swift:
* https://docs.swift.org/swift-book/documentation/the-swift-programming-language/guidedtour/
This is the official language guide.You don’t need to memorize every chapter or anything like that, but it’s a great resource to look over. It offers guided tours covering essential aspects of SwiftUI development, ranging from basic syntax to various data structures.
* https://developer.apple.com/tutorials/swiftui and https://developer.apple.com/tutorials/swiftui-concepts This is the official tutorial for SwiftUI and SwiftUI concepts from Apple. If you are new to programming and SwiftUI, this will be a great place to start.
* https://www.youtube.com/watch?v=09TeUXjzpKs This video teaches you how to get set up for iOS app development, how to use the tools required and how to write/read Swift code so that you can build your own app. If you are a visual learner, this will be a great place to start.
* https://www.youtube.com/watch?v=F2ojC6TNwws This video is a comprehensive tutorial for SwiftUI. Basically, tecahes you everything you might need for SwiftUI.
