import UIKit

final class {{ module_info.name }}ViewController: UIViewController {
    var presenter: {{ module_info.name }}PresenterProtocol!

    ovveride func viewDidLoad() {
        super.viewDidLoad()

        presenter.viewIsReady()
    }
}

extension {{ module_info.name }}ViewController: {{ module_info.name }}ViewProtocol {}