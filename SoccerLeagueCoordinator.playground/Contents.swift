
import UIKit

let players: [[String: Any]] = [
    ["name": "Joe Smith", "height": 42, "experienced": true, "guardian": "Jim and Jan Smith"],
    ["name": "Jill Tanner", "height": 36, "experienced": true, "guardian": "Clara Tanner"],
    ["name": "Bill Bon", "height": 43, "experienced": true, "guardian": "Sara and Jenny Bon"],
    ["name": "Eva Gordon", "height": 45, "experienced": false, "guardian": "Wendy and Mike Gordon"],
    ["name": "Matt Gill", "height": 40, "experienced": false, "guardian": "Charles and Sylvia Gill"],
    ["name": "Kimmy Stein", "height": 41, "experienced": false, "guardian": "Bill and Hillary Stein"],
    ["name": "Sammy Adams", "height": 45, "experienced": false, "guardian": "Jeff Adams"],
    ["name": "Karl Saygan", "height": 42, "experienced": true, "guardian": "Heather Bledsoe"],
    ["name": "Suzane Greenberg", "height": 44, "experienced": true, "guardian": "Henrietta Dumas"],
    ["name": "Sal Dali", "height": 41, "experienced": false, "guardian": "Gala Dali"],
    ["name": "Joe Kavalier", "height": 39, "experienced": false, "guardian": "Sam and Elaine Kavalier"],
    ["name": "Ben Finkelstein", "height": 44, "experienced": false, "guardian": "Aaron and Jill Finkelstein"],
    ["name": "Diego Soto", "height": 41, "experienced": true, "guardian": "Robin and Sarika Soto"],
    ["name": "Chloe Alaska", "height": 47, "experienced": false, "guardian": "David and Jamie Alaska"],
    ["name": "Arnold Willis", "height": 43, "experienced": false, "guardian": "Clara Willis"],
    ["name": "Phillip Helm", "height": 44, "experienced": true, "guardian": "Thomas Helm and Eva Jones"],
    ["name": "Les Clay", "height": 42, "experienced": true, "guardian": "Wynonna Brown"],
    ["name": "Herschel Krustofski", "height": 45, "experienced": true, "guardian": "Hyman and Rachel Krustofski"]
]

var teamDragons: [[String: Any]] = []
var teamSharks: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []

var teams = [teamDragons, teamSharks, teamRaptors]

var expPlayers: [[String: Any]] = []
var inexpPlayers: [[String: Any]] = []

for player in players {
    if player["experienced"] as! Bool {
        expPlayers.append(player)
    } else {
        inexpPlayers.append(player)
    }
}

let maxPlayersPerTeam = players.count / 3


var letters: [String] = []

var counter = 0

for team in teams {
    var teamPracticeDate = ""
    var teamName = ""
    
    // I would use a switch statement here but it doesn't make a huge difference
    if (counter == 0) {
        teamPracticeDate = "March 17, 1pm"
        teamName = "Dragons"
    } else if (counter == 1) {
        teamPracticeDate = "March 17, 3pm"
        teamName = "Sharks"
    } else {
        teamPracticeDate = "March 18, 1pm"
        teamName = "Raptors"
    }
    
    for player in team {
        let letter = "Dear \(player["guardian"]!), your child, \(player["name"]!) has been assigned to the \(teamName) team. The date and time of your child's first team practice is \(teamPracticeDate)."
        letters.append(letter)
    }
    
    counter += 1
}
