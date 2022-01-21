//
//  ContentView.swift
//  scoutingNL
//
//  Created by Thijs Govers on 30/11/2021.
//

import SwiftUI




struct ContentView: View {
    var body: some View {
        
            TabView {
                NavigationView{
                    ModulesView()
                    .navigationBarTitle("Modules", displayMode: .inline)
                    .toolbar {
                        Button(action: {
                        }){
                            NavigationLink(destination: ProfielView()){
                                Image(systemName: "line.horizontal.3")
                            }
                        }
                    }
                }
                
                NavigationView{
                    BadgeView()
                    .navigationBarTitle("Badges", displayMode: .inline)
                    .tabItem {
                        Button(action: {
                        }){
                            NavigationLink(destination: BadgeView()){
                                Image(systemName: "circle.grid.cross.up.fill")
                            }
                        }
                    }
                }
                
                
                
                AgendaView()
                    .tabItem {
                    Label("Agenda", systemImage: "calendar")
                    }
                
                VriendenView()
                    .tabItem {
                    Label("Vrienden", systemImage: "person.3")
                    }
             }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
