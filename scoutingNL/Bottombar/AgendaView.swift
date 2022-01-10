//
//  agendaView.swift
//  scoutingNL
//
//  Created by Thijs Govers on 08/12/2021.
//

import SwiftUI

struct AgendaView: View {
    var body: some View {
        VStack{
            Text("Agenda").padding()
            Text("Deze pagina valt buiten de opleveringsovereenkomt").padding().multilineTextAlignment(.center)
        }
    }
}

struct agendaView_Previews: PreviewProvider {
    static var previews: some View {
        AgendaView()
    }
}
