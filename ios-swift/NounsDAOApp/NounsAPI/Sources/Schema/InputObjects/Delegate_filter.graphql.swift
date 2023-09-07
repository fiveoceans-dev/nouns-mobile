// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct Delegate_filter: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    id: GraphQLNullable<ID> = nil,
    id_not: GraphQLNullable<ID> = nil,
    id_gt: GraphQLNullable<ID> = nil,
    id_lt: GraphQLNullable<ID> = nil,
    id_gte: GraphQLNullable<ID> = nil,
    id_lte: GraphQLNullable<ID> = nil,
    id_in: GraphQLNullable<[ID]> = nil,
    id_not_in: GraphQLNullable<[ID]> = nil,
    delegatedVotesRaw: GraphQLNullable<BigInt> = nil,
    delegatedVotesRaw_not: GraphQLNullable<BigInt> = nil,
    delegatedVotesRaw_gt: GraphQLNullable<BigInt> = nil,
    delegatedVotesRaw_lt: GraphQLNullable<BigInt> = nil,
    delegatedVotesRaw_gte: GraphQLNullable<BigInt> = nil,
    delegatedVotesRaw_lte: GraphQLNullable<BigInt> = nil,
    delegatedVotesRaw_in: GraphQLNullable<[BigInt]> = nil,
    delegatedVotesRaw_not_in: GraphQLNullable<[BigInt]> = nil,
    delegatedVotes: GraphQLNullable<BigInt> = nil,
    delegatedVotes_not: GraphQLNullable<BigInt> = nil,
    delegatedVotes_gt: GraphQLNullable<BigInt> = nil,
    delegatedVotes_lt: GraphQLNullable<BigInt> = nil,
    delegatedVotes_gte: GraphQLNullable<BigInt> = nil,
    delegatedVotes_lte: GraphQLNullable<BigInt> = nil,
    delegatedVotes_in: GraphQLNullable<[BigInt]> = nil,
    delegatedVotes_not_in: GraphQLNullable<[BigInt]> = nil,
    tokenHoldersRepresentedAmount: GraphQLNullable<Int> = nil,
    tokenHoldersRepresentedAmount_not: GraphQLNullable<Int> = nil,
    tokenHoldersRepresentedAmount_gt: GraphQLNullable<Int> = nil,
    tokenHoldersRepresentedAmount_lt: GraphQLNullable<Int> = nil,
    tokenHoldersRepresentedAmount_gte: GraphQLNullable<Int> = nil,
    tokenHoldersRepresentedAmount_lte: GraphQLNullable<Int> = nil,
    tokenHoldersRepresentedAmount_in: GraphQLNullable<[Int]> = nil,
    tokenHoldersRepresentedAmount_not_in: GraphQLNullable<[Int]> = nil,
    tokenHoldersRepresented_: GraphQLNullable<Account_filter> = nil,
    nounsRepresented: GraphQLNullable<[String]> = nil,
    nounsRepresented_not: GraphQLNullable<[String]> = nil,
    nounsRepresented_contains: GraphQLNullable<[String]> = nil,
    nounsRepresented_contains_nocase: GraphQLNullable<[String]> = nil,
    nounsRepresented_not_contains: GraphQLNullable<[String]> = nil,
    nounsRepresented_not_contains_nocase: GraphQLNullable<[String]> = nil,
    nounsRepresented_: GraphQLNullable<Noun_filter> = nil,
    votes_: GraphQLNullable<Vote_filter> = nil,
    proposals_: GraphQLNullable<Proposal_filter> = nil,
    _change_block: GraphQLNullable<BlockChangedFilter> = nil,
    and: GraphQLNullable<[Delegate_filter?]> = nil,
    or: GraphQLNullable<[Delegate_filter?]> = nil
  ) {
    __data = InputDict([
      "id": id,
      "id_not": id_not,
      "id_gt": id_gt,
      "id_lt": id_lt,
      "id_gte": id_gte,
      "id_lte": id_lte,
      "id_in": id_in,
      "id_not_in": id_not_in,
      "delegatedVotesRaw": delegatedVotesRaw,
      "delegatedVotesRaw_not": delegatedVotesRaw_not,
      "delegatedVotesRaw_gt": delegatedVotesRaw_gt,
      "delegatedVotesRaw_lt": delegatedVotesRaw_lt,
      "delegatedVotesRaw_gte": delegatedVotesRaw_gte,
      "delegatedVotesRaw_lte": delegatedVotesRaw_lte,
      "delegatedVotesRaw_in": delegatedVotesRaw_in,
      "delegatedVotesRaw_not_in": delegatedVotesRaw_not_in,
      "delegatedVotes": delegatedVotes,
      "delegatedVotes_not": delegatedVotes_not,
      "delegatedVotes_gt": delegatedVotes_gt,
      "delegatedVotes_lt": delegatedVotes_lt,
      "delegatedVotes_gte": delegatedVotes_gte,
      "delegatedVotes_lte": delegatedVotes_lte,
      "delegatedVotes_in": delegatedVotes_in,
      "delegatedVotes_not_in": delegatedVotes_not_in,
      "tokenHoldersRepresentedAmount": tokenHoldersRepresentedAmount,
      "tokenHoldersRepresentedAmount_not": tokenHoldersRepresentedAmount_not,
      "tokenHoldersRepresentedAmount_gt": tokenHoldersRepresentedAmount_gt,
      "tokenHoldersRepresentedAmount_lt": tokenHoldersRepresentedAmount_lt,
      "tokenHoldersRepresentedAmount_gte": tokenHoldersRepresentedAmount_gte,
      "tokenHoldersRepresentedAmount_lte": tokenHoldersRepresentedAmount_lte,
      "tokenHoldersRepresentedAmount_in": tokenHoldersRepresentedAmount_in,
      "tokenHoldersRepresentedAmount_not_in": tokenHoldersRepresentedAmount_not_in,
      "tokenHoldersRepresented_": tokenHoldersRepresented_,
      "nounsRepresented": nounsRepresented,
      "nounsRepresented_not": nounsRepresented_not,
      "nounsRepresented_contains": nounsRepresented_contains,
      "nounsRepresented_contains_nocase": nounsRepresented_contains_nocase,
      "nounsRepresented_not_contains": nounsRepresented_not_contains,
      "nounsRepresented_not_contains_nocase": nounsRepresented_not_contains_nocase,
      "nounsRepresented_": nounsRepresented_,
      "votes_": votes_,
      "proposals_": proposals_,
      "_change_block": _change_block,
      "and": and,
      "or": or
    ])
  }

  public var id: GraphQLNullable<ID> {
    get { __data["id"] }
    set { __data["id"] = newValue }
  }

  public var id_not: GraphQLNullable<ID> {
    get { __data["id_not"] }
    set { __data["id_not"] = newValue }
  }

  public var id_gt: GraphQLNullable<ID> {
    get { __data["id_gt"] }
    set { __data["id_gt"] = newValue }
  }

  public var id_lt: GraphQLNullable<ID> {
    get { __data["id_lt"] }
    set { __data["id_lt"] = newValue }
  }

  public var id_gte: GraphQLNullable<ID> {
    get { __data["id_gte"] }
    set { __data["id_gte"] = newValue }
  }

  public var id_lte: GraphQLNullable<ID> {
    get { __data["id_lte"] }
    set { __data["id_lte"] = newValue }
  }

  public var id_in: GraphQLNullable<[ID]> {
    get { __data["id_in"] }
    set { __data["id_in"] = newValue }
  }

  public var id_not_in: GraphQLNullable<[ID]> {
    get { __data["id_not_in"] }
    set { __data["id_not_in"] = newValue }
  }

  public var delegatedVotesRaw: GraphQLNullable<BigInt> {
    get { __data["delegatedVotesRaw"] }
    set { __data["delegatedVotesRaw"] = newValue }
  }

  public var delegatedVotesRaw_not: GraphQLNullable<BigInt> {
    get { __data["delegatedVotesRaw_not"] }
    set { __data["delegatedVotesRaw_not"] = newValue }
  }

  public var delegatedVotesRaw_gt: GraphQLNullable<BigInt> {
    get { __data["delegatedVotesRaw_gt"] }
    set { __data["delegatedVotesRaw_gt"] = newValue }
  }

  public var delegatedVotesRaw_lt: GraphQLNullable<BigInt> {
    get { __data["delegatedVotesRaw_lt"] }
    set { __data["delegatedVotesRaw_lt"] = newValue }
  }

  public var delegatedVotesRaw_gte: GraphQLNullable<BigInt> {
    get { __data["delegatedVotesRaw_gte"] }
    set { __data["delegatedVotesRaw_gte"] = newValue }
  }

  public var delegatedVotesRaw_lte: GraphQLNullable<BigInt> {
    get { __data["delegatedVotesRaw_lte"] }
    set { __data["delegatedVotesRaw_lte"] = newValue }
  }

  public var delegatedVotesRaw_in: GraphQLNullable<[BigInt]> {
    get { __data["delegatedVotesRaw_in"] }
    set { __data["delegatedVotesRaw_in"] = newValue }
  }

  public var delegatedVotesRaw_not_in: GraphQLNullable<[BigInt]> {
    get { __data["delegatedVotesRaw_not_in"] }
    set { __data["delegatedVotesRaw_not_in"] = newValue }
  }

  public var delegatedVotes: GraphQLNullable<BigInt> {
    get { __data["delegatedVotes"] }
    set { __data["delegatedVotes"] = newValue }
  }

  public var delegatedVotes_not: GraphQLNullable<BigInt> {
    get { __data["delegatedVotes_not"] }
    set { __data["delegatedVotes_not"] = newValue }
  }

  public var delegatedVotes_gt: GraphQLNullable<BigInt> {
    get { __data["delegatedVotes_gt"] }
    set { __data["delegatedVotes_gt"] = newValue }
  }

  public var delegatedVotes_lt: GraphQLNullable<BigInt> {
    get { __data["delegatedVotes_lt"] }
    set { __data["delegatedVotes_lt"] = newValue }
  }

  public var delegatedVotes_gte: GraphQLNullable<BigInt> {
    get { __data["delegatedVotes_gte"] }
    set { __data["delegatedVotes_gte"] = newValue }
  }

  public var delegatedVotes_lte: GraphQLNullable<BigInt> {
    get { __data["delegatedVotes_lte"] }
    set { __data["delegatedVotes_lte"] = newValue }
  }

  public var delegatedVotes_in: GraphQLNullable<[BigInt]> {
    get { __data["delegatedVotes_in"] }
    set { __data["delegatedVotes_in"] = newValue }
  }

  public var delegatedVotes_not_in: GraphQLNullable<[BigInt]> {
    get { __data["delegatedVotes_not_in"] }
    set { __data["delegatedVotes_not_in"] = newValue }
  }

  public var tokenHoldersRepresentedAmount: GraphQLNullable<Int> {
    get { __data["tokenHoldersRepresentedAmount"] }
    set { __data["tokenHoldersRepresentedAmount"] = newValue }
  }

  public var tokenHoldersRepresentedAmount_not: GraphQLNullable<Int> {
    get { __data["tokenHoldersRepresentedAmount_not"] }
    set { __data["tokenHoldersRepresentedAmount_not"] = newValue }
  }

  public var tokenHoldersRepresentedAmount_gt: GraphQLNullable<Int> {
    get { __data["tokenHoldersRepresentedAmount_gt"] }
    set { __data["tokenHoldersRepresentedAmount_gt"] = newValue }
  }

  public var tokenHoldersRepresentedAmount_lt: GraphQLNullable<Int> {
    get { __data["tokenHoldersRepresentedAmount_lt"] }
    set { __data["tokenHoldersRepresentedAmount_lt"] = newValue }
  }

  public var tokenHoldersRepresentedAmount_gte: GraphQLNullable<Int> {
    get { __data["tokenHoldersRepresentedAmount_gte"] }
    set { __data["tokenHoldersRepresentedAmount_gte"] = newValue }
  }

  public var tokenHoldersRepresentedAmount_lte: GraphQLNullable<Int> {
    get { __data["tokenHoldersRepresentedAmount_lte"] }
    set { __data["tokenHoldersRepresentedAmount_lte"] = newValue }
  }

  public var tokenHoldersRepresentedAmount_in: GraphQLNullable<[Int]> {
    get { __data["tokenHoldersRepresentedAmount_in"] }
    set { __data["tokenHoldersRepresentedAmount_in"] = newValue }
  }

  public var tokenHoldersRepresentedAmount_not_in: GraphQLNullable<[Int]> {
    get { __data["tokenHoldersRepresentedAmount_not_in"] }
    set { __data["tokenHoldersRepresentedAmount_not_in"] = newValue }
  }

  public var tokenHoldersRepresented_: GraphQLNullable<Account_filter> {
    get { __data["tokenHoldersRepresented_"] }
    set { __data["tokenHoldersRepresented_"] = newValue }
  }

  public var nounsRepresented: GraphQLNullable<[String]> {
    get { __data["nounsRepresented"] }
    set { __data["nounsRepresented"] = newValue }
  }

  public var nounsRepresented_not: GraphQLNullable<[String]> {
    get { __data["nounsRepresented_not"] }
    set { __data["nounsRepresented_not"] = newValue }
  }

  public var nounsRepresented_contains: GraphQLNullable<[String]> {
    get { __data["nounsRepresented_contains"] }
    set { __data["nounsRepresented_contains"] = newValue }
  }

  public var nounsRepresented_contains_nocase: GraphQLNullable<[String]> {
    get { __data["nounsRepresented_contains_nocase"] }
    set { __data["nounsRepresented_contains_nocase"] = newValue }
  }

  public var nounsRepresented_not_contains: GraphQLNullable<[String]> {
    get { __data["nounsRepresented_not_contains"] }
    set { __data["nounsRepresented_not_contains"] = newValue }
  }

  public var nounsRepresented_not_contains_nocase: GraphQLNullable<[String]> {
    get { __data["nounsRepresented_not_contains_nocase"] }
    set { __data["nounsRepresented_not_contains_nocase"] = newValue }
  }

  public var nounsRepresented_: GraphQLNullable<Noun_filter> {
    get { __data["nounsRepresented_"] }
    set { __data["nounsRepresented_"] = newValue }
  }

  public var votes_: GraphQLNullable<Vote_filter> {
    get { __data["votes_"] }
    set { __data["votes_"] = newValue }
  }

  public var proposals_: GraphQLNullable<Proposal_filter> {
    get { __data["proposals_"] }
    set { __data["proposals_"] = newValue }
  }

  /// Filter for the block changed event.
  public var _change_block: GraphQLNullable<BlockChangedFilter> {
    get { __data["_change_block"] }
    set { __data["_change_block"] = newValue }
  }

  public var and: GraphQLNullable<[Delegate_filter?]> {
    get { __data["and"] }
    set { __data["and"] = newValue }
  }

  public var or: GraphQLNullable<[Delegate_filter?]> {
    get { __data["or"] }
    set { __data["or"] = newValue }
  }
}
