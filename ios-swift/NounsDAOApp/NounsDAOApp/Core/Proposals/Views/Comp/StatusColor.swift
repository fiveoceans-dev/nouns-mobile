//
//  StatusColor.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/29.
//

import SwiftUI

func statusColor(for status: String) -> Color {
    switch status {
    case "PENDING":
        return Color("indexcard-green")
    case "ACTIVE":
        return Color("indexcard-green")
    case "CANCELLED":
        return Color("indexcard-gray")
    case "VETOED":
        return Color("indexcard-yellow")
    case "QUEUED":
        return Color("indexcard-status-blue")
    case "EXECUTED":
        return Color("indexcard-status-blue")
    case "CANDIDATE":
        return Color("indexcard-green")
    case "SPONSORED":
        return Color("indexcard-blue")
    default:
        return Color.gray
    }
}

