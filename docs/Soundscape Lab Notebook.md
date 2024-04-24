# Lab Notebook
### This documentation serves as a comprehensive record of the progress made and lessons learned throughout the semester within the Soundscape project at RCOS. Designed to aid both current contributors and future members of the RCOS community, this document captures the journey of developing and refining Soundscape, an open-source project aimed at creating an accessible and innovative platform for exploring, creating, and sharing audio experiences. From tackling challenging issues to discovering new techniques, each entry in this documentation reflects our commitment to advancing the project and fostering a collaborative environment where knowledge is shared and ideas flourish.

## The issue I have been working on
"Allow the user to configure the current setting of 15 metres for turning off the audio beacon. This distance was set in the original Soundscape and took into account the general level of accuracy experienced with GPS behaviour. However, based on user feedback, having the beacon turn off automatically can lead to frustration - hence the requirement to make it configurable by the user. This could be done via 5 metre increments or less."

To address the issue of frustration caused by the automatic cut-off of the audio beacon at a fixed distance of 15 meters in Soundscape, my intial approach to this issues involves two main steps:

* A thorough examination of the codebase is undertaken to identify the specific section responsible for controlling the audio beacon's cut-off distance. Once this is identified, modifications are made to ensure that this distance becomes configurable by the user.
* A user interface (UI) component is added to the setting  to allow users to adjust the cut-off distance according to their preferences. 

