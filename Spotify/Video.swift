//
//  Video.swift
//  Spotify
//
//  Created by Abdullah Alnutayfi on 20/10/2021.
//

import Foundation

class Video : CustomStringConvertible{
    var description: String{
        return ""
    }
    
    private var _id : Int
    private var _title : String
    private var _duration : Int
    private var _categoery : MyCategoery
    
    var id : Int{
        _id
    }
    var title : String{
        _title
    }
    var categoery : MyCategoery{
        _categoery
    }
    init(_ id : Int, _ title : String, duration : Int,categoery : MyCategoery  ){
        self._id = id
        self._title = title
        self._duration = duration
        self._categoery = categoery
    }
}


