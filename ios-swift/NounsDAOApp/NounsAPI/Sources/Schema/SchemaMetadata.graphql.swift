// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public typealias ID = String

public protocol SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == NounsAPI.SchemaMetadata {}

public protocol InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == NounsAPI.SchemaMetadata {}

public protocol MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == NounsAPI.SchemaMetadata {}

public protocol MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == NounsAPI.SchemaMetadata {}

public enum SchemaMetadata: ApolloAPI.SchemaMetadata {
  public static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

  public static func objectType(forTypename typename: String) -> Object? {
    switch typename {
    case "Query": return NounsAPI.Objects.Query
    case "_Meta_": return NounsAPI.Objects._Meta_
    case "_Block_": return NounsAPI.Objects._Block_
    case "Auction": return NounsAPI.Objects.Auction
    case "Noun": return NounsAPI.Objects.Noun
    case "Seed": return NounsAPI.Objects.Seed
    case "Bid": return NounsAPI.Objects.Bid
    case "Account": return NounsAPI.Objects.Account
    case "Proposal": return NounsAPI.Objects.Proposal
    case "ProposalCandidate": return NounsAPI.Objects.ProposalCandidate
    case "ProposalCandidateVersion": return NounsAPI.Objects.ProposalCandidateVersion
    case "ProposalCandidateContent": return NounsAPI.Objects.ProposalCandidateContent
    default: return nil
    }
  }
}

public enum Objects {}
public enum Interfaces {}
public enum Unions {}
