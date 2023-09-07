//
//  EthereumModel.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/09/01.
//

import SwiftUI
import Combine
import Security


class EthereumModel: ObservableObject {
    @Published var chainId: String
    @Published var selectedAddress: String?
    

    init(chainId: String, selectedAddress: String) {
        self.chainId = chainId
        self.selectedAddress = selectedAddress
    }
    
    private let selectedAddressKey = "SelectedAddress"
    
    func saveSelectedAddressLocally() {
        guard let selectedAddress = selectedAddress else {
            return
        }
        
        do {
            try KeychainManager.shared.save(value: selectedAddress, forKey: selectedAddressKey)
        } catch {
            print("Error saving selected address: \(error)")
        }
    }

    func loadSelectedAddressLocally() {
        do {
            let loadedAddress = try KeychainManager.shared.load(forKey: selectedAddressKey)
            selectedAddress = loadedAddress
        } catch {
            print("Error loading selected address: \(error)")
        }
    }

    func deleteSelectedAddressLocally() {
        do {
            try KeychainManager.shared.delete(forKey: selectedAddressKey)
            selectedAddress = nil
        } catch {
            print("Error deleting selected address: \(error)")
        }
    }

    
}
