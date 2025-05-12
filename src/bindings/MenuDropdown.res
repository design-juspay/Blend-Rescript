// MenuDropdown types based on the component definition
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

@module("@vinitjuspay/design-system") @react.component
external make: (
  ~children: React.element=?,
  ~menuItems: array<Menu.menuItemProps>,
  ~openTrigger: [#click | #hover]=?,
  ~label: string=?,
  ~onChange: string => unit=?,
  ~dropdownIcon: React.element=?,
  ~value: string=?,
  ~placeholder: string=?,
  ~hasFilterSearch: bool=?,
  ~searchPlaceholder: string=?,
  ~className: string=?,
  ~buttonClassName: string=?,
  ~menuClassName: string=?,
  ~isOpen: bool=?,
  ~onOpenChange: bool => unit=?,
  ~size: dropdownSize=?,
  ~type_: dropdownType=?,
  ~subType: dropdownSubType=?,
  ~disabled: bool=?,
  ~selectedItems: array<string>=?,
  ~onSelectedItemsChange: array<string> => unit=?,
  ~selectionType: dropdownSelectionType=?,
  ~position: dropdownPosition=?,
) => React.element = "Dropdown" 