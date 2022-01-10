//
//  vriendenView.swift
//  scoutingNL
//
//  Created by Thijs Govers on 08/12/2021.
//

import SwiftUI

struct VriendenView: View {
    var body: some View {
        VStack{
            Text("Vrienden").padding()
            Text("Deze pagina valt buiten de opleveringsovereenkomt").padding().multilineTextAlignment(.center)
        }
    }
}

struct vriendenView_Previews: PreviewProvider {
    static var previews: some View {
        VriendenView()
    }
}
