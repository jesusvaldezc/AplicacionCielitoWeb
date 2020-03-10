//
//  SwiftUIView.swift
//  CW3.0
//
//  Created by Jesús Valdez on 30/01/20.
//  Copyright © 2020 Jesús Valdez. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        
        
        Text("Round Me")
        .padding()
        .background(Color.red)
        .cornerRadius(25)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
