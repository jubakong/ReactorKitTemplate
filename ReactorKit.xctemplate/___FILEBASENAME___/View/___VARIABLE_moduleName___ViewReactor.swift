//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import ReactorKit

final class ___VARIABLE_moduleName___ViewReactor: Reactor {
  
  enum Action {
    
  }
  
  enum Mutation {
    case setLoading(Bool)
    case setError(Error)
  }
  
  struct State {
    var isLoading: Bool = false
    var setError: RevisionedError?
  }
  
  let initialState: State = State()
  
  func mutate(action: Action) -> Observable<Mutation> {
    switch action {
    
    }
  }
  
  func reduce(state: State, mutation: Mutation) -> State {
    var newState = state
    
    switch mutation {
    case .setError(let isError):
      newState.setError = RevisionedError(revision: (newState.setError?.revision ?? 0) + 1,
                                          error: isError as NSError
      )
      
    case .setLoading(let isLoading):
      newState.isLoading = isLoading
      
    }
    
    return newState
  }
}
