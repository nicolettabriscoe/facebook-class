import UIKit

//create a facebook profile class that takes in different properties each time a user creates a facebook profile.
//always capitalize class
class FacebookProfile {
    //Section 1. Class Attributes - every class is going to have these
    // These are going to be our initalizers
    //These will change each time we decide to create a NEW facebook
    
    var profileName : String
    var profileAge : Int
    var profileBio : String
    var profileSchool : String
    var profileFriendList : [String]
    var profileBirthday : String
    var relationshipStatus : String
    var profileJob : String
    
    //Section 1.5 Class Constants - The relationship statuses here will never change.
    //the let keyword keeps it from changing
    
    let relationshipStatusOne = "In a relationship" //represent this by number 1
    let relationshipStatusTwo = "Single" //represent this by number 2
    let relationshipStatusThree = "It's Complicated" //Represent this by number 3
    let relationshipStatusFour = "Married" //represent this by number 4
    
    //create an initializer that will take in each users information
    init (){
        profileName = "New User"
        profileAge = 0 //maybe this is a design flaw that we may want to fix later on
        profileBio = "This is a profile"
        profileSchool = ""
        profileFriendList = [String]()
        profileBirthday = ""
        relationshipStatus = relationshipStatusThree // Another design flaw that it will always default to it's complicated
        profileJob = ""
        
    }
    
    //section 2. Functions that will support our Facebook Profile
    
    //create a function that sets a profiles name by taking in an argument
    //this serves as a "setting function" - where i'm essentially setting my Facebook Profile name
    func setProfileName(username : String) {
        profileName = username
    }
    
    func checkEverything(){
        print(profileName)
    }
}
//we are creating an object from our facebook profile class here
var mairasFacebook = FacebookProfile()

//if i want to modify mairas facebook i would call upon the object i created here
//when you want to use a function in a Class, you use a period behind the object name and you write the function name. For example, I want to set a profile name, so I use .setProfileName (calls upon the func setProfileName)
mairasFacebook.setProfileName(username: "Maira Facebook") //set profile name
mairasFacebook.checkEverything()                         //get profile name

