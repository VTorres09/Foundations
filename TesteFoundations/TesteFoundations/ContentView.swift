//
//  ContentView.swift
//  Teste
//
//  Created by Thaís Vasconcelos Couto on 14/03/23.
//

import SwiftUI

struct ContentView: View {
    @State private var title: String = ""
    @State private var selectedTab = 0
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
    @State private var selectedButtonIndices = Set<Int>()
    
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
                HStack(spacing: 20) {
                            Button("Desenvolvimento") {
                                if selectedButtonIndices.contains(0) {
                                    selectedButtonIndices.remove(0)
                                } else {
                                    selectedButtonIndices.insert(0)
                                }
                            }
                            .padding(.vertical, 8)
                            .padding(.horizontal, 16)
                            .foregroundColor(selectedButtonIndices.contains(0) ? .white : .black)
                            .background(selectedButtonIndices.contains(0) ? Color.blue : Color.gray)
                            .cornerRadius(4)
                            
                            Button("Design") {
                                if selectedButtonIndices.contains(1) {
                                    selectedButtonIndices.remove(1)
                                } else {
                                    selectedButtonIndices.insert(1)
                                }
                            }
                            .padding(.vertical, 8)
                            .padding(.horizontal, 16)
                            .foregroundColor(selectedButtonIndices.contains(1) ? .white : .black)
                            .background(selectedButtonIndices.contains(1) ? Color.blue : Color.gray)
                            .cornerRadius(4)
                            
                            Button("Inovação") {
                                if selectedButtonIndices.contains(2) {
                                    selectedButtonIndices.remove(2)
                                } else {
                                    selectedButtonIndices.insert(2)
                                }
                            }
                            .padding(.vertical, 8)
                            .padding(.horizontal, 16)
                            .foregroundColor(selectedButtonIndices.contains(2) ? .white : .black)
                            .background(selectedButtonIndices.contains(2) ? Color.blue : Color.gray)
                            .cornerRadius(4)
                        }
                        .padding()
                HStack {
                    Text("Tempo total:")
                        .bold()
                        .padding(.vertical)
                        .font(.system(size: 20))
                }
            }
            .padding(.bottom, 40)
            .padding(.leading)
            .padding(.trailing)
            Button("Create project", action: createProject)
                .buttonStyle(.borderedProminent)
            Button("Not now", action: back)
        }
    }
}

struct BorderButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(10)
            .contentShape(Rectangle())
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 2)
                    .foregroundColor(configuration.isPressed ? .gray : .blue)
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .previewDevice("iPhone 14")
    }
}
