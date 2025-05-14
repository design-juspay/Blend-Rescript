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
  id?: string,
  text: string,
  className?: string,
  disabled?: bool,
  menuType?: menuItemType,
  state?: menuItemState,
  action?: menuItemAction,
  onClick?: unit => unit,
  onMouseEnter?: unit => unit,
  onMouseLeave?: unit => unit,
  hasSlotL?: bool,
  hasSlotR1?: bool,
  hasSlotR2?: bool,
  slotL?: React.element,
  slotR1?: React.element,
  slotR2?: React.element,
  hasShortcut?: bool,
  shortcutValue?: string,
  isMultiSelect?: bool,
  isSelected?: bool,
  hasSubmenu?: bool,
  submenuItems?: array<menuItem>,
  parentId?: string,
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
  ~type_: menuType=?,
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
