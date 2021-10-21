//
//  channel.swift
//  Spotify
//
//  Created by Abdullah Alnutayfi on 20/10/2021.
//

import Foundation

class Channel : CustomStringConvertible {
    var description: String{
        """
        Hi there I am \(self._name) channel. Please subscribe and share me!
        """
    }
    
    private var _name : String
    private var _playlist : [Playlist]
    
    init(name : String){
        self._name = name
        self._playlist = []
    }
    
    
    func addPlaylist(p : Playlist) -> Bool{
        let p1 = Playlist(name: p.name, shared: p.sharred, videos: p.videos)
        _playlist.append(p1)
        return true
    }
    
    func deletePlaylist(name : String) -> Bool{
        _playlist = _playlist.filter{$0.name != name}
        return true
    }
    func flipShared(p : Playlist) -> Bool{
        return !p.sharred
    }
    func getPlaylist( categoery: MyCategoery) -> Playlist{
        let newPlaylist = Playlist()
        for playlist in _playlist{
            for video in playlist.videos{
                if video.categoery == categoery {
                    newPlaylist.addVideo(v: video)
                }
            }
        }
        return newPlaylist
    }
    func sortPlaylist(){
        _playlist =  _playlist.sorted{$0.videos.count > $1.videos.count}
    }
}
