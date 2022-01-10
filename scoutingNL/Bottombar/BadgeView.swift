//
//  badgeView.swift
//  scoutingNL
//
//  Created by Thijs Govers on 02/12/2021.
//

import SwiftUI

struct BadgeView: View {
    var body: some View {
        VStack{
            Text("Badges")
            Image(systemName: "circles.hexagongrid.fill").resizable().scaledToFit().padding()
        }.navigationTitle("Badges")
    }
}

struct badgeView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeView()
    }
}
