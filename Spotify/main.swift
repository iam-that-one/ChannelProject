//
//  main.swift
//  Spotify
//
//  Created by Abdullah Alnutayfi on 20/10/2021.
//

import Foundation
var ch = Channel(name: "Movies")
print(ch)

var video  = Video(101, "Swift Fuondmental", duration: 11, categoery: .education)
var video2  = Video(102, "Mask", duration: 15, categoery: .comedy)
var video3  = Video(103, "IOS", duration: 11, categoery: .education)

var video4  = Video(104, "Friends", duration: 242, categoery: .entertainment)
var video5  = Video(105, "Football", duration: 64, categoery: .sports)
var video6  = Video(106, "Let's go Mexico", duration: 234, categoery: .entertainment)

var video7  = Video(107, "Tash Ma tash", duration: 563, categoery: .comedy)
var video8  = Video(108, "basketball hahah", duration: 234, categoery: .entertainment)
var video9  = Video(109, "Wow", duration: 342, categoery: .entertainment)

var p = Playlist(name: "Great videos", shared: true, videos: [] )
p.addVideo(v: video)
p.addVideo(v: video2)
p.addVideo(v: video3)

var p2 = Playlist(name: "Favourite videos", shared: false, videos: [] )

p2.addVideo(v: video4)
p2.addVideo(v: video5)
p2.addVideo(v: video6)

var p3 = Playlist(name: "To be downloadded videos", shared: false, videos: [] )

p3.addVideo(v: video7)
p3.addVideo(v: video8)
p3.addVideo(v: video9)

print(p.countVideos(category: .education))
print(p2.countVideos(category: .entertainment))

ch.addPlaylist(p: p)
ch.addPlaylist(p: p2)
ch.addPlaylist(p: p3)

p2.removeVideo(id: 104)
print(p2.countVideos(category: .comedy))
print(p) // pinting the description of object p
print(p2) // pinting the description of object p2 // you will see just 2 videos in Favourite videos playlist not 3
print(p3) // pinting the description of object p3
p.printMyVideos() // prints all videos in playlist p
print("-------------")
p2.printMyVideos() // prints all videos in playlist p2
print("-------------")
p3.printMyVideos() // prints all videos in playlist p3
