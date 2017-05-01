//
//  ChooseProfilePhotoTableViewModel.swift
//  CHMeetupApp
//
//  Created by Dmitriy Lis on 20/04/2017.
//  Copyright © 2017 CocoaHeads Community. All rights reserved.
//

import Foundation

struct ChooseProfilePhotoTableViewModel {
  let userEntity: UserEntity
  weak var delegate: ChooseProfilePhotoTableViewCellDelegate?
}

extension ChooseProfilePhotoTableViewModel: CellViewModelType {
  func setup(on cell: ChooseProfilePhotoTableViewCell) {
    if let photoURL = userEntity.photoURL, let url = URL(string: photoURL) {
      cell.photoImageView.loadImage(from: url)
    }
    cell.delegate = delegate
  }
}
