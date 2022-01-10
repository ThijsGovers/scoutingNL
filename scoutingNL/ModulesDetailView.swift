//
//  modulesDetailView.swift
//  scoutingNL
//
//  Created by Thijs Govers on 02/12/2021.
//

import SwiftUI

struct ModulesDetailView : View {
        let badge : Badge
        var body: some View {
            Text (badge.title)
                .padding().background(Color("lightBlue")).cornerRadius(15)
        }
}

struct modulesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ModulesDetailView(badge: Badge(title: "Hallo"))
    }
}
