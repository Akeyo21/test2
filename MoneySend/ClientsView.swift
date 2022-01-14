//
//  ContentView.swift
//  MoneySend
//  This is the root view of the app
//  Created by Victoria on 14/01/2022.
//

import SwiftUI

struct ClientsView: View {
    var body: some View {
        VStack {
            HeaderView()
            Spacer()
            BodyView()
            Spacer()
            NavigationView()
        }
    }
}

struct HeaderView:View{
    var body: some View {
        
        Text("Clients").font(.title).fontWeight(.bold).frame(maxWidth: .infinity, alignment: .leading)
        
    }
}

struct BodyView:View{
    var body: some View {
        VStack{
            Text("Client 1")
            Text("Client 2")
            Text("Client 3")
            Text("Client 4")
        }
    }
}

struct NavigationView:View{
    var body: some View {
        HStack(){
            Text("Home").padding()
            Spacer()
            Text("Due")
            Spacer()
            Label("Add", systemImage:"plus.circle")
            Spacer()
            Text("Received").padding()
        }
    }
}

//To be displayed to the canvas
struct ClientsView_Previews: PreviewProvider {
    static var previews: some View {
        ClientsView()
    }
}
