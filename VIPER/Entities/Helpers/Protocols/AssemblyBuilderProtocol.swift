import Foundation
import UIKit

protocol AssemblyBuilderProtocol {
    func createMainView(router: RouterProtocol) -> UIViewController
    func createDetailView(user: UserProtocol, router: RouterProtocol) -> UIViewController?
}
