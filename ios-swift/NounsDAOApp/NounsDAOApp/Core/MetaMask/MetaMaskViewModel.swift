//
//  MetaMaskViewModel.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/25.
//

import Combine
import SwiftUI
import metamask_ios_sdk
import Security

class MetaMaskViewModel: ObservableObject {
    
    @Published var chainId: String?
    @Published var selectedAddress: String?
    @Published var errorMessage: String?
    @Published var accountBalance: String?
    
    private let selectedAddressKey = "SelectedAddress"
    
    @ObservedObject var ethereum = EthereumModel(chainId: MetaMaskSDK.shared.ethereum.chainId, selectedAddress: MetaMaskSDK.shared.ethereum.selectedAddress)
    
    private let dappName = "MetaMask"
    private let dappUrl = "https://metamask.io/"
    
    private var cancellables: Set<AnyCancellable> = []
    
    init() {
        setupSubscriptions()
    }
    
    func setupSubscriptions() {
        ethereum.$chainId
            .sink { [weak self] newChainId in
                self?.chainId = newChainId
            }
            .store(in: &cancellables)
        
        ethereum.$selectedAddress
            .sink { [weak self] newSelectedAddress in
                self?.selectedAddress = newSelectedAddress
            }
            .store(in: &cancellables)
    }
    
    func connectToDapp() {
        let dapp = Dapp(name: dappName, url: dappUrl)
        MetaMaskSDK.shared.ethereum.connect(dapp)
        
        saveSelectedAddressLocally()
    }

    func disconnectDapp() {
        MetaMaskSDK.shared.ethereum.disconnect()
        deleteSelectedAddressLocally()
    }

    func refreshState() {
        setupSubscriptions()
    }
    
    func getChainID() {
        let chainIdRequest = EthereumRequest(method: .ethChainId)
        
        MetaMaskSDK.shared.ethereum.request(chainIdRequest)?
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error):
                    print("\(error.localizedDescription)")
                case .finished:
                    break
                }
            }, receiveValue: { [weak self] result in
                if let chainId = result as? String {
                    self?.chainId = chainId
                } else {

                }
            })
            .store(in: &cancellables)
    }
    
    func saveSelectedAddressLocally() {
        guard let selectedAddress = selectedAddress else {
            return
        }
        
        do {
            try KeychainManager.shared.save(value: selectedAddress, forKey: selectedAddressKey)
            print("selectedAddress: \(selectedAddress)")
            print("selectedAddressKey: \(selectedAddressKey)")
        } catch {
            print("Error saving selected address: \(error)")
            if let keychainError = error as? KeychainError {
                print("Keychain error code: \(keychainError)")
            }
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


    
    func getAccountBalance() {
        guard let address = selectedAddress else {
            errorMessage = "No selected address"
            return
        }
        
        let balanceRequest = EthereumRequest(method: .ethGetBalance, params: [address, "0xDf6e59c6DF1E9500fd35A76FF4C62F9901E90019"])
        
        MetaMaskSDK.shared.ethereum.request(balanceRequest)?
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error):
                    print("\(error.localizedDescription)")
                default: break
                }
            }, receiveValue: { [weak self] result in
                if let balance = result as? String {
                    self?.accountBalance = balance
                } else {

                }
            })
            .store(in: &cancellables)
    }
}




