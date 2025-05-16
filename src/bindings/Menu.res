// Menu component bindings

// Enums for Menu component
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

// MenuItem type, which is recursive due to submenuItems
type rec menuItem = {
  id: option<string>,
  text: string,
  className: option<string>,
  disabled: option<bool>,
  menuType: option<menuItemType>,
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
  submenuItems: option<array<menuItem>>,
  parentId: option<string>,
}

// Context Value type
type menuContextValue = {
  selectedItems: array<string>,
  toggleSelection: option<string> => unit,
  setSelectedItems: array<string> => unit,
  searchTerm: string,
  setSearchTerm: string => unit,
  filteredItems: array<menuItem>,
  highlightedIndex: int,
  setHighlightedIndex: int => unit,
  closeMenu: unit => unit,
}

// Hook binding for useMenu
@module("@vinitjuspay/design-system")
external useMenu: unit => menuContextValue = "useMenu"

// The Menu component binding
@module("@vinitjuspay/design-system") @react.component
external make: (
  ~children: React.element=?,
  ~className: string=?,
  ~menuType: menuType=?,
  ~hasSearch: bool=?,
  ~items: array<menuItem>,
  ~searchPlaceholder: string=?,
  ~onItemClick: menuItem => unit=?,
  ~onSearch: string => unit=?,
  ~selectedItems: array<string>=?,
  ~onSelectionChange: array<string> => unit=?,
  ~isOpen: bool=?,
  ~onOpenChange: bool => unit=?,
  ~searchTerm: string=?,
  ~onSearchTermChange: string => unit=?,
  ~onContextChange: menuContextValue => unit=?,
) => React.element = "Menu"
