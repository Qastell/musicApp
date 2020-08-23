//
//  SongCollectionViewCell.swift
//  Music Player
//
//  Created by Кирилл Романенко on 24/05/2020.
//  Copyright © 2020 Кирилл. All rights reserved.
//

import UIKit

class AlbumViewCell: UICollectionViewCell {
    
    static let identifier = "SongCollectionViewCell"
    
    var imageViewSong = UIImageView()
    
    var album: Album? {
        didSet {
            guard let album = self.album else { return }
            imageViewSong.image = UIImage(named: album.albumName)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setImageSong()
    }
    
    private func setImageSong() {
        imageViewSong.contentMode = .scaleAspectFill
        addSubview(imageViewSong)
        setImageConstraints ()
    }
    
    private func setImageConstraints() {
        imageViewSong.translatesAutoresizingMaskIntoConstraints = false
        imageViewSong.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        imageViewSong.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        imageViewSong.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        imageViewSong.widthAnchor.constraint(equalTo: imageViewSong.heightAnchor).isActive = true
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}