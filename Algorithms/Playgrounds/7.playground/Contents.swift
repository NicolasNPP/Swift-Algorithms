import UIKit
 
let tracks = ["a","b","c","d","e"]

let selectedTrack = "b"
var playlist = [String]()
var priorityTracks = [String]()

let index = tracks.index(where: {return $0 == selectedTrack})
let prefix = tracks.prefix(upTo: index!)
let suffix = tracks.suffix(from: index!)

let arr = suffix + prefix
