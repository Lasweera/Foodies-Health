// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let empty = try? JSONDecoder().decode(Empty.self, from: jsonData)

import Foundation

// MARK: - Empty
struct Foods: Codable {
    let feed: [Feed]
    let seo: SEO
}

// MARK: - Feed
struct Feed: Codable {
    let display: StickyDisplay
    let type: String
    let promoted: Bool
    let proRecipe: Bool?
    let recipeType: [RecipeType]?
    let trackingID: String
    let seo: FluffySEO?
    let content: PurpleContent

    enum CodingKeys: String, CodingKey {
        case display, type, promoted, proRecipe, recipeType
        case trackingID = "tracking-id"
        case seo, content
    }
}

// MARK: - PurpleContent
struct PurpleContent: Codable {
    let description: JSONNull?
    let urbSubmitters: [JSONAny]?
    let tags: FluffyTags?
    let preparationSteps: JSONNull?
    let moreContent: MoreContent?
    let tagsAds: TagsAds?
    let details: Result?
    let relatedContent: MoreContent?
    let ingredientLines: [ContentIngredientLine]?
    let unitSystem: String?
    let reviews: Reviews?
    let relatedProducts: MoreContent?
    let preparationStepCount: Int?
    let nutrition: FluffyNutrition?
    let yums: Yums?
    let search: Search?
    let total: Int?
    let matches: Matches?
    let start, end: Int?
}

// MARK: - Details
struct Result: Codable {
    let directionsURL: String
    let totalTime, displayName: String
    let images: [Image]
    let name: String
    let keywords: [String]
    let brand: JSONNull?
    let id: String
    let attribution: Attribution
    let recipeID: String
    let numberOfServings: Int
    let globalID: String
    let totalTimeInSeconds, rating: Int

    enum CodingKeys: String, CodingKey {
        case directionsURL = "directionsUrl"
        case totalTime, displayName, images, name, keywords, brand, id, attribution
        case recipeID = "recipeId"
        case numberOfServings
        case globalID = "globalId"
        case totalTimeInSeconds, rating
    }
}

// MARK: - Attribution
struct Attribution: Codable {
    let html: String
    let url: String
    let text: String
    let logo: String
}

// MARK: - Image
struct Image: Codable {
    let hostedLargeURL, resizableImageURL: String
    let resizableImageHeight, resizableImageWidth: Int

    enum CodingKeys: String, CodingKey {
        case hostedLargeURL = "hostedLargeUrl"
        case resizableImageURL = "resizableImageUrl"
        case resizableImageHeight, resizableImageWidth
    }
}

// MARK: - ContentIngredientLine
struct ContentIngredientLine: Codable {
    let category: Category
    let amount: Amount
    let unit: NameEnum
    let ingredientID, categoryID: String
    let relatedRecipeSearchTerm: [RelatedRecipeSearchTerm]
    let ingredient, id, remainder: String
    let quantity: Double?
    let wholeLine: String

    enum CodingKeys: String, CodingKey {
        case category, amount, unit
        case ingredientID = "ingredientId"
        case categoryID = "categoryId"
        case relatedRecipeSearchTerm, ingredient, id, remainder, quantity, wholeLine
    }
}

// MARK: - Amount
struct Amount: Codable {
    let metric, imperial: Imperial
}

// MARK: - Imperial
struct Imperial: Codable {
    let unit: ImperialUnit
    let quantity: Double?
}

// MARK: - ImperialUnit
struct ImperialUnit: Codable {
    let id: String
    let name: NameEnum
    let abbreviation: String
    let plural: PurplePlural
    let pluralAbbreviation: String?
    let kind: Kind
    let decimal: Bool
    let round: Bool?

    enum CodingKeys: String, CodingKey {
        case id, name, abbreviation, plural, pluralAbbreviation, kind, decimal
        case round = "round?"
    }
}

enum Kind: String, Codable {
    case count = "count"
    case length = "length"
    case mass = "mass"
    case volume = "volume"
}

enum NameEnum: String, Codable {
    case bag = "bag"
    case centimeter = "centimeter"
    case clove = "clove"
    case cup = "cup"
    case empty = ""
    case gram = "gram"
    case inch = "inch"
    case kilogram = "kilogram"
    case milliliter = "milliliter"
    case piece = "piece"
    case pound = "pound"
    case tablespoon = "tablespoon"
    case teaspoon = "teaspoon"
}

