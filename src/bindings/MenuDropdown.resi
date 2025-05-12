// Expose dropdown types for public use
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

// MenuDropdown component binding signature
@react.component
let make: (
  ~id: string=?,
  ~className: string=?,
  ~type_: dropdownType=?,
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
  ~menuItems: array<Menu.menuItemProps>,
  ~onSelect: Menu.menuItemProps => unit=?,
  ~onClear: unit => unit=?,
  ~onOpen: unit => unit=?,
  ~onClose: unit => unit=?,
  ~isOpen: bool=?,
  ~disabled: bool=?,
  ~width: string=?,
  ~position: dropdownPosition=?,
  ~offset: int=?,
  ~\"aria-label": string=?,
  ~searchTerm: string=?,
  ~onSearchTermChange: string => unit=?,
  ~onSelectedItemsChange: array<string> => unit=?,
  ~selectedItems: array<string>=?,
  unit
) => React.element 