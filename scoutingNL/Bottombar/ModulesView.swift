//
//  modulesView.swift
//  scoutingNL
//
//  Created by Thijs Govers on 02/12/2021.
//

import SwiftUI

struct Badge : Identifiable{
    var id = UUID()
    
    var title : String
}

class ViewModel : ObservableObject{
    @Published var allBadges = [
        Badge(title: "Spelvisie en spelaanbod"),
        Badge(title: "Veiligheid"),
        Badge(title: "Programmeren"),
        Badge(title: "Gewenst gedrag"),
        Badge(title: "Scouting in de samenleving"),
        Badge(title: "Scouting academy"),
        Badge(title: "Leeftijdeigen kenmerken"),
        Badge(title: "Activiteiten & spelideeën"),
        Badge(title: "Motivatie & groepsproces"),
        Badge(title: "Presenteren & uitleggen"),
        Badge(title: "Evalueren van activiteiten"),
        Badge(title: "Gespreks vaardigheden")
    ]
    
    
    func load () async {
        // Nu iets met de webserver
        // En dan allbadges aanpassen
    }
}

struct ModulesView: View {
    @ObservedObject var model = ViewModel()
        
        var body: some View {
            
                ScrollView{
                    VStack (alignment: .leading){
                        Text("Agenda")
                            .font(.title)
                    
                        VStack(alignment: .leading){
                        Text("Deze week").multilineTextAlignment(.leading)
                        
                        Text("15 Dec. vergadering met alle leiders").multilineTextAlignment(.leading)
                            
                        Text("18 Dec. opkomst draaien welpen").multilineTextAlignment(.leading)
                            
                            Button(action: {}) {
                                Image(systemName: "arrow.right")
                            }.padding(.leading, 250)
                                .foregroundColor(Color("Purple"))
                                
                            
                        }
                        .padding(.horizontal, 55)
                        .padding(.vertical, 20)
                        .background(Color("yellowColor"))
                        .cornerRadius(15)
                            
                        Text("Modules").font(.title)
                    }
                    GeometryReader {geo in // Liever niet, maar werkt wel goed
                        LazyVGrid(columns:  [GridItem(.adaptive(minimum:geo.size.width / 3))], spacing: 20) {
                            
                            ForEach(Array(model.allBadges.enumerated()), id: \.offset) { index, badge in NavigationLink(destination:
                                ModulesDetailView (badge: badge)) {
                    
                                Text (badge.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("textColor"))
                                        .multilineTextAlignment(.leading)
                                        .padding(.horizontal, 5)
                                        .padding(.bottom, 70)
                                        .dynamicTypeSize(.large)
                                Spacer()
                                }
                                .frame(width: 170, height: 160)
                                .background((index % 4 == 2 || index % 4 == 1 ? Color("yellowColor") : Color("greenColor")))
                                .cornerRadius(15)
                            
                                
                            }
                            
                            
                            
                        }
                        
                    }
                    .task {
                        await model.load()
                    }
                }
                
            
        }
    
}

struct modulesView_Previews: PreviewProvider {
    static var previews: some View {
        ModulesView()
    }
}

