//
//  VideoListScreen.swift
//  TableView
//
//  Created by Lab on 1/6/20.
//  Copyright © 2020 Lab. All rights reserved.
//

import UIKit

class VideoListScreen: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var videos: [Video] = []

  
    override func viewDidLoad() {
        super.viewDidLoad()
        videos = createArray()
        

    }
    func createArray() -> [Video]{
        var tempvideos: [Video] = []
        let video1 = Video(image: UIImage(named: "pict")!, title: "My first App")
        let video2 = Video(image: UIImage(named: "pict")!, title: "My Second App")
    
  
        tempvideos.append(video1)
        tempvideos.append(video2)
        return tempvideos
    }
}

extension VideoListScreen: UITableViewDataSource, UITableViewDelegate{
    func  tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        cell.setVideo(video: video)
        
        return cell
    }
}
