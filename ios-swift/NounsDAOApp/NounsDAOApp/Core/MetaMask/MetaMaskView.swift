//
//  MetaMaskView.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/25.
//

import SwiftUI
import metamask_ios_sdk

struct MetaMaskView: View {
    
    @StateObject var metaMaskModel = MetaMaskViewModel()
    @State private var showingConnectAlert = false
    @State private var showingDisconnectAlert = false
    @State private var showGetChainIdAlert = false
    @State private var updateAlert = false
    @State private var getBalanceAlert = false
    
    @State private var connectConfirmed = false
    
    var body: some View {
        ZStack {
            CirclesBlurBackground()
            VStack(alignment: .leading) {
                HStack {
                    Image("Metamask-logo")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .cornerRadius(15)
                    Text("MetaMusk")
                        .font(.title)
                }
                .padding(.leading, 0)
                HStack {
                    ZStack(alignment: .top) {
                        VStack(alignment: .leading) {
                            Text("Network:")
                                .fontWeight(.bold)
                                .foregroundColor(Color("indexcard-text"))
                            Text(metaMaskModel.ethereum.chainId)
                                .fontWeight(.bold)
                            Divider()
                            Text("Wallet:")
                                .fontWeight(.bold)
                                .foregroundColor(Color("indexcard-text"))
                            if let selectedAddress = metaMaskModel.ethereum.selectedAddress {
                                Text(selectedAddress)
                                    .fontWeight(.bold)
                            } else {
                                Text("Not connected")
                                    .fontWeight(.bold)
                                    .foregroundColor(.red)
                            }
                        }
                        .padding(15)
                    }
                }
                
                GeometryReader { geometry in
                    VStack {
                        HStack {
                            Button {
                                showingConnectAlert = true
                            } label: {
                                Text("Connect")
                                    .foregroundColor(Color("indexcard-text"))
                                    .frame(width: (geometry.size.width / 2)-10, height: 50)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.black, lineWidth: 1)
                                    )
                            }
                            .alert(isPresented: $showingConnectAlert) {
                                Alert(
                                    title: Text("Confirm"),
                                    message: Text("Connect from MetaMask?"),
                                    primaryButton: .default(Text("Connect")) {
                                        print("Connecting to Dapp...")
                                        metaMaskModel.connectToDapp()
                                    },
                                    secondaryButton: .cancel()
                                )
                            }
                            Spacer()
                            Button {
                                showingDisconnectAlert = true
                            } label: {
                                Text("Disconnect")
                                    .foregroundColor(Color("indexcard-text"))
                                    .frame(width: (geometry.size.width / 2)-10, height: 50)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.black, lineWidth: 1)
                                    )
                            }
                            .alert(isPresented: $showingDisconnectAlert) {
                                Alert(
                                    title: Text("Confirm"),
                                    message: Text("Disconnect from MetaMask?"),
                                    primaryButton: .default(Text("Disconnect")) {
                                        metaMaskModel.disconnectDapp()
                                    },
                                    secondaryButton: .cancel()
                                )
                            }
                        }
                        HStack {
                            Button {
                                updateAlert = true
                            } label: {
                                Text("Refresh")
                                    .foregroundColor(Color("indexcard-text"))
                                    .frame(width: (geometry.size.width / 2)-10, height: 50)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.black, lineWidth: 1)
                                    )
                            }
                            .alert(isPresented: $updateAlert) {
                                Alert(
                                    title: Text("Confirm"),
                                    message: Text("Refresh connection"),
                                    primaryButton: .default(Text("Refresh")) {
                                        metaMaskModel.refreshState()
                                    },
                                    secondaryButton: .cancel()
                                )
                            }
                            Spacer()
                            Button {
                                getBalanceAlert = true
                            } label: {
                                Text("Get balance")
                                    .foregroundColor(Color("indexcard-text"))
                                    .frame(width: (geometry.size.width / 2)-10, height: 50)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.black, lineWidth: 1)
                                    )
                            }
                            .alert(isPresented: $getBalanceAlert) {
                                Alert(
                                    title: Text("Confirm"),
                                    message: Text("Get balance"),
                                    primaryButton: .default(Text("Get balance")) {
                                        metaMaskModel.getAccountBalance()
                                    },
                                    secondaryButton: .cancel()
                                )
                            }
                        }

                    }
                }
                Spacer()
            }
            .padding()
        }
        .onAppear {
            metaMaskModel.loadSelectedAddressLocally()
        }
    }
}

struct MetaMaskView_Previews: PreviewProvider {
    static var previews: some View {
        MetaMaskView()
    }
}


