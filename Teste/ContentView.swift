//
//  ContentView.swift
//  Teste
//
//  Created by Thaís Vasconcelos Couto on 14/03/23.
//

import SwiftUI

struct ContentView: View {
    @State private var title: String = ""
    var body: some View {
        VStack {
            Text("Novo Projeto")
                .bold()
                .padding()
                .font(.system(size: 30))
            Image("Island")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250, height: 250)
            TextField("Insira o nome do projeto", text: $title)
                .padding(.horizontal, 30)
                .padding(.vertical, 30)
            HStack {
                Text("Membros")
                    .bold()
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Button("Add more +", action: addMembers)
            }
            .padding(.horizontal, 30)
            HStack (spacing: -25) {
                Image("ProfilePic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .zIndex(3)
                Image("ProfilePic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .zIndex(2)
                Image("ProfilePic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .zIndex(1)
                Spacer()
            }
            .padding(.leading, 25)
            .padding(.bottom, 150)
            Button("Create project", action: createProject)
            .buttonStyle(.borderedProminent)
            Button("Not now", action: back)
        }
    }
}

func createProject() {
    print("Hello, World!")
}

func back() {
    print("Hello, World!")
}

func addMembers() {
    print("Hello, World!")
}


struct ContentView2: View {
    @State private var title: String = ""
    @State private var description: String = ""
    var body: some View {
        VStack {
            Text("Nova Tarefa")
                .bold()
                .padding()
                .font(.system(size: 30))
            Image("Pig")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            TextField("Insira o nome da tarefa", text: $title)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.leading)
                .padding(.trailing)
                .padding(.vertical, 30)
            VStack (alignment: .leading) {
                Text("Descrição:")
                    .bold()
                    .padding(.vertical)
                    .font(.system(size: 20))
                TextEditor(text: $description)
                    //.textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(height: 100)
                    .background(Color.gray)
                    .cornerRadius(20)
                Text("Áreas:")
                    .bold()
                    .padding(.vertical)
                    .font(.system(size: 20))
                HStack {
                    Text("Tempo total:")
                        .bold()
                        .padding(.vertical)
                        .font(.system(size: 20))
                }
            }
            .padding(.bottom, 100)
            .padding(.leading)
            .padding(.trailing)
            Button("Create project", action: createProject)
                .buttonStyle(.borderedProminent)
            Button("Not now", action: back)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 8")
    }
}
