//
//  playList.swift
//  Spotify
//
//  Created by Abdullah Alnutayfi on 20/10/2021.
//

import Foundation
class Playlist : CustomStringConvertible {
    var description: String{
        """
        Hi, iam \(self.name), my shared status is \(sharred). I have \(videos.count) vidoes, please! enjoy my videos!!
        """
    }
    
    private var _name : String
    private var _shared : Bool
    private var _videos : [Video]
    var name : String{
        _name
    }
    var sharred : Bool{
        _shared
    }
    
    var videos : [Video]{
        _videos
    }
    
    init(name : String, shared : Bool, videos : [Video]){
        self._name = name
        self._shared = shared
        self._videos = videos
    }
    
      init(){
          self._name = "new playlist"
          self._shared = false
          self._videos = []
      }
    
    func addVideo(v: Video) -> Bool{
        _videos.append(v)
        return true
    }
    func removeVideo(id : Int) -> Bool{
        _videos = _videos.filter{$0.id != id}
        return true
    }
    func countVideos(category : MyCategoery) -> Int{
        var count = 0
        for i in _videos{
            if i.categoery == category{
                count+=1
            }
        }
        return count
    }
    
}
