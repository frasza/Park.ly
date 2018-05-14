//
//  RoundButton.swift
//  Park.ly
//
//  Created by Žan Fras on 14/05/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit

class RoundButton: UIButton {

  override func awakeFromNib() {
    super.awakeFromNib()
    
    configureView()
  }
  
  func configureView() {
    self.layer.cornerRadius = self.frame.height / 2
    self.layer.shadowRadius = 20
    self.layer.shadowOpacity = 0.5
    self.layer.shadowColor = UIColor.black.cgColor
  }

}
