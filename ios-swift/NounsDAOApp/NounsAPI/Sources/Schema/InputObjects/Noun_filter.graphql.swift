// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct Noun_filter: InputObject {
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
    seed: GraphQLNullable<String> = nil,
    seed_not: GraphQLNullable<String> = nil,
    seed_gt: GraphQLNullable<String> = nil,
    seed_lt: GraphQLNullable<String> = nil,
    seed_gte: GraphQLNullable<String> = nil,
    seed_lte: GraphQLNullable<String> = nil,
    seed_in: GraphQLNullable<[String]> = nil,
    seed_not_in: GraphQLNullable<[String]> = nil,
    seed_contains: GraphQLNullable<String> = nil,
    seed_contains_nocase: GraphQLNullable<String> = nil,
    seed_not_contains: GraphQLNullable<String> = nil,
    seed_not_contains_nocase: GraphQLNullable<String> = nil,
    seed_starts_with: GraphQLNullable<String> = nil,
    seed_starts_with_nocase: GraphQLNullable<String> = nil,
    seed_not_starts_with: GraphQLNullable<String> = nil,
    seed_not_starts_with_nocase: GraphQLNullable<String> = nil,
    seed_ends_with: GraphQLNullable<String> = nil,
    seed_ends_with_nocase: GraphQLNullable<String> = nil,
    seed_not_ends_with: GraphQLNullable<String> = nil,
    seed_not_ends_with_nocase: GraphQLNullable<String> = nil,
    seed_: GraphQLNullable<Seed_filter> = nil,
    owner: GraphQLNullable<String> = nil,
    owner_not: GraphQLNullable<String> = nil,
    owner_gt: GraphQLNullable<String> = nil,
    owner_lt: GraphQLNullable<String> = nil,
    owner_gte: GraphQLNullable<String> = nil,
    owner_lte: GraphQLNullable<String> = nil,
    owner_in: GraphQLNullable<[String]> = nil,
    owner_not_in: GraphQLNullable<[String]> = nil,
    owner_contains: GraphQLNullable<String> = nil,
    owner_contains_nocase: GraphQLNullable<String> = nil,
    owner_not_contains: GraphQLNullable<String> = nil,
    owner_not_contains_nocase: GraphQLNullable<String> = nil,
    owner_starts_with: GraphQLNullable<String> = nil,
    owner_starts_with_nocase: GraphQLNullable<String> = nil,
    owner_not_starts_with: GraphQLNullable<String> = nil,
    owner_not_starts_with_nocase: GraphQLNullable<String> = nil,
    owner_ends_with: GraphQLNullable<String> = nil,
    owner_ends_with_nocase: GraphQLNullable<String> = nil,
    owner_not_ends_with: GraphQLNullable<String> = nil,
    owner_not_ends_with_nocase: GraphQLNullable<String> = nil,
    owner_: GraphQLNullable<Account_filter> = nil,
    votes_: GraphQLNullable<Vote_filter> = nil,
    _change_block: GraphQLNullable<BlockChangedFilter> = nil,
    and: GraphQLNullable<[Noun_filter?]> = nil,
    or: GraphQLNullable<[Noun_filter?]> = nil
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
      "seed": seed,
      "seed_not": seed_not,
      "seed_gt": seed_gt,
      "seed_lt": seed_lt,
      "seed_gte": seed_gte,
      "seed_lte": seed_lte,
      "seed_in": seed_in,
      "seed_not_in": seed_not_in,
      "seed_contains": seed_contains,
      "seed_contains_nocase": seed_contains_nocase,
      "seed_not_contains": seed_not_contains,
      "seed_not_contains_nocase": seed_not_contains_nocase,
      "seed_starts_with": seed_starts_with,
      "seed_starts_with_nocase": seed_starts_with_nocase,
      "seed_not_starts_with": seed_not_starts_with,
      "seed_not_starts_with_nocase": seed_not_starts_with_nocase,
      "seed_ends_with": seed_ends_with,
      "seed_ends_with_nocase": seed_ends_with_nocase,
      "seed_not_ends_with": seed_not_ends_with,
      "seed_not_ends_with_nocase": seed_not_ends_with_nocase,
      "seed_": seed_,
      "owner": owner,
      "owner_not": owner_not,
      "owner_gt": owner_gt,
      "owner_lt": owner_lt,
      "owner_gte": owner_gte,
      "owner_lte": owner_lte,
      "owner_in": owner_in,
      "owner_not_in": owner_not_in,
      "owner_contains": owner_contains,
      "owner_contains_nocase": owner_contains_nocase,
      "owner_not_contains": owner_not_contains,
      "owner_not_contains_nocase": owner_not_contains_nocase,
      "owner_starts_with": owner_starts_with,
      "owner_starts_with_nocase": owner_starts_with_nocase,
      "owner_not_starts_with": owner_not_starts_with,
      "owner_not_starts_with_nocase": owner_not_starts_with_nocase,
      "owner_ends_with": owner_ends_with,
      "owner_ends_with_nocase": owner_ends_with_nocase,
      "owner_not_ends_with": owner_not_ends_with,
      "owner_not_ends_with_nocase": owner_not_ends_with_nocase,
      "owner_": owner_,
      "votes_": votes_,
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

  public var seed: GraphQLNullable<String> {
    get { __data["seed"] }
    set { __data["seed"] = newValue }
  }

  public var seed_not: GraphQLNullable<String> {
    get { __data["seed_not"] }
    set { __data["seed_not"] = newValue }
  }

  public var seed_gt: GraphQLNullable<String> {
    get { __data["seed_gt"] }
    set { __data["seed_gt"] = newValue }
  }

  public var seed_lt: GraphQLNullable<String> {
    get { __data["seed_lt"] }
    set { __data["seed_lt"] = newValue }
  }

  public var seed_gte: GraphQLNullable<String> {
    get { __data["seed_gte"] }
    set { __data["seed_gte"] = newValue }
  }

  public var seed_lte: GraphQLNullable<String> {
    get { __data["seed_lte"] }
    set { __data["seed_lte"] = newValue }
  }

  public var seed_in: GraphQLNullable<[String]> {
    get { __data["seed_in"] }
    set { __data["seed_in"] = newValue }
  }

  public var seed_not_in: GraphQLNullable<[String]> {
    get { __data["seed_not_in"] }
    set { __data["seed_not_in"] = newValue }
  }

  public var seed_contains: GraphQLNullable<String> {
    get { __data["seed_contains"] }
    set { __data["seed_contains"] = newValue }
  }

  public var seed_contains_nocase: GraphQLNullable<String> {
    get { __data["seed_contains_nocase"] }
    set { __data["seed_contains_nocase"] = newValue }
  }

  public var seed_not_contains: GraphQLNullable<String> {
    get { __data["seed_not_contains"] }
    set { __data["seed_not_contains"] = newValue }
  }

  public var seed_not_contains_nocase: GraphQLNullable<String> {
    get { __data["seed_not_contains_nocase"] }
    set { __data["seed_not_contains_nocase"] = newValue }
  }

  public var seed_starts_with: GraphQLNullable<String> {
    get { __data["seed_starts_with"] }
    set { __data["seed_starts_with"] = newValue }
  }

  public var seed_starts_with_nocase: GraphQLNullable<String> {
    get { __data["seed_starts_with_nocase"] }
    set { __data["seed_starts_with_nocase"] = newValue }
  }

  public var seed_not_starts_with: GraphQLNullable<String> {
    get { __data["seed_not_starts_with"] }
    set { __data["seed_not_starts_with"] = newValue }
  }

  public var seed_not_starts_with_nocase: GraphQLNullable<String> {
    get { __data["seed_not_starts_with_nocase"] }
    set { __data["seed_not_starts_with_nocase"] = newValue }
  }

  public var seed_ends_with: GraphQLNullable<String> {
    get { __data["seed_ends_with"] }
    set { __data["seed_ends_with"] = newValue }
  }

  public var seed_ends_with_nocase: GraphQLNullable<String> {
    get { __data["seed_ends_with_nocase"] }
    set { __data["seed_ends_with_nocase"] = newValue }
  }

  public var seed_not_ends_with: GraphQLNullable<String> {
    get { __data["seed_not_ends_with"] }
    set { __data["seed_not_ends_with"] = newValue }
  }

  public var seed_not_ends_with_nocase: GraphQLNullable<String> {
    get { __data["seed_not_ends_with_nocase"] }
    set { __data["seed_not_ends_with_nocase"] = newValue }
  }

  public var seed_: GraphQLNullable<Seed_filter> {
    get { __data["seed_"] }
    set { __data["seed_"] = newValue }
  }

  public var owner: GraphQLNullable<String> {
    get { __data["owner"] }
    set { __data["owner"] = newValue }
  }

  public var owner_not: GraphQLNullable<String> {
    get { __data["owner_not"] }
    set { __data["owner_not"] = newValue }
  }

  public var owner_gt: GraphQLNullable<String> {
    get { __data["owner_gt"] }
    set { __data["owner_gt"] = newValue }
  }

  public var owner_lt: GraphQLNullable<String> {
    get { __data["owner_lt"] }
    set { __data["owner_lt"] = newValue }
  }

  public var owner_gte: GraphQLNullable<String> {
    get { __data["owner_gte"] }
    set { __data["owner_gte"] = newValue }
  }

  public var owner_lte: GraphQLNullable<String> {
    get { __data["owner_lte"] }
    set { __data["owner_lte"] = newValue }
  }

  public var owner_in: GraphQLNullable<[String]> {
    get { __data["owner_in"] }
    set { __data["owner_in"] = newValue }
  }

  public var owner_not_in: GraphQLNullable<[String]> {
    get { __data["owner_not_in"] }
    set { __data["owner_not_in"] = newValue }
  }

  public var owner_contains: GraphQLNullable<String> {
    get { __data["owner_contains"] }
    set { __data["owner_contains"] = newValue }
  }

  public var owner_contains_nocase: GraphQLNullable<String> {
    get { __data["owner_contains_nocase"] }
    set { __data["owner_contains_nocase"] = newValue }
  }

  public var owner_not_contains: GraphQLNullable<String> {
    get { __data["owner_not_contains"] }
    set { __data["owner_not_contains"] = newValue }
  }

  public var owner_not_contains_nocase: GraphQLNullable<String> {
    get { __data["owner_not_contains_nocase"] }
    set { __data["owner_not_contains_nocase"] = newValue }
  }

  public var owner_starts_with: GraphQLNullable<String> {
    get { __data["owner_starts_with"] }
    set { __data["owner_starts_with"] = newValue }
  }

  public var owner_starts_with_nocase: GraphQLNullable<String> {
    get { __data["owner_starts_with_nocase"] }
    set { __data["owner_starts_with_nocase"] = newValue }
  }

  public var owner_not_starts_with: GraphQLNullable<String> {
    get { __data["owner_not_starts_with"] }
    set { __data["owner_not_starts_with"] = newValue }
  }

  public var owner_not_starts_with_nocase: GraphQLNullable<String> {
    get { __data["owner_not_starts_with_nocase"] }
    set { __data["owner_not_starts_with_nocase"] = newValue }
  }

  public var owner_ends_with: GraphQLNullable<String> {
    get { __data["owner_ends_with"] }
    set { __data["owner_ends_with"] = newValue }
  }

  public var owner_ends_with_nocase: GraphQLNullable<String> {
    get { __data["owner_ends_with_nocase"] }
    set { __data["owner_ends_with_nocase"] = newValue }
  }

  public var owner_not_ends_with: GraphQLNullable<String> {
    get { __data["owner_not_ends_with"] }
    set { __data["owner_not_ends_with"] = newValue }
  }

  public var owner_not_ends_with_nocase: GraphQLNullable<String> {
    get { __data["owner_not_ends_with_nocase"] }
    set { __data["owner_not_ends_with_nocase"] = newValue }
  }

  public var owner_: GraphQLNullable<Account_filter> {
    get { __data["owner_"] }
    set { __data["owner_"] = newValue }
  }

  public var votes_: GraphQLNullable<Vote_filter> {
    get { __data["votes_"] }
    set { __data["votes_"] = newValue }
  }

  /// Filter for the block changed event.
  public var _change_block: GraphQLNullable<BlockChangedFilter> {
    get { __data["_change_block"] }
    set { __data["_change_block"] = newValue }
  }

  public var and: GraphQLNullable<[Noun_filter?]> {
    get { __data["and"] }
    set { __data["and"] = newValue }
  }

  public var or: GraphQLNullable<[Noun_filter?]> {
    get { __data["or"] }
    set { __data["or"] = newValue }
  }
}
