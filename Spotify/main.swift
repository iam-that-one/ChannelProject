//
//  main.swift
//  Spotify
//
//  Created by Abdullah Alnutayfi on 20/10/2021.
//

import Foundation

print("Hello, World!")

var video  = Video(101, "Swift Fuondmental", duration: 11, categoery: .education)
var video2  = Video(101, "Mask", duration: 15, categoery: .comedy)
var video3  = Video(101, "IOS", duration: 11, categoery: .education)

var video4  = Video(101, "Friends", duration: 242, categoery: .comedy)
var video5  = Video(102, "Football", duration: 64, categoery: .sports)
var video6  = Video(103, "Les go Mexico", duration: 234, categoery: .entertainment)

var video7  = Video(101, "Tash Ma tash", duration: 563, categoery: .comedy)
var video8  = Video(102, "basketball hahah", duration: 234, categoery: .entertainment)
var video9  = Video(103, "Wow", duration: 342, categoery: .entertainment)

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

p2.removeVideo(id: 101)
print(p2.countVideos(category: .comedy))
print(p)
