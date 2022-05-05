import Foundation
import UIKit

protocol RouterMainProtocol {
    var navigationController: UINavigationController? { get set }
    var assemblyBuilder: AssemblyBuilderProtocol? { get set }
}

protocol RouterProtocol: RouterMainProtocol {
    func initialView()
    func showDetailView(user: UserProtocol)
    func popToRoot()
    func popView()
}
