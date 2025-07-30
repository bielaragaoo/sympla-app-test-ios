import Foundation

struct EventResponse: Codable {
    let data: [EventDTO]
}

struct PaginationDTO: Codable {
    let hasNext: Bool
    let hasPrev: Bool
    let quantity: Int
    let offset: Int
    let page: Int
    let pageSize: Int
}

struct SortDTO: Codable {
    let fieldSort: String
    let sort: String
}

struct EventDTO: Codable {
    let id: String?
    let referenceId: Int?
    let startDate: String?
    let endDate: String?
    let name: String?
    let detail: String?
    let privateEvent: Int?
    let published: Int?
    let cancelled: Int?
    let image: String?
    let url: String?
    let address: AddressDTO?
    let host: HostDTO?
    let categoryPrim: CategoryDTO?
    let categorySec: CategoryDTO?
}

struct AddressDTO: Codable {
    let name: String?
    let address: String?
    let addressNum: String?
    let city: String?
    let state: String?
    let country: String?
    let lat: Double?
    let lon: Double?
}

struct HostDTO: Codable {
    let name: String
}

struct CategoryDTO: Codable {
    let name: String
}
