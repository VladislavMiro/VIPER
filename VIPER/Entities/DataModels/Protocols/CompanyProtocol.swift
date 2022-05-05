import Foundation

protocol CompanyProtocol: Codable {
    var name: String { get set }
    var catchPhrase: String { get set }
    var bs: String { get set }
}