enum PurplePlural: String, Codable {
    case bags = "bags"
    case centimeters = "centimeters"
    case cloves = "cloves"
    case cups = "cups"
    case empty = ""
    case grams = "grams"
    case inches = "inches"
    case kilograms = "kilograms"
    case milliliters = "milliliters"
    case pieces = "pieces"
    case pounds = "pounds"
    case tablespoons = "tablespoons"
    case teaspoons = "teaspoons"
}

enum Category: String, Codable {
    case bakingCooking = "Baking & Cooking"
    case condiments = "Condiments"
    case drinks = "Drinks"
    case meat = "Meat"
    case pastaGrains = "Pasta & Grains"
    case produce = "Produce"
    case snackFoods = "Snack Foods"
}

// MARK: - RelatedRecipeSearchTerm
struct RelatedRecipeSearchTerm: Codable {
    let allowedIngredient: String
}

// MARK: - Matches
struct Matches: Codable {
    let seo: MatchesSEO
    let feed: [MatchesFeed]
    let parsedIngredients: [JSONAny]
    let indexableMatches: JSONNull?
    let meta: Meta
    let relatedPhrases: RelatedPhrases
    let adTrackingCampaign: Int
    let criteria: Criteria
    let ingredientMatchCount: TagsAds
    let totalMatchCount: Int
    let noindex: Bool
    let adTargetingPhrase: JSONNull?
    let unrelatedSearchResults: [JSONAny]
    let relatedSearchResults: JSONNull?
}

// MARK: - Criteria
struct Criteria: Codable {
    let q: String
    let boostLocales: [String]
    let flavor: TagsAds
    let fullReviews: Bool
    let locale: String
    let time: JSONNull?
    let connected, fetchRecipes, ignoreTastePref, myyums: Bool
    let expandRelatedSearches: Bool
    let timeoutMillis: Int
    let facetFields: JSONNull?
    let requirePictures: Bool
    let passthrough: TagsAds
    let reviewsPerRecipe: Int
    let ingredients: TagsAds
    let max: Int
    let ingredientCount, imageSize: JSONNull?
    let recipeUnsearchable, guided, autocomplete: Bool
    let timeout: Int
    let nutrition: TagsAds
    let recognitionEnabled: Bool
    let skip, reviewImagesPerRecipe: JSONNull?

    enum CodingKeys: String, CodingKey {
        case q
        case boostLocales = "boost-locales"
        case flavor
        case fullReviews = "full-reviews?"
        case locale, time, connected
        case fetchRecipes = "fetch-recipes?"
        case ignoreTastePref = "ignore-taste-pref?"
        case myyums
        case expandRelatedSearches = "expand-related-searches?"
        case timeoutMillis = "timeout-millis"
        case facetFields = "facet-fields"
        case requirePictures = "require-pictures?"
        case passthrough
        case reviewsPerRecipe = "reviews-per-recipe"
        case ingredients, max
        case ingredientCount = "ingredient-count"
        case imageSize = "image-size"
        case recipeUnsearchable = "recipe_unsearchable"
        case guided, autocomplete, timeout, nutrition
        case recognitionEnabled = "recognition-enabled"
        case skip
        case reviewImagesPerRecipe = "review-images-per-recipe"
    }
}

// MARK: - TagsAds
struct TagsAds: Codable {
}

// MARK: - MatchesFeed
struct MatchesFeed: Codable {
    let seo: PurpleSEO
    let trackingID: String
    let content: FluffyContent
    let type: String
    let recipeType: [RecipeType]
    let proRecipe: Bool
    let display: FluffyDisplay
    let promoted: Bool
    let searchResult: SearchResult

    enum CodingKeys: String, CodingKey {
        case seo
        case trackingID = "tracking-id"
        case content, type, recipeType, proRecipe, display, promoted, searchResult
    }
}

// MARK: - FluffyContent
struct FluffyContent: Codable {
    let description: Description
    let urbSubmitters: [JSONAny]
    let tags: PurpleTags
    let preparationSteps: [String]
    let moreContent: MoreContent
    let tagsAds: PurpleTagsAds
    let details: Result
    let relatedContent: MoreContent
    let ingredientLines: [ContentIngredientLine]
    let unitSystem: String
    let reviews: Reviews
    let relatedProducts: MoreContent
    let preparationStepCount: Int
    let nutrition: PurpleNutrition
    let yums: Yums
    let videos: Videos?
    let guidedVariations: [GuidedVariation]?
}

// MARK: - Description
struct Description: Codable {
    let mobileSectionName, text: String
    let shortText: JSONNull?
}

// MARK: - GuidedVariation
struct GuidedVariation: Codable {
    let id: String
    let guidedVariationDefault: Bool
    let variationAttributes: [JSONAny]
    let connected: Bool
    let actions: [Action]?
    let applianceUnitTypeCode: String?

