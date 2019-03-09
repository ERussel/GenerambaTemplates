import Foundation
import Swinject

final class {{ module_info.name }}Assembly: Assembly {
    func assemble(container: Container) {
        container.register({{ module_info.name }}ViewProtocol.self) { (r: Resolver, coordinator: {{ module_info.name }}CoordinatorProtocol) in
            let view = {{ module_info.name }}ViewController()
            let presenter = r.resolve({{ module_info.name }}PresenterProtocol.self, arguments: view, coordinator)
            view.presenter = presenter

            return view
        }

        container.register({{ module_info.name }}PresenterProtocol.self) { (r: Resolver, view: {{ module_info.name }}ViewProtocol.self, coordinator: {{ module_info.name }}CoordinatorProtocol) in

            return {{ module_info.name }}Presenter(view: view, coordinator: coordinator)
        }
    }
}