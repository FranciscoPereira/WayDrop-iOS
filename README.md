# WayDrop - iOS app
## Francisco Pereira
### LinkedIn
https://www.linkedin.com/in/francisco-reis-pereira/

## Setup


## Architecture
### Module + MVVM

![](./img/mvvm.png)

- Module to initialise the View and ViewModel plus also responsible to add the dependencies to the ViewModel. 
- Using Combine to manage state.
- Creating bindings between your UI and your ViewModel with SwiftUI.

### Rules
- The View has a reference to the ViewModel, but not vice-versa.
- The ViewModel has a reference to the Model, but not vice-versa.
- The View has no reference to the Model or vice-versa.

## Modularisation 

### Advantages
Here are some of the reasons why I decided to go for modularisation:
- Indepedency: each packages/modules don't depdent on the main target.
- Smaller components are easier to maintain.
- Easier to document.
- Faster to build and test.

### Preview apps


## Testing

### Unit Tests


### UI Tests

### Snapshot Tests

### Test Coverage
Test coverage result:


## Localisation


## Accessibility

## Lint
The project uses SwiftLint from Realm to enforce Swift style and conventions.
https://github.com/realm/SwiftLint

The applied rules can be found in .swiftlint.yml file.
