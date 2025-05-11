open RescriptCore

// Inline types for the Menu component
module Types = {
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
}

// Direct imports from the design system
module DSMenu = {
  @module("@vinitjuspay/design-system") @react.component
  external make: (
    ~children: React.element=?,
    ~className: string=?,
    ~type_: Types.menuType=?,
    ~hasSearch: bool=?,
    ~items: array<Types.menuItemProps>,
    ~searchPlaceholder: string=?,
    ~onItemClick: Types.menuItemProps => unit=?,
    ~onSearch: string => unit=?,
    ~selectedItems: array<string>=?,
    ~onSelectionChange: array<string> => unit=?,
    ~isOpen: bool=?,
    ~onOpenChange: bool => unit=?,
    ~searchTerm: string=?,
    ~onSearchTermChange: string => unit=?,
  ) => React.element = "Menu"
}

module DSMenuDropdown = {
  @module("@vinitjuspay/design-system") @react.component
  external make: (
    ~children: React.element=?,
    ~menuItems: array<Types.menuItemProps>,
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
    ~size: [#sm | #md | #lg]=?,
    ~type_: [#singleSelect | #multiSelect | #iconOnly]=?,
    ~subType: [#hasContainer | #noContainer]=?,
    ~disabled: bool=?,
    ~selectedItems: array<string>=?,
    ~onSelectedItemsChange: array<string> => unit=?,
    ~selectionType: [#text | #count]=?,
  ) => React.element = "Dropdown"
}

// Main component
module MenuDemo = {
  let longMenu = Belt.Array.makeBy(20, i => {
    let item: Types.menuItemProps = {
      id: Some(i->Int.toString),
      text: `Item ${i->Int.toString}`,
      className: None,
      disabled: None,
      type_: None,
      state: None,
      action: None,
      onClick: None,
      onMouseEnter: None,
      onMouseLeave: None,
      hasSlotL: None,
      hasSlotR1: None,
      hasSlotR2: None,
      slotL: None,
      slotR1: None,
      slotR2: None,
      hasShortcut: None,
      shortcutValue: None,
      isMultiSelect: None,
      isSelected: None,
      hasSubmenu: None,
      submenuItems: None,
      parentId: None,
    }
    item
  })

  @react.component
  let make = () => {
    let (selectedOption, setSelectedOption) = React.useState(_ => "")
    let (selectedMultiOptions, setSelectedMultiOptions) = React.useState(_ => [])
    
    let menuItems: array<Types.menuItemProps> = [
      {
        id: Some("1"),
        text: "Menu Item 1",
        className: None,
        disabled: None,
        type_: None,
        state: None,
        action: None,
        onClick: None,
        onMouseEnter: None,
        onMouseLeave: None,
        hasSlotL: None,
        hasSlotR1: None,
        hasSlotR2: None,
        slotL: None,
        slotR1: None,
        slotR2: None,
        hasShortcut: None,
        shortcutValue: None,
        isMultiSelect: None,
        isSelected: None,
        hasSubmenu: None,
        submenuItems: None,
        parentId: None,
      },
      {
        id: Some("2"),
        text: "Menu Item 2",
        className: None,
        disabled: None,
        type_: None,
        state: None,
        action: None,
        onClick: None,
        onMouseEnter: None,
        onMouseLeave: None,
        hasSlotL: None,
        hasSlotR1: None,
        hasSlotR2: None,
        slotL: None,
        slotR1: None,
        slotR2: None,
        hasShortcut: None,
        shortcutValue: None,
        isMultiSelect: None,
        isSelected: None,
        hasSubmenu: None,
        submenuItems: None,
        parentId: None,
      },
      {
        id: Some("3"),
        text: "Menu Item 3",
        className: None,
        disabled: None,
        type_: None,
        state: None,
        action: None,
        onClick: None,
        onMouseEnter: None,
        onMouseLeave: None,
        hasSlotL: None,
        hasSlotR1: None,
        hasSlotR2: None,
        slotL: None,
        slotR1: None,
        slotR2: None,
        hasShortcut: None,
        shortcutValue: None,
        isMultiSelect: None,
        isSelected: None,
        hasSubmenu: None,
        submenuItems: None,
        parentId: None,
      },
    ]

    <div className="p-4 space-y-8">
      <h1 className="text-2xl font-bold"> {"Menu Components"->React.string} </h1>

      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Basic Menu"->React.string} </h2>
        <div className="relative">
          <DSMenu 
            items={menuItems}
            onItemClick={item => Console.log2("Item clicked:", item)}
            className="min-w-[200px]"
          />
        </div>
      </div>

      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Menu with Search"->React.string} </h2>
        <div className="relative">
          <DSMenu items={longMenu} hasSearch={true} className="min-w-[200px]" />
        </div>
      </div>

      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Dropdown Types"->React.string} </h2>
        
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          <div className="border p-4 rounded">
            <h3 className="font-medium mb-3"> {"Single Select Dropdown"->React.string} </h3>
            <DSMenuDropdown
              menuItems={menuItems}
              type_=#singleSelect
              label="Single Select"
              placeholder="Choose an option"
              value={selectedOption}
              onChange={value => setSelectedOption(_ => value)}
              className="min-w-[200px]"
            />
          </div>

          <div className="border p-4 rounded">
            <h3 className="font-medium mb-3"> {"Icon Only Dropdown"->React.string} </h3>
            <DSMenuDropdown
              menuItems={menuItems}
              type_=#iconOnly
              dropdownIcon={<span className="flex items-center justify-center w-6 h-6 bg-blue-100 rounded-full text-blue-600"> {"+"->React.string} </span>}
              className="min-w-[200px]"
            />
          </div>

          <div className="border p-4 rounded">
            <h3 className="font-medium mb-3"> {"Multi Select Dropdown"->React.string} </h3>
            <DSMenuDropdown
              menuItems={menuItems}
              type_=#multiSelect
              label="Multi Select"
              selectedItems={selectedMultiOptions}
              onSelectedItemsChange={items => setSelectedMultiOptions(_ => items)}
              selectionType=#count
              className="min-w-[200px]"
            />
          </div>
        </div>
      </div>

      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Dropdown Triggers"->React.string} </h2>
        
        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
          <div className="border p-4 rounded">
            <h3 className="font-medium mb-3"> {"Click Trigger"->React.string} </h3>
            <DSMenuDropdown
              menuItems={menuItems}
              openTrigger=#click
              label="Click to open"
              className="min-w-[200px]"
            />
          </div>

          <div className="border p-4 rounded">
            <h3 className="font-medium mb-3"> {"Hover Trigger"->React.string} </h3>
            <DSMenuDropdown
              menuItems={menuItems}
              openTrigger=#hover
              label="Hover to open"
              className="min-w-[200px]"
            />
          </div>
        </div>
      </div>

      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Dropdown Sizes"->React.string} </h2>
        
        <div className="flex flex-col md:flex-row items-end gap-6">
          <div>
            <h3 className="font-medium mb-3"> {"Small Size"->React.string} </h3>
            <DSMenuDropdown
              menuItems={menuItems}
              size=#sm
              label="Small"
              className="min-w-[160px]"
            />
          </div>

          <div>
            <h3 className="font-medium mb-3"> {"Medium Size (Default)"->React.string} </h3>
            <DSMenuDropdown
              menuItems={menuItems}
              size=#md
              label="Medium"
              className="min-w-[200px]"
            />
          </div>

          <div>
            <h3 className="font-medium mb-3"> {"Large Size"->React.string} </h3>
            <DSMenuDropdown
              menuItems={menuItems}
              size=#lg
              label="Large"
              className="min-w-[240px]"
            />
          </div>
        </div>
      </div>

      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Dropdown SubTypes"->React.string} </h2>
        
        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
          <div className="border p-4 rounded">
            <h3 className="font-medium mb-3"> {"With Container (Default)"->React.string} </h3>
            <DSMenuDropdown
              menuItems={menuItems}
              subType=#hasContainer
              label="Has Container"
              className="min-w-[200px]"
            />
          </div>

          <div className="border p-4 rounded">
            <h3 className="font-medium mb-3"> {"No Container"->React.string} </h3>
            <DSMenuDropdown
              menuItems={menuItems}
              subType=#noContainer
              label="No Container"
              className="min-w-[200px]"
            />
          </div>
        </div>
      </div>

      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Dropdown States"->React.string} </h2>
        
        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
          <div className="border p-4 rounded">
            <h3 className="font-medium mb-3"> {"Enabled (Default)"->React.string} </h3>
            <DSMenuDropdown
              menuItems={menuItems}
              label="Enabled Dropdown"
              className="min-w-[200px]"
            />
          </div>

          <div className="border p-4 rounded">
            <h3 className="font-medium mb-3"> {"Disabled"->React.string} </h3>
            <DSMenuDropdown
              menuItems={menuItems}
              disabled={true}
              label="Disabled Dropdown"
              className="min-w-[200px]"
            />
          </div>
        </div>
      </div>

      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Dropdown with Search"->React.string} </h2>
        
        <div className="border p-4 rounded">
          <DSMenuDropdown
            menuItems={longMenu}
            label="Searchable Dropdown"
            hasFilterSearch={true}
            searchPlaceholder="Search items..."
            className="min-w-[250px]"
          />
        </div>
      </div>

      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Stylized Dropdown"->React.string} </h2>
        
        <div className="border p-4 rounded">
          <DSMenuDropdown
            menuItems={menuItems}
            label="Custom Styling"
            className="min-w-[200px]"
            buttonClassName="bg-indigo-50 hover:bg-indigo-100"
            menuClassName="border-indigo-200"
          />
        </div>
      </div>
    </div>
  }
} 