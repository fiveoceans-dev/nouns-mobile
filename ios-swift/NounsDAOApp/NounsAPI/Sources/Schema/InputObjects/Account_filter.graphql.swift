// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct Account_filter: InputObject {
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
    delegate: GraphQLNullable<String> = nil,
    delegate_not: GraphQLNullable<String> = nil,
    delegate_gt: GraphQLNullable<String> = nil,
    delegate_lt: GraphQLNullable<String> = nil,
    delegate_gte: GraphQLNullable<String> = nil,
    delegate_lte: GraphQLNullable<String> = nil,
    delegate_in: GraphQLNullable<[String]> = nil,
    delegate_not_in: GraphQLNullable<[String]> = nil,
    delegate_contains: GraphQLNullable<String> = nil,
    delegate_contains_nocase: GraphQLNullable<String> = nil,
    delegate_not_contains: GraphQLNullable<String> = nil,
    delegate_not_contains_nocase: GraphQLNullable<String> = nil,
    delegate_starts_with: GraphQLNullable<String> = nil,
    delegate_starts_with_nocase: GraphQLNullable<String> = nil,
    delegate_not_starts_with: GraphQLNullable<String> = nil,
    delegate_not_starts_with_nocase: GraphQLNullable<String> = nil,
    delegate_ends_with: GraphQLNullable<String> = nil,
    delegate_ends_with_nocase: GraphQLNullable<String> = nil,
    delegate_not_ends_with: GraphQLNullable<String> = nil,
    delegate_not_ends_with_nocase: GraphQLNullable<String> = nil,
    delegate_: GraphQLNullable<Delegate_filter> = nil,
    tokenBalanceRaw: GraphQLNullable<BigInt> = nil,
    tokenBalanceRaw_not: GraphQLNullable<BigInt> = nil,
    tokenBalanceRaw_gt: GraphQLNullable<BigInt> = nil,
    tokenBalanceRaw_lt: GraphQLNullable<BigInt> = nil,
    tokenBalanceRaw_gte: GraphQLNullable<BigInt> = nil,
    tokenBalanceRaw_lte: GraphQLNullable<BigInt> = nil,
    tokenBalanceRaw_in: GraphQLNullable<[BigInt]> = nil,
    tokenBalanceRaw_not_in: GraphQLNullable<[BigInt]> = nil,
    tokenBalance: GraphQLNullable<BigInt> = nil,
    tokenBalance_not: GraphQLNullable<BigInt> = nil,
    tokenBalance_gt: GraphQLNullable<BigInt> = nil,
    tokenBalance_lt: GraphQLNullable<BigInt> = nil,
    tokenBalance_gte: GraphQLNullable<BigInt> = nil,
    tokenBalance_lte: GraphQLNullable<BigInt> = nil,
    tokenBalance_in: GraphQLNullable<[BigInt]> = nil,
    tokenBalance_not_in: GraphQLNullable<[BigInt]> = nil,
    totalTokensHeldRaw: GraphQLNullable<BigInt> = nil,
    totalTokensHeldRaw_not: GraphQLNullable<BigInt> = nil,
    totalTokensHeldRaw_gt: GraphQLNullable<BigInt> = nil,
    totalTokensHeldRaw_lt: GraphQLNullable<BigInt> = nil,
    totalTokensHeldRaw_gte: GraphQLNullable<BigInt> = nil,
    totalTokensHeldRaw_lte: GraphQLNullable<BigInt> = nil,
    totalTokensHeldRaw_in: GraphQLNullable<[BigInt]> = nil,
    totalTokensHeldRaw_not_in: GraphQLNullable<[BigInt]> = nil,
    totalTokensHeld: GraphQLNullable<BigInt> = nil,
    totalTokensHeld_not: GraphQLNullable<BigInt> = nil,
    totalTokensHeld_gt: GraphQLNullable<BigInt> = nil,
    totalTokensHeld_lt: GraphQLNullable<BigInt> = nil,
    totalTokensHeld_gte: GraphQLNullable<BigInt> = nil,
    totalTokensHeld_lte: GraphQLNullable<BigInt> = nil,
    totalTokensHeld_in: GraphQLNullable<[BigInt]> = nil,
    totalTokensHeld_not_in: GraphQLNullable<[BigInt]> = nil,
    nouns: GraphQLNullable<[String]> = nil,
    nouns_not: GraphQLNullable<[String]> = nil,
    nouns_contains: GraphQLNullable<[String]> = nil,
    nouns_contains_nocase: GraphQLNullable<[String]> = nil,
    nouns_not_contains: GraphQLNullable<[String]> = nil,
    nouns_not_contains_nocase: GraphQLNullable<[String]> = nil,
    nouns_: GraphQLNullable<Noun_filter> = nil,
    _change_block: GraphQLNullable<BlockChangedFilter> = nil,
    and: GraphQLNullable<[Account_filter?]> = nil,
    or: GraphQLNullable<[Account_filter?]> = nil
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
      "delegate": delegate,
      "delegate_not": delegate_not,
      "delegate_gt": delegate_gt,
      "delegate_lt": delegate_lt,
      "delegate_gte": delegate_gte,
      "delegate_lte": delegate_lte,
      "delegate_in": delegate_in,
      "delegate_not_in": delegate_not_in,
      "delegate_contains": delegate_contains,
      "delegate_contains_nocase": delegate_contains_nocase,
      "delegate_not_contains": delegate_not_contains,
      "delegate_not_contains_nocase": delegate_not_contains_nocase,
      "delegate_starts_with": delegate_starts_with,
      "delegate_starts_with_nocase": delegate_starts_with_nocase,
      "delegate_not_starts_with": delegate_not_starts_with,
      "delegate_not_starts_with_nocase": delegate_not_starts_with_nocase,
      "delegate_ends_with": delegate_ends_with,
      "delegate_ends_with_nocase": delegate_ends_with_nocase,
      "delegate_not_ends_with": delegate_not_ends_with,
      "delegate_not_ends_with_nocase": delegate_not_ends_with_nocase,
      "delegate_": delegate_,
      "tokenBalanceRaw": tokenBalanceRaw,
      "tokenBalanceRaw_not": tokenBalanceRaw_not,
      "tokenBalanceRaw_gt": tokenBalanceRaw_gt,
      "tokenBalanceRaw_lt": tokenBalanceRaw_lt,
      "tokenBalanceRaw_gte": tokenBalanceRaw_gte,
      "tokenBalanceRaw_lte": tokenBalanceRaw_lte,
      "tokenBalanceRaw_in": tokenBalanceRaw_in,
      "tokenBalanceRaw_not_in": tokenBalanceRaw_not_in,
      "tokenBalance": tokenBalance,
      "tokenBalance_not": tokenBalance_not,
      "tokenBalance_gt": tokenBalance_gt,
      "tokenBalance_lt": tokenBalance_lt,
      "tokenBalance_gte": tokenBalance_gte,
      "tokenBalance_lte": tokenBalance_lte,
      "tokenBalance_in": tokenBalance_in,
      "tokenBalance_not_in": tokenBalance_not_in,
      "totalTokensHeldRaw": totalTokensHeldRaw,
      "totalTokensHeldRaw_not": totalTokensHeldRaw_not,
      "totalTokensHeldRaw_gt": totalTokensHeldRaw_gt,
      "totalTokensHeldRaw_lt": totalTokensHeldRaw_lt,
      "totalTokensHeldRaw_gte": totalTokensHeldRaw_gte,
      "totalTokensHeldRaw_lte": totalTokensHeldRaw_lte,
      "totalTokensHeldRaw_in": totalTokensHeldRaw_in,
      "totalTokensHeldRaw_not_in": totalTokensHeldRaw_not_in,
      "totalTokensHeld": totalTokensHeld,
      "totalTokensHeld_not": totalTokensHeld_not,
      "totalTokensHeld_gt": totalTokensHeld_gt,
      "totalTokensHeld_lt": totalTokensHeld_lt,
      "totalTokensHeld_gte": totalTokensHeld_gte,
      "totalTokensHeld_lte": totalTokensHeld_lte,
      "totalTokensHeld_in": totalTokensHeld_in,
      "totalTokensHeld_not_in": totalTokensHeld_not_in,
      "nouns": nouns,
      "nouns_not": nouns_not,
      "nouns_contains": nouns_contains,
      "nouns_contains_nocase": nouns_contains_nocase,
      "nouns_not_contains": nouns_not_contains,
      "nouns_not_contains_nocase": nouns_not_contains_nocase,
      "nouns_": nouns_,
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

  public var delegate: GraphQLNullable<String> {
    get { __data["delegate"] }
    set { __data["delegate"] = newValue }
  }

  public var delegate_not: GraphQLNullable<String> {
    get { __data["delegate_not"] }
    set { __data["delegate_not"] = newValue }
  }

  public var delegate_gt: GraphQLNullable<String> {
    get { __data["delegate_gt"] }
    set { __data["delegate_gt"] = newValue }
  }

  public var delegate_lt: GraphQLNullable<String> {
    get { __data["delegate_lt"] }
    set { __data["delegate_lt"] = newValue }
  }

  public var delegate_gte: GraphQLNullable<String> {
    get { __data["delegate_gte"] }
    set { __data["delegate_gte"] = newValue }
  }

  public var delegate_lte: GraphQLNullable<String> {
    get { __data["delegate_lte"] }
    set { __data["delegate_lte"] = newValue }
  }

  public var delegate_in: GraphQLNullable<[String]> {
    get { __data["delegate_in"] }
    set { __data["delegate_in"] = newValue }
  }

  public var delegate_not_in: GraphQLNullable<[String]> {
    get { __data["delegate_not_in"] }
    set { __data["delegate_not_in"] = newValue }
  }

  public var delegate_contains: GraphQLNullable<String> {
    get { __data["delegate_contains"] }
    set { __data["delegate_contains"] = newValue }
  }

  public var delegate_contains_nocase: GraphQLNullable<String> {
    get { __data["delegate_contains_nocase"] }
    set { __data["delegate_contains_nocase"] = newValue }
  }

  public var delegate_not_contains: GraphQLNullable<String> {
    get { __data["delegate_not_contains"] }
    set { __data["delegate_not_contains"] = newValue }
  }

  public var delegate_not_contains_nocase: GraphQLNullable<String> {
    get { __data["delegate_not_contains_nocase"] }
    set { __data["delegate_not_contains_nocase"] = newValue }
  }

  public var delegate_starts_with: GraphQLNullable<String> {
    get { __data["delegate_starts_with"] }
    set { __data["delegate_starts_with"] = newValue }
  }

  public var delegate_starts_with_nocase: GraphQLNullable<String> {
    get { __data["delegate_starts_with_nocase"] }
    set { __data["delegate_starts_with_nocase"] = newValue }
  }

  public var delegate_not_starts_with: GraphQLNullable<String> {
    get { __data["delegate_not_starts_with"] }
    set { __data["delegate_not_starts_with"] = newValue }
  }

  public var delegate_not_starts_with_nocase: GraphQLNullable<String> {
    get { __data["delegate_not_starts_with_nocase"] }
    set { __data["delegate_not_starts_with_nocase"] = newValue }
  }

  public var delegate_ends_with: GraphQLNullable<String> {
    get { __data["delegate_ends_with"] }
    set { __data["delegate_ends_with"] = newValue }
  }

  public var delegate_ends_with_nocase: GraphQLNullable<String> {
    get { __data["delegate_ends_with_nocase"] }
    set { __data["delegate_ends_with_nocase"] = newValue }
  }

  public var delegate_not_ends_with: GraphQLNullable<String> {
    get { __data["delegate_not_ends_with"] }
    set { __data["delegate_not_ends_with"] = newValue }
  }

  public var delegate_not_ends_with_nocase: GraphQLNullable<String> {
    get { __data["delegate_not_ends_with_nocase"] }
    set { __data["delegate_not_ends_with_nocase"] = newValue }
  }

  public var delegate_: GraphQLNullable<Delegate_filter> {
    get { __data["delegate_"] }
    set { __data["delegate_"] = newValue }
  }

  public var tokenBalanceRaw: GraphQLNullable<BigInt> {
    get { __data["tokenBalanceRaw"] }
    set { __data["tokenBalanceRaw"] = newValue }
  }

  public var tokenBalanceRaw_not: GraphQLNullable<BigInt> {
    get { __data["tokenBalanceRaw_not"] }
    set { __data["tokenBalanceRaw_not"] = newValue }
  }

  public var tokenBalanceRaw_gt: GraphQLNullable<BigInt> {
    get { __data["tokenBalanceRaw_gt"] }
    set { __data["tokenBalanceRaw_gt"] = newValue }
  }

  public var tokenBalanceRaw_lt: GraphQLNullable<BigInt> {
    get { __data["tokenBalanceRaw_lt"] }
    set { __data["tokenBalanceRaw_lt"] = newValue }
  }

  public var tokenBalanceRaw_gte: GraphQLNullable<BigInt> {
    get { __data["tokenBalanceRaw_gte"] }
    set { __data["tokenBalanceRaw_gte"] = newValue }
  }

  public var tokenBalanceRaw_lte: GraphQLNullable<BigInt> {
    get { __data["tokenBalanceRaw_lte"] }
    set { __data["tokenBalanceRaw_lte"] = newValue }
  }

  public var tokenBalanceRaw_in: GraphQLNullable<[BigInt]> {
    get { __data["tokenBalanceRaw_in"] }
    set { __data["tokenBalanceRaw_in"] = newValue }
  }

  public var tokenBalanceRaw_not_in: GraphQLNullable<[BigInt]> {
    get { __data["tokenBalanceRaw_not_in"] }
    set { __data["tokenBalanceRaw_not_in"] = newValue }
  }

  public var tokenBalance: GraphQLNullable<BigInt> {
    get { __data["tokenBalance"] }
    set { __data["tokenBalance"] = newValue }
  }

  public var tokenBalance_not: GraphQLNullable<BigInt> {
    get { __data["tokenBalance_not"] }
    set { __data["tokenBalance_not"] = newValue }
  }

  public var tokenBalance_gt: GraphQLNullable<BigInt> {
    get { __data["tokenBalance_gt"] }
    set { __data["tokenBalance_gt"] = newValue }
  }

  public var tokenBalance_lt: GraphQLNullable<BigInt> {
    get { __data["tokenBalance_lt"] }
    set { __data["tokenBalance_lt"] = newValue }
  }

  public var tokenBalance_gte: GraphQLNullable<BigInt> {
    get { __data["tokenBalance_gte"] }
    set { __data["tokenBalance_gte"] = newValue }
  }

  public var tokenBalance_lte: GraphQLNullable<BigInt> {
    get { __data["tokenBalance_lte"] }
    set { __data["tokenBalance_lte"] = newValue }
  }

  public var tokenBalance_in: GraphQLNullable<[BigInt]> {
    get { __data["tokenBalance_in"] }
    set { __data["tokenBalance_in"] = newValue }
  }

  public var tokenBalance_not_in: GraphQLNullable<[BigInt]> {
    get { __data["tokenBalance_not_in"] }
    set { __data["tokenBalance_not_in"] = newValue }
  }

  public var totalTokensHeldRaw: GraphQLNullable<BigInt> {
    get { __data["totalTokensHeldRaw"] }
    set { __data["totalTokensHeldRaw"] = newValue }
  }

  public var totalTokensHeldRaw_not: GraphQLNullable<BigInt> {
    get { __data["totalTokensHeldRaw_not"] }
    set { __data["totalTokensHeldRaw_not"] = newValue }
  }

  public var totalTokensHeldRaw_gt: GraphQLNullable<BigInt> {
    get { __data["totalTokensHeldRaw_gt"] }
    set { __data["totalTokensHeldRaw_gt"] = newValue }
  }

  public var totalTokensHeldRaw_lt: GraphQLNullable<BigInt> {
    get { __data["totalTokensHeldRaw_lt"] }
    set { __data["totalTokensHeldRaw_lt"] = newValue }
  }

  public var totalTokensHeldRaw_gte: GraphQLNullable<BigInt> {
    get { __data["totalTokensHeldRaw_gte"] }
    set { __data["totalTokensHeldRaw_gte"] = newValue }
  }

  public var totalTokensHeldRaw_lte: GraphQLNullable<BigInt> {
    get { __data["totalTokensHeldRaw_lte"] }
    set { __data["totalTokensHeldRaw_lte"] = newValue }
  }

  public var totalTokensHeldRaw_in: GraphQLNullable<[BigInt]> {
    get { __data["totalTokensHeldRaw_in"] }
    set { __data["totalTokensHeldRaw_in"] = newValue }
  }

  public var totalTokensHeldRaw_not_in: GraphQLNullable<[BigInt]> {
    get { __data["totalTokensHeldRaw_not_in"] }
    set { __data["totalTokensHeldRaw_not_in"] = newValue }
  }

  public var totalTokensHeld: GraphQLNullable<BigInt> {
    get { __data["totalTokensHeld"] }
    set { __data["totalTokensHeld"] = newValue }
  }

  public var totalTokensHeld_not: GraphQLNullable<BigInt> {
    get { __data["totalTokensHeld_not"] }
    set { __data["totalTokensHeld_not"] = newValue }
  }

  public var totalTokensHeld_gt: GraphQLNullable<BigInt> {
    get { __data["totalTokensHeld_gt"] }
    set { __data["totalTokensHeld_gt"] = newValue }
  }

  public var totalTokensHeld_lt: GraphQLNullable<BigInt> {
    get { __data["totalTokensHeld_lt"] }
    set { __data["totalTokensHeld_lt"] = newValue }
  }

  public var totalTokensHeld_gte: GraphQLNullable<BigInt> {
    get { __data["totalTokensHeld_gte"] }
    set { __data["totalTokensHeld_gte"] = newValue }
  }

  public var totalTokensHeld_lte: GraphQLNullable<BigInt> {
    get { __data["totalTokensHeld_lte"] }
    set { __data["totalTokensHeld_lte"] = newValue }
  }

  public var totalTokensHeld_in: GraphQLNullable<[BigInt]> {
    get { __data["totalTokensHeld_in"] }
    set { __data["totalTokensHeld_in"] = newValue }
  }

  public var totalTokensHeld_not_in: GraphQLNullable<[BigInt]> {
    get { __data["totalTokensHeld_not_in"] }
    set { __data["totalTokensHeld_not_in"] = newValue }
  }

  public var nouns: GraphQLNullable<[String]> {
    get { __data["nouns"] }
    set { __data["nouns"] = newValue }
  }

  public var nouns_not: GraphQLNullable<[String]> {
    get { __data["nouns_not"] }
    set { __data["nouns_not"] = newValue }
  }

  public var nouns_contains: GraphQLNullable<[String]> {
    get { __data["nouns_contains"] }
    set { __data["nouns_contains"] = newValue }
  }

  public var nouns_contains_nocase: GraphQLNullable<[String]> {
    get { __data["nouns_contains_nocase"] }
    set { __data["nouns_contains_nocase"] = newValue }
  }

  public var nouns_not_contains: GraphQLNullable<[String]> {
    get { __data["nouns_not_contains"] }
    set { __data["nouns_not_contains"] = newValue }
  }

  public var nouns_not_contains_nocase: GraphQLNullable<[String]> {
    get { __data["nouns_not_contains_nocase"] }
    set { __data["nouns_not_contains_nocase"] = newValue }
  }

  public var nouns_: GraphQLNullable<Noun_filter> {
    get { __data["nouns_"] }
    set { __data["nouns_"] = newValue }
  }

  /// Filter for the block changed event.
  public var _change_block: GraphQLNullable<BlockChangedFilter> {
    get { __data["_change_block"] }
    set { __data["_change_block"] = newValue }
  }

  public var and: GraphQLNullable<[Account_filter?]> {
    get { __data["and"] }
    set { __data["and"] = newValue }
  }

  public var or: GraphQLNullable<[Account_filter?]> {
    get { __data["or"] }
    set { __data["or"] = newValue }
  }
}
