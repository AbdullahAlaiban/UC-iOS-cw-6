//
//  ContentView.swift
//  StudentInfo
//
//  Created by APPLE on 04/07/2022.
//

import SwiftUI

struct StudentDetails {
    let id = UUID()
   var name : String
    var year : Int
    var age : Int
}

struct ContentView: View {
   @State var ArrayOfStudents = [StudentDetails(name: "Ali", year: 3, age: 22), StudentDetails(name: "Abdullah", year: 2, age: 20), StudentDetails(name: "Ahmad", year: 4, age: 23)]

        
   
    var body: some View {
        
        VStack{
        Image("IDD")
                .resizable()
                .frame(width: 300, height: 200)
                .padding()
            Text("سجل الطالب")
                .font(.system(size: 30))
                .frame(width: 200, height: 90)
            
            List(ArrayOfStudents, id:\.id) { Stu in
                VStack(alignment: .leading){
                Text("Student name: \(Stu.name)")
                Text("Student age: \(Stu.age)")
                Text("Year: \(Stu.year)")
                }
                
            }
            Text("عدد الطلبة المسجلين : \(ArrayOfStudents.count)")
                .font(.system(size: 25))
            Spacer()
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
