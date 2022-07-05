//
//  ContentView.swift
//  myDiary
//
//  Created by APPLE on 04/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State var ArrColors = [Color.blue , Color.red , Color.green , Color.yellow]
    @State var ToWrite = ""
    @State var Selected = Color.white
    
    var body: some View {
        
     
            
        NavigationView {
            VStack{
                   
                    HStack {
                        ForEach(ArrColors , id: \.self) { clr in
            
                            Circle()
                                .foregroundColor(clr)
                                .frame(width: 40, height: 40)
                        
                                .onTapGesture {
                                    Selected = clr
                                }
                        }
                    }
                    Text("ماذا تريد ان تكتب")
                        
                    TextField("اكتب هنا", text: $ToWrite)
                        .padding()
                        .frame(width: 320, height: 50)
                        .multilineTextAlignment(.center)
                NavigationLink {
                    _ndView(color: Selected, typed: ToWrite)
                } label: {
                    Text("حفظ")
                }

                        
            }
            .navigationTitle("دفتر اليوميات")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