    enum CodingKeys: String, CodingKey {
        case id
        case guidedVariationDefault = "default"
        case variationAttributes, connected, actions, applianceUnitTypeCode
    }
}

// MARK: - Action
struct Action: Codable {
    let name: String
    let stepGroups: [StepGroup]
}

// MARK: - StepGroup
struct StepGroup: Codable {
    let steps: [Step]
}

// MARK: - Step
struct Step: Codable {
    let displayText: String
    let ingredientLines: [StepIngredientLine]
    let imageURL: String
    let equipment: [Equipment]?
    let video: Video?
    let timers: [Timer]?
    let tip: String?
    let prerequisiteEvents: [PrerequisiteEvent]?

    enum CodingKeys: String, CodingKey {
        case displayText, ingredientLines
        case imageURL = "imageUrl"
        case equipment, video, timers, tip, prerequisiteEvents
    }
}

// MARK: - Equipment
struct Equipment: Codable {
    let id, name: String
}

// MARK: - StepIngredientLine
struct StepIngredientLine: Codable {
    let ingredient, ingredientID: String
    let sortOrder: Int
    let category: String
    let amount: Amount?
    let remainder: String?

    enum CodingKeys: String, CodingKey {
        case ingredient
        case ingredientID = "ingredientId"
        case sortOrder, category, amount, remainder
    }
}

// MARK: - PrerequisiteEvent
struct PrerequisiteEvent: Codable {
    let priority, message, mappingNotificationID, type: String

    enum CodingKeys: String, CodingKey {
        case priority, message
        case mappingNotificationID = "mappingNotificationId"
        case type
    }
}

// MARK: - Timer
struct Timer: Codable {
    let id, timerName: String
    let repeatable: Bool
    let maxRepeat, durationSeconds: Int
    let priority, mappingNotificationID, finishMessage: String

    enum CodingKeys: String, CodingKey {
        case id, timerName, repeatable, maxRepeat, durationSeconds, priority
        case mappingNotificationID = "mappingNotificationId"
        case finishMessage
    }
}

// MARK: - Video
struct Video: Codable {
    let snapshotURL: String
    let videoUrls: VideoUrls
    let videoTypeCode: VideoTypeCode
    let hasAudio: Bool
    let originalVideoURL: String
    let createTime: Date

    enum CodingKeys: String, CodingKey {
        case snapshotURL = "snapshotUrl"
        case videoUrls, videoTypeCode, hasAudio
        case originalVideoURL = "originalVideoUrl"
        case createTime
    }
}

enum VideoTypeCode: String, Codable {
    case guidedStep = "guided-step"
}

// MARK: - VideoUrls
struct VideoUrls: Codable {
    let android: String
    let ios: String
}

// MARK: - MoreContent
struct MoreContent: Codable {
    let mobileSectionName: String
    let queryParams: QueryParams
    let feed: [JSONAny]
}

// MARK: - QueryParams
struct QueryParams: Codable {
    let start: Int
    let authorID: String?
    let id: String
    let apiFeedType: APIFeedType
    let relatedContentType: String?

    enum CodingKeys: String, CodingKey {
        case start
        case authorID = "authorId"
        case id, apiFeedType, relatedContentType
    }
}

enum APIFeedType: String, Codable {
    case moreFrom = "moreFrom"
    case related = "related"
}

// MARK: - PurpleNutrition
struct PurpleNutrition: Codable {
    let mobileSectionName: String
    let nutritionEstimates: [PurpleNutritionEstimate]
}

// MARK: - PurpleNutritionEstimate
struct PurpleNutritionEstimate: Codable {
    let attribute: String
    let value: Double
    let unit: NutritionEstimateUnit
    let display: PurpleDisplay
}

// MARK: - PurpleDisplay
struct PurpleDisplay: Codable {
    let value: Double?
    let unit: DisplayUnit?
    let percentDailyValue: Int?
}

enum DisplayUnit: String, Codable {
    case g = "g"
    case mg = "mg"
}

// MARK: - NutritionEstimateUnit
struct NutritionEstimateUnit: Codable {
    let name: Name
    let abbreviation: Abbreviation
    let plural: FluffyPlural
    let decimal: Bool
}

enum Abbreviation: String, Codable {
    case g = "g"
    case iu = "IU"
    case kcal = "kcal"
}

enum Name: String, Codable {
    case calorie = "calorie"
    case gram = "gram"
    case iu = "IU"
}

enum FluffyPlural: String, Codable {
    case calories = "calories"
    case grams = "grams"
    case iu = "IU"
}

