//
//  main.swift
//  Spotify
//
//  Created by Abdullah Alnutayfi on 20/10/2021.
//

import Foundation

print("Hello, World!")

var video  = Video(101, "Swift Fuondmental", duration: 11, categoery: .education)
var video2  = Video(102, "Mask", duration: 15, categoery: .comedy)
var video3  = Video(103, "IOS", duration: 11, categoery: .education)

var video4  = Video(104, "Friends", duration: 242, categoery: .entertainment)
var video5  = Video(105, "Football", duration: 64, categoery: .sports)
var video6  = Video(106, "Les go Mexico", duration: 234, categoery: .entertainment)

var video7  = Video(107, "Tash Ma tash", duration: 563, categoery: .comedy)
var video8  = Video(108, "basketball hahah", duration: 234, categoery: .entertainment)
var video9  = Video(109, "Wow", duration: 342, categoery: .entertainment)

var p = Playlist()
p.addVideo(v: video)
p.addVideo(v: video2)
p.addVideo(v: video3)

var p2 = Playlist()

p2.addVideo(v: video4)
p2.addVideo(v: video5)
p2.addVideo(v: video6)

var p3 = Playlist()

p3.addVideo(v: video7)
p3.addVideo(v: video8)
p3.addVideo(v: video9)

print(p.countVideos(category: .education))
print(p2.countVideos(category: .entertainment))
 var ch = Channel(name: "Movies")
ch.addPlaylist(p: p)
ch.addPlaylist(p: p2)
ch.addPlaylist(p: p3)

p2.removeVideo(id: 10)
print(p2.countVideos(category: .comedy))
print(p) // pinting object description
