open Menu

// Define types that exactly match the TypeScript enum values
type dropdownType = [
  | #iconOnly
  | #singleSelect
  | #multiSelect
]

type dropdownState = [
  | #default
  | #hover
  | #"open"
  | #selected
]

type dropdownSubType = [
  | #hasContainer
  | #noContainer
]

type dropdownSelectionType = [
  | #text
  | #count
]

type dropdownSize = [
  | #sm
  | #md
  | #lg
]

type dropdownPosition = [
  | #"bottom-start"
  | #"bottom-end"
  | #"top-start"
  | #"top-end"
  | #left
  | #right
]

// Binding to the Dropdown component with the correct types
@module("@vinitjuspay/design-system") @react.component
external make: (
  ~id: string=?,
  ~className: string=?,
  ~dropdownType: dropdownType=?,
  ~subType: dropdownSubType=?,
  ~size: dropdownSize=?,
  ~state: dropdownState=?,
  ~selectionType: dropdownSelectionType=?,
  ~hasLabel: bool=?,
  ~hasSubLabel: bool=?,
  ~mandatory: bool=?,
  ~hasHelp: bool=?,
  ~hasHint: bool=?,
  ~hasClearButton: bool=?,
  ~hasLeftIcon: bool=?,
  ~leftIcon: React.element=?,
  ~label: string=?,
  ~subLabel: string=?,
  ~hint: string=?,
  ~placeholder: string=?,
  ~selectedOption: string=?,
  ~selectedCount: int=?,
  ~selectedText: string=?,
  ~children: React.element=?,
  ~menuItems: array<menuItem>,
  ~onSelect: menuItem => unit=?,
  ~onClear: unit => unit=?,
  ~onOpen: unit => unit=?,
  ~onClose: unit => unit=?,
  ~isOpen: bool=?,
  ~disabled: bool=?,
  ~width: string=?,
  ~position: dropdownPosition=?,
  ~offset: int=?,
  ~ariaLabel: string=?,
  ~searchTerm: string=?,
  ~onSearchTermChange: string => unit=?,
  ~onSelectedItemsChange: array<string> => unit=?,
  ~closeOnSelect: bool=?,
) => React.element = "MenuDropdown"