// MARK: - Reviews
struct Reviews: Codable {
    let mobileSectionName: String
    let totalReviewCount: Int
    let averageRating: Double
    let reviews: [JSONAny]
    let thisUserReview: JSONNull?
    let sortBy: String
}

// MARK: - PurpleTags
struct PurpleTags: Codable {
    let course, cuisine: [Course]
    let difficulty, nutrition: [Course]?
    let technique: [Course]
    let dish, holiday: [Course]?
}

// MARK: - Course
struct Course: Codable {
    let displayName, tagURL: String

    enum CodingKeys: String, CodingKey {
        case displayName = "display-name"
        case tagURL = "tag-url"
    }
}

// MARK: - PurpleTagsAds
struct PurpleTagsAds: Codable {
    let adtag: [Course]
}

// MARK: - Videos
struct Videos: Codable {
    let snapshotURL: String
    let videoUrls: VideoUrls
    let videoDetails: VideoDetails
    let originalVideoURL: String
    let createTime: Date

    enum CodingKeys: String, CodingKey {
        case snapshotURL = "snapshotUrl"
        case videoUrls, videoDetails
        case originalVideoURL = "originalVideoUrl"
        case createTime
    }
}

// MARK: - VideoDetails
struct VideoDetails: Codable {
    let android, ios: [Android]
}

// MARK: - Android
struct Android: Codable {
    let videoTypeCode: String
    let videoURL: String
    let hasAudio: Bool

    enum CodingKeys: String, CodingKey {
        case videoTypeCode
        case videoURL = "videoUrl"
        case hasAudio
    }
}

// MARK: - Yums
struct Yums: Codable {
    let count: Int
    let thisUser: String

    enum CodingKeys: String, CodingKey {
        case count
        case thisUser = "this-user"
    }
}

// MARK: - FluffyDisplay
struct FluffyDisplay: Codable {
    let displayName: String
    let images: [String]
    let flag: JSONNull?
    let source: Source
    let profiles: [Profile]
    let displayPrepStepsInline: Bool
    let collections: [JSONAny]
}

// MARK: - Profile
struct Profile: Codable {
    let profileName, displayName: String
    let siteURL: String
    let pictureURL: String
    let pageURL: String
    let description: String?
    let type: String
    let profileURL: String

    enum CodingKeys: String, CodingKey {
        case profileName, displayName
        case siteURL = "siteUrl"
        case pictureURL = "pictureUrl"
        case pageURL = "pageUrl"
        case description, type
        case profileURL = "profileUrl"
    }
}

// MARK: - Source
struct Source: Codable {
    let sourceRecipeURL: String
    let sourceFaviconURL: JSONNull?
    let sourceHTTPSOk, sourceInFrame: Bool
    let sourceDisplayName: String
    let proSource: JSONNull?
    let sourceSiteURL: String
    let introVideo: IntroVideo
    let eyebrowText: JSONNull?
    let sourcePageURL: String
    let marketingCopy: JSONNull?
    let sourceHTTPOk: Bool
    let marketingImage: JSONNull?

    enum CodingKeys: String, CodingKey {
        case sourceRecipeURL = "sourceRecipeUrl"
        case sourceFaviconURL = "sourceFaviconUrl"
        case sourceHTTPSOk = "sourceHttpsOk"
        case sourceInFrame, sourceDisplayName, proSource
        case sourceSiteURL = "sourceSiteUrl"
        case introVideo, eyebrowText
        case sourcePageURL = "sourcePageUrl"
        case marketingCopy
        case sourceHTTPOk = "sourceHttpOk"
        case marketingImage
    }
}

// MARK: - IntroVideo
struct IntroVideo: Codable {
    let id, originalURL, hlsURL, dashURL: JSONNull?
    let hasAudio: JSONNull?
    let snapshot: Snapshot

    enum CodingKeys: String, CodingKey {
        case id
        case originalURL = "originalUrl"
        case hlsURL = "hlsUrl"
        case dashURL = "dashUrl"
        case hasAudio, snapshot
    }
}

// MARK: - Snapshot
struct Snapshot: Codable {
    let original, resizable: JSONNull?
}

enum RecipeType: String, Codable {
    case basicRecipe = "BasicRecipe"
    case guidedRecipe = "GuidedRecipe"
    case yummlyOriginal = "YummlyOriginal"
}

// MARK: - SearchResult
struct SearchResult: Codable {
    let score: Double
}

// MARK: - PurpleSEO
struct PurpleSEO: Codable {
    let web: PurpleWeb
    let spotlightSearch: SpotlightSearch
    let firebase: PurpleFirebase
}

