// MenuDropdown component interface
open Menu

// Define additional types specific to MenuDropdown
type triggerType = [
  | #button
  | #iconButton
  | #custom
]

type placement = [
  | #top
  | #bottom
  | #left
  | #right
  | #topLeft
  | #topRight
  | #bottomLeft
  | #bottomRight
  | #leftTop
  | #leftBottom
  | #rightTop
  | #rightBottom
]

type size = [
  | #sm
  | #md
  | #lg
]

// The MenuDropdown component binding
@module("@vinitjuspay/design-system") @react.component
external make: (
  ~children: React.element=?,
  ~className: string=?,
  ~id: string=?,
  ~triggerType: triggerType=?,
  ~triggerText: string=?,
  ~triggerIcon: React.element=?,
  ~triggerVariant: [#primary | #secondary | #danger | #success]=?,
  ~triggerSize: size=?,
  ~triggerClassName: string=?,
  ~items: array<menuItem>,
  ~isOpen: bool=?,
  ~onOpenChange: bool => unit=?,
  ~placement: placement=?,
  ~offset: int=?,
  ~hasArrow: bool=?,
  ~menuClassName: string=?,
  ~menuType: menuType=?,
  ~hasSearch: bool=?,
  ~searchPlaceholder: string=?,
  ~searchTerm: string=?,
  ~onSearchTermChange: string => unit=?,
  ~onItemClick: menuItem => unit=?,
  ~selectedItems: array<string>=?,
  ~onSelectionChange: array<string> => unit=?,
  ~disabled: bool=?,
) => React.element = "Dropdown"
