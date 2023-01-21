//
//  Note.swift
//  Notes WatchKit Extension
//
//  Created by Camilo Gonzalez on 25-08-22.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
