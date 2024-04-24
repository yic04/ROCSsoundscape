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
## Update 02/23/24
After familiarizing myself with Swift and Xcode during the first two weeks, I began tackling the first part of the issue: identifying the specific section responsible for controlling the audio beacon's cut-off distance. Soundscape proved to be a sophisticated project, comprising over 200 files in Xcode, all working together to build an iOS application. Despite its complexity, I embraced the challenge of exploring and learning about the project. As I've mentioned before, with Swift, you don't need to understand everything to solve the issues. Here's how I approached finding the specific section. Firstly, I delved into the documentation under the [docs](https://github.com/soundscape-community/soundscape/tree/main/docs) file in the repository, hoping to find information related to the audio beacon's cut-off distance. Unfortunately, I found nothing specific to the beacon's cut-off distance, but this exploration provided me with a better understanding of the project. Secondly, since the issue mentioned 'the current setting of 15 metres for turning off the audio beacon,' I utilized Xcode's search functionality to look for related keywords such as 'distance,' 'cut-off distance,' and '15.0'. **Note:** There are two type search in Xcode, one is search only in your current file(keyboard short cuts: command+F), and another one is search all everything in your project and support different search method(text contains, Regular Expression, etc), which is located at the fourth on your Xcode tool bar and with magnifier icon 🔍.

After several hours of searching and filtering out unrelated code segments, I finally narrowed down to some potential coordinates for the audio beacon cut-off distance. 
To confirm those potential coordinates, I requested Professor Turner to invite me to the Slack for the Soundscape Community. I highly recommend that anyone interested in working on Soundscape reach out to Professor Turner (if he is still the project lead for Soundscape Testing) to request access to the Slack community. In the Slack, you can ask questions about iOS development, Soundscape, SwiftUI, or anything else, and get support from fellow developers. In the Slack, I reached out to Daniel Steinbrook, who is RPI almuni and also an expert on soundscape, developing soundscape for years, about the those coordinates.

Finally, I knew that the audio beacon cut-off distance has been hard-coded as a constant `EnterImmediateVicinityDistance` and defined [here](https://github.com/soundscape-community/soundscape/blob/main/apps/ios/GuideDogs/Code/Data/Destination%20Manager/DestinationManager.swift#L29) and Daniel also explained to me that "Beacons are implemented using a more abstract concept of "geofencing" which just means defining a boundary around a point that a user can be inside or outside.
## Update 03/01/24
From last week, I have learned that the audio beacon cut-off distance has been hard-coded as constant. Before I move to the second part of this issue, which is to implement an UI that makes the distance configurable by the user, I need to understand how to change that constant.

Below is the acutal implementation of constant `EnterImmediateVicinityDistance` in Soundscape:
``` strings
    static let EnterImmediateVicinityDistance: CLLocationDistance = 15.0
```
This syntax is very unqiue to Swift, and I don't understand when the first time I saw it. However, it is very easy to understand, after doing some study(never skip basic syntax for a language). We can break down into following parts:
* static: This keyword means that the property belongs to the type itself rather than to instances of the type. It can be accessed using the type name, e.g., ClassName.propertyName.
* let:This keyword declares a constant (unchangeable) value\
* EnterImmediateVicinityDistance: As we all known, variable name
* CLLocationDistance : This is the type for constant
* = 15.0 : This assigns the inital value 15 to constant. 

If this is written in Java it would be :
``` strings
static final CLLocationDistance EnterImmediateVicinityDistance = 15;
```
Once I understand what it is, I need to understand how can I change it in other files.
* If I need to modify the constant frequently, I need to change it to a variable. It can accomplish easily by replacing let keyword with var.
    ``` strings
    static var EnterImmediateVicinityDistance: CLLocationDistance = 15.0
    ```
* I can write a static method to modify the variable, so I can easily change the value of that variable in other class.
  ```
  static func setEnterImmediateVicinityDistance(_ newValue: CLLocationDistance) {
    EnterImmediateVicinityDistance = newValue
    }
  ```
## Update 03/29/24
Now, I'm moving forward to the second part of this issue, which involves implementing a user interface (UI) to make the audio beacon cut-off distance configurable. However, I've encountered more challenges than expected since starting this project. Implementing a UI in Swift requires a comprehensive understanding of how views, ViewControllers, and Storyboards work together seamlessly. Soundscape, being a sophisticated project, already has numerous UI components in place. Therefore, it's crucial to ensure that my implementation aligns with the existing design language and doesn't conflict with the user experience of the app. Additionally, I need to consider backward compatibility and ensure that users can seamlessly transition between the old and new features without any disruptions. This involves careful consideration of design patterns, user interactions, and maintaining consistency throughout the app. Despite these challenges, I'm eager to tackle them head-on and contribute to improving Soundscape for its users. I would understanding the concepts and syntax is one of the diffuclt part of this project.

**Here is a summary you might want to learn before you start to design your own UI in swift.**
* View
  
  In Swift, a "view" is a fundamental component used to build the user interface (UI) of an application. It represents a visual element that users interact with, such as buttons, labels, text fields, and more. Views are responsible for rendering content on the screen and responding to user input. They can be organized hierarchically, allowing for complex UI layouts. In essence, views are the building blocks of an app's UI, defining its structure, appearance, and behavior. There are many different built-in views for different UI development, including ScrollView,CollectionView, TableView and so on. There are might be some difference between the same view in different platform. 
* Different View Stacks
  
  In SwiftUI, 'HStack', 'ZStack', and 'VStack' are layout containers that allow you to arrange views horizontally, vertically, or in a layered manner respectively. These layout containers provide a flexible and intuitive way to arrange views in SwiftUI, making it easy to create complex user interfaces. They are often used in combination with each other to achieve more complex layouts.
  * HStack (Horizontal Stack)
  
    HStack arranges its child views horizontally from leading to trailing edge.
  * ZStack (Layer Stack)

    ZStack arranges its child views on top of each other, with the first view added being at the back and subsequent views being layered on top.
  * VStack (Vertical Stack)
  
    VStack arranges its child views vertically from top to bottom.
* View Controller
  
  "In iOS development, a view controller is a fundamental building block used within the Model-View-Controller (MVC) design pattern to manage the presentation and behavior of a user interface (UI). View controllers handle various tasks, including managing views, handling user interaction, coordinating data flow between the app's data model and views, navigating between screens, and managing the app's lifecycle. They are responsible for creating, manipulating, and coordinating the presentation of views, responding to user input, such as taps, gestures, and button presses, and ensuring that the UI reflects the current state of the data. Additionally, view controllers manage transitions, animations, and the flow of the app's user interface, as well as the lifecycle of the app's components, including initializing, loading views, responding to view events, and deallocating resources when they're no longer needed." Same as the View, there are many different type of View Controller in SwiftUI(Again, you don't have to know all of them) And you might want to learn how View Controller and storyboard/scene work together. There are two keyword you must know for UI development in View Controller:
  * IBOutlet:
  
    "IBOutlet is a keyword used in iOS development with Interface Builder, which is a graphical tool for designing user interfaces. It is used in conjunction with properties in a view controller or other custom class to establish a connection between a user interface element defined in a storyboard or XIB file and the corresponding code."
  * IBAction:
    
    "IBAction is another keyword used in iOS development with Interface Builder. It is used to define an action method that can be connected to a user interface element, such as a button or a slider, in a storyboard or XIB file."
* StoryBoard:
  
    "In Swift, a storyboard is a visual interface design tool provided by Xcode for developing iOS, macOS, watchOS, and tvOS applications. It allows developers to create and prototype user interfaces graphically, without needing to write code for every aspect of the interface. With storyboards, developers can visually connect different scenes representing view controllers, drag and drop UI elements onto the canvas, and customize their appearance and behavior using Interface Builder. Segues define transitions between view controllers, enabling developers to create complex navigation flows, while support for size classes and Auto Layout ensures adaptive layouts across various screen sizes and orientations. Overall, storyboards streamline the development process, providing a clear visual representation of the app's structure and flow while enabling rapid iteration and experimentation."Bascially, storyboard is like a flow-graph for view controller. It can determine the hirearchy of view controller.


#### Here are some useful resources if you are visual leaner like me and want to learn UI development in Swift:
* https://www.youtube.com/watch?v=1HOcrAnlpgE&list=PL8seg1JPkqgG3822Pbf_H9xldrODNV3XI
 This is video series include the most aspects of UI design in Swift UI, including, IBAction & IBOutlet, Storyboard, extensions, even how to implement widget. It is beginner friendly.
* https://www.youtube.com/watch?v=wEF9AXy8-Sc
This video teaches how to use a variety of essential SwiftUI user interface elements and containers, including HStack, ZStack, and different of views.
* https://www.youtube.com/watch?v=emDjAz49tzE
  This video provide a quick introduction to Xcode User Interface, if you are not faimilar with Xcode, I highly recommand you to watch this video.

