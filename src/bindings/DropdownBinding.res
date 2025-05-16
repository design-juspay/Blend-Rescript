open Menu

// Define types that exactly match the TypeScript enum values
// These are lowercase/camelCase following the TypeScript enum values
type dropdownType = [
  | #iconOnly // DropdownType.ICON_ONLY = 'iconOnly'
  | #singleSelect // DropdownType.SINGLE_SELECT = 'singleSelect'
  | #multiSelect
] // DropdownType.MULTI_SELECT = 'multiSelect'

type dropdownState = [
  | #default // DropdownState.DEFAULT = 'default'
  | #hover // DropdownState.HOVER = 'hover'
  | #"open" // DropdownState.OPEN = 'open' - escaped because 'open' is a reserved keyword
  | #selected
] // DropdownState.SELECTED = 'selected'

type dropdownSubType = [
  | #hasContainer // DropdownSubType.HAS_CONTAINER = 'hasContainer'
  | #noContainer
] // DropdownSubType.NO_CONTAINER = 'noContainer'

type dropdownSelectionType = [
  | #text // DropdownSelectionType.TEXT = 'text'
  | #count
] // DropdownSelectionType.COUNT = 'count'

type dropdownSize = [
  | #sm // DropdownSize.SMALL = 'sm'
  | #md // DropdownSize.MEDIUM = 'md'
  | #lg
] // DropdownSize.LARGE = 'lg'

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
  ~ariaLabel: string=?, // changed from ~"aria-label" to ~ariaLabel
  ~searchTerm: string=?,
  ~onSearchTermChange: string => unit=?,
  ~onSelectedItemsChange: array<string> => unit=?,
  ~closeOnSelect: bool=?,
) => React.element = "Dropdown"
