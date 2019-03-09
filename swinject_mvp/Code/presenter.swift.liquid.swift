import Foundation

final class {{ module_info.name }}Presenter {
    weak var view: {{ module_info.name }}ViewProtocol?
    var coordinator: {{ module_info.name }}CoordinatorProtocol

    init(view: {{ module_info.name }}ViewProtocol, coordinator: {{ module_info.name }}CoordinatorProtocol) {
        self.view = view
        self.coordinator = coordinator
    }
}

extension {{ module_info.name }}Presenter: {{ module_info.name }}PresenterProtocol {
    func viewIsReady() {}
}