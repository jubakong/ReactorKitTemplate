//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

class ___VARIABLE_moduleName___Router {
  func moveToNextView(with source: UIViewController, reactor: ___VARIABLE_moduleName___ViewReactor) {
    guard let viewController = viewControllerFromStoryboard(of: ___VARIABLE_moduleName___ViewController.self) else { return }
    viewController.reactor = reactor
    source.navigationController?.pushViewController(viewController, animated: true)
  }
  
  func viewControllerFromStoryboard<T: UIViewController>(of type: T.Type) -> T? {
    return UIStoryboard(name: "___VARIABLE_moduleName___", bundle: nil).instantiateViewController(
      withIdentifier: String(describing: T.self)
    ) as? T
  }
}
