//
//  ImageView.swift
//  Ins
//
//  Created by Romain Beaujean on 11/11/2020.
//

import SwiftUI

struct ImageView: View {
       let images = Images()
       
       var body: some View {
              Image(images.burger)
                     .resizable()
                     .frame(width: 375, height: 375)
                     .scaledToFit()
              
       }
}

struct ImageView_Previews: PreviewProvider {
       static var previews: some View {
              ImageView()
       }
}
