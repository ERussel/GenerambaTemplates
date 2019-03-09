import Foundation
import Swinject

final class {{ module_info.name }}Coordinator {
    private(set) var resolver: Resolver

    init(resolver: Resolver) {
        self.resolver = resolver
    }

    func start() {
        let view = r.resolve({{ module_info.name }}ViewProtocol.self, self)

        // TODO: Insert view presentation logic here
    }
}

extension {{ module_info.name }}Coordinator: {{ module_info.name }}CoordinatorProtocol {}