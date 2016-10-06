//
//  ViewController.swift
//  CustomCell
//
//  Created by Rama Milaneh on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    
    let reuseIdentifier = "friendCell"
    var thrillerAlbum: [Song] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createThrillerAlbum()
    }
    
    func createThrillerAlbum() {
        let firstTrack = Song(name: "Wanna Be Startin' Somethin", album: "Thriller", length: "6:03")
        let secondTrack = Song(name: "Baby Be Mine", album: "Thriller", length: "4:20")
        let thirdTrack = Song(name: "The Girl Is Mine", album: "Thriller", length: "3:42")
        let fourthTrack = Song(name: "Thriller", album: "Thriller", length: "5:57")
        let fifthTrack = Song(name: "Beat It", album: "Thriller", length: "4:18")
        let sixthTrack = Song(name: "Billie Jean", album: "Thriller", length: "4:54")
        let seventhTrack = Song(name: "Human Nature", album: "Thriller", length: "4:06")
        let eightTrack = Song(name: "P.Y.T. (Pretty Young Thing)", album: "Thriller", length: "3:59")
        let ninthTrack = Song(name: "The Lady in My Life", album: "Thriller", length: "5:00")
        
        thrillerAlbum = [firstTrack, secondTrack, thirdTrack, fourthTrack, fifthTrack, sixthTrack, seventhTrack, eightTrack, ninthTrack]
    }


        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return thrillerAlbum.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SongCell", for: indexPath) as! SongCell
        cell.singerImagelabel.image = UIImage(named: "Thriller")
        cell.songNameLabel.text = thrillerAlbum[indexPath.row].name
        cell.durationLabel.text = thrillerAlbum[indexPath.row].length
        return cell
    }


}

