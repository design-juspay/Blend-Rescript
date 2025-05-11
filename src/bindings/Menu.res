// Menu types based on the Menu component definition
type menuItemType = [
  | #DEFAULT
  | #MULTI_SELECT
  | #ACTION
  | #LABEL
  | #SEPARATOR
  | #SUBMENU
]

type menuItemState = [
  | #DEFAULT
  | #HOVER
  | #SELECTED
  | #NA
]

type menuItemAction = [
  | #NA
  | #DANGER
  | #PRIMARY
]

type menuType = [
  | #DEFAULT
  | #MULTI_SELECT
  | #CONTEXT_MENU
]

// MenuItem props - using option<> for optional fields
type rec menuItemProps = {
  id: option<string>,
  text: string,
  className: option<string>,
  disabled: option<bool>,
  type_: option<menuItemType>,
  state: option<menuItemState>,
  action: option<menuItemAction>,
  onClick: option<unit => unit>,
  onMouseEnter: option<unit => unit>,
  onMouseLeave: option<unit => unit>,
  hasSlotL: option<bool>,
  hasSlotR1: option<bool>,
  hasSlotR2: option<bool>,
  slotL: option<React.element>,
  slotR1: option<React.element>,
  slotR2: option<React.element>,
  hasShortcut: option<bool>,
  shortcutValue: option<string>,
  isMultiSelect: option<bool>,
  isSelected: option<bool>,
  hasSubmenu: option<bool>,
  submenuItems: option<array<menuItemProps>>,
  parentId: option<string>,
}

// Menu component binding using module import from design system
@module("@vinitjuspay/design-system") @react.component
external make: (
  ~children: React.element=?,
  ~className: string=?,
  ~type_: menuType=?,
  ~hasSearch: bool=?,
  ~items: array<menuItemProps>,
  ~searchPlaceholder: string=?,
  ~onItemClick: menuItemProps => unit=?,
  ~onSearch: string => unit=?,
  ~selectedItems: array<string>=?,
  ~onSelectionChange: array<string> => unit=?,
  ~isOpen: bool=?,
  ~onOpenChange: bool => unit=?,
  ~searchTerm: string=?,
  ~onSearchTermChange: string => unit=?,
) => React.element = "Menu"

// MenuItem component binding
module MenuItem = {
  @module("@vinitjuspay/design-system") @react.component
  external make: (
    ~id: string=?,
    ~text: string,
    ~className: string=?,
    ~disabled: bool=?,
    ~type_: menuItemType=?,
    ~state: menuItemState=?,
    ~action: menuItemAction=?,
    ~onClick: unit => unit=?,
    ~onMouseEnter: unit => unit=?,
    ~onMouseLeave: unit => unit=?,
    ~hasSlotL: bool=?,
    ~hasSlotR1: bool=?,
    ~hasSlotR2: bool=?,
    ~slotL: React.element=?,
    ~slotR1: React.element=?,
    ~slotR2: React.element=?,
    ~hasShortcut: bool=?,
    ~shortcutValue: string=?,
    ~isMultiSelect: bool=?,
    ~isSelected: bool=?,
    ~hasSubmenu: bool=?,
    ~submenuItems: array<menuItemProps>=?,
    ~parentId: string=?,
  ) => React.element = "MenuItem"
} 