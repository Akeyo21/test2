//
//  CardView.swift
//  MoneySend
//
//  Created by Victoria on 16/01/2022.
//

import SwiftUI

struct CardView: View {
    let clientName:String
    let amountDue:Int
    let phoneNumber:Int
    var body: some View {
        VStack{
            Text(clientName).font(.title3).fontWeight(.bold).frame(maxWidth: .infinity, alignment: .leading).padding()
            HStack{
                Text("\(amountDue)").padding(.leading).padding(.trailing)
                    .padding(.bottom)
                Spacer()
                Text("\(phoneNumber)").padding(.leading).padding(.trailing)
                    .padding(.bottom)
            }
            
        }
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(clientName: "Victoria", amountDue: 1000, phoneNumber: 0711988653) .previewLayout(.fixed(width: 400, height: 100))
    }
}