// MARK: - PurpleFirebase
struct PurpleFirebase: Codable {
    let webURL, appURL: String
    let name, description: String

    enum CodingKeys: String, CodingKey {
        case webURL = "webUrl"
        case appURL = "appUrl"
        case name, description
    }
}

// MARK: - SpotlightSearch
struct SpotlightSearch: Codable {
    let keywords: [String]
    let noindex: Bool
}

// MARK: - PurpleWeb
struct PurpleWeb: Codable {
    let noindex: Bool
    let canonicalTerm: String
    let metaTags: MetaTags
    let linkTags: [LinkTag]
    let imageURL: String

    enum CodingKeys: String, CodingKey {
        case noindex
        case canonicalTerm = "canonical-term"
        case metaTags = "meta-tags"
        case linkTags = "link-tags"
        case imageURL = "image-url"
    }
}

// MARK: - LinkTag
struct LinkTag: Codable {
    let rel: Rel
    let href: String
    let hreflang: Hreflang?
}

enum Hreflang: String, Codable {
    case en = "en"
    case enGB = "en-GB"
}

enum Rel: String, Codable {
    case alternate = "alternate"
    case canonical = "canonical"
}

// MARK: - MetaTags
struct MetaTags: Codable {
    let title, description: String
}

// MARK: - Meta
struct Meta: Codable {
    let parsedIngredients: [JSONAny]

    enum CodingKeys: String, CodingKey {
        case parsedIngredients = "parsed_ingredients"
    }
}

// MARK: - RelatedPhrases
struct RelatedPhrases: Codable {
    let relatedPhrases, unrelatedPhrases, keywords, recipes: [String]
    let phrase: String
}

// MARK: - MatchesSEO
struct MatchesSEO: Codable {
    let web: FluffyWeb
    let firebase: PurpleFirebase
}

// MARK: - FluffyWeb
struct FluffyWeb: Codable {
    let noindex: Bool
    let displayTitle, canonicalTerm: String
    let metaTags: MetaTags
    let linkTags: [LinkTag]
    let imageURL: String

    enum CodingKeys: String, CodingKey {
        case noindex
        case displayTitle = "display-title"
        case canonicalTerm = "canonical-term"
        case metaTags = "meta-tags"
        case linkTags = "link-tags"
        case imageURL = "image-url"
    }
}

// MARK: - FluffyNutrition
struct FluffyNutrition: Codable {
    let mobileSectionName: String
    let nutritionEstimates: [FluffyNutritionEstimate]
}

// MARK: - FluffyNutritionEstimate
struct FluffyNutritionEstimate: Codable {
    let attribute: String
    let value: Double
    let unit: NutritionEstimateUnit
    let display: TentacledDisplay
}

// MARK: - TentacledDisplay
struct TentacledDisplay: Codable {
    let value: Value
    let unit: DisplayUnit?
    let percentDailyValue: Int?
}

enum Value: Codable {
    case integer(Int)
    case string(String)
    case null

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Int.self) {
            self = .integer(x)
            return
        }
        if let x = try? container.decode(String.self) {
            self = .string(x)
            return
        }
        if container.decodeNil() {
            self = .null
            return
        }
        throw DecodingError.typeMismatch(Value.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for Value"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .integer(let x):
            try container.encode(x)
        case .string(let x):
            try container.encode(x)
        case .null:
            try container.encodeNil()
        }
    }
}

// MARK: - Search
struct Search: Codable {
    let q: String
}

// MARK: - FluffyTags
struct FluffyTags: Codable {
    let course, difficulty, dish: [Course]
}

// MARK: - StickyDisplay
struct StickyDisplay: Codable {
    let displayName: String
    let images: [String]
    let flag: String
    let source: Source?
    let profiles: [Profile]?
    let displayPrepStepsInline: JSONNull?
    let collections: [JSONAny]?
    let displayNameH2: String?

    enum CodingKeys: String, CodingKey {
        case displayName, images, flag, source, profiles, displayPrepStepsInline, collections
        case displayNameH2 = "displayName_h2"
    }
}

// MARK: - FluffySEO
struct FluffySEO: Codable {
    let web: PurpleWeb
    let spotlightSearch: SpotlightSearch
    let firebase: SpotlightSearchClass
}

// MARK: - SpotlightSearchClass
struct SpotlightSearchClass: Codable {
    let noindex: Bool
}

// MARK: - SEO
struct SEO: Codable {
    let web, spotlightSearch, firebase: SpotlightSearchClass
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}
