//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
import ReactorKit
import RxCocoa

class ___VARIABLE_moduleName___ViewController: UIViewController, StoryboardView {
  
  // MARK: Properties
  
  var disposeBag = DisposeBag()
  
  // MARK: Computed Properties
  
  // MARK: IBOutlets
  
  // MARK: VC's Life cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
  }
  
  // MARK: IBActions
  
  // MARK: Methods
  
  private func setup() {
    
  }
  
  func bind(reactor: ___VARIABLE_moduleName___ViewReactor) {
    //Action
    
    //State
    
    reactor.state.map { $0.isLoading }
      .distinctUntilChanged()
      .subscribe(onNext: { isLoading in
        if isLoading == true {
          ProgressView.shared.show()
        } else {
          ProgressView.shared.dissmiss()
        }
      })
      .disposed(by: disposeBag)
    
    reactor.state.map { $0.setError }
      .filterNil()
      .distinctUntilChanged()
      .subscribe(onNext: { [weak self] _ in
        guard let `self` = self else { return }
        
        self.defaultAlert(message: "문제가 발생했습니다. 다시시도해주세요 :) ", rightButtonTitle: "확인") {
          self.dismiss(animated: true, completion: nil)
        }
      })
      .disposed(by: disposeBag)
  }

}
