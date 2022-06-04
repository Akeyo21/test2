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
            BottomPanel()
        }
    }
}

//Clicking on a client name should take you
// an individual client page and we should use NavigationView
struct HeaderView:View{
    var body: some View {
        Text("Clients").font(.title).fontWeight(.bold).frame(maxWidth: .infinity, alignment: .leading).padding()
        
    }
}

struct BodyView:View{
    var body: some View {
            List{
                CardView(clientName: "Victoria", amountDue: 1000, phoneNumber: 0711988653)
                CardView(clientName: "Client 2", amountDue: 1000, phoneNumber: 0711988653)
                CardView(clientName: "Client 3", amountDue: 1000, phoneNumber: 0711988653)
                CardView(clientName: "Client 4", amountDue: 1000, phoneNumber: 0711988653)
            }
    }
}

struct BottomPanel:View{
    var body: some View {
        NavigationView{
            HStack(){
                Text("Home").padding()
                Spacer()
                Text("Due")
                Spacer()
                Label("Add", systemImage:"plus.circle")
                Spacer()
                Text("Sent")
                Spacer()
                Text("Received").padding()
            }
        }
    }
}

//To be displayed to the canvas
struct ClientsView_Previews: PreviewProvider {
    static var previews: some View {
        ClientsView()
    }
}
