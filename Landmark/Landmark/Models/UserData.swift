//
//  SwiftUIView.swift
//  Landmark
//
//  Created by 近藤元気 on 2023/06/18.
//
import SwiftUI
import Combine
 
final class UserData: ObservableObject  {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
