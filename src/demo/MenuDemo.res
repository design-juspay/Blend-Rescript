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
    ~type_: [#iconOnly | #singleSelect | #multiSelect]=?,
    ~subType: [#hasContainer | #noContainer]=?,
    ~disabled: bool=?,
    ~selectedItems: array<string>=?,
    ~onSelectedItemsChange: array<string> => unit=?,
    ~selectionType: [#text | #count]=?,
  ) => React.element = "Dropdown"
}

// Main component
module MenuDemo = {
  // Helper to create a menu item with an icon
  let makeMenuItemWithIcon = (id, text, icon) => {
    let item: Types.menuItemProps = {
      id: Some(id),
      text: text,
      className: None,
      disabled: None,
      type_: Some(#DEFAULT),
      state: None,
      action: None,
      onClick: None,
      onMouseEnter: None,
      onMouseLeave: None,
      hasSlotL: Some(true),
      hasSlotR1: None,
      hasSlotR2: None,
      slotL: Some(icon),
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
  }

  // Helper to create a submenu item
  let makeSubmenuItem = (id, text, icon, submenuItems) => {
    let item: Types.menuItemProps = {
      id: Some(id),
      text: text,
      className: None,
      disabled: None,
      type_: Some(#SUBMENU),
      state: None,
      action: None,
      onClick: None,
      onMouseEnter: None,
      onMouseLeave: None,
      hasSlotL: Some(true),
      hasSlotR1: None,
      hasSlotR2: None,
      slotL: Some(icon),
      slotR1: None,
      slotR2: None,
      hasShortcut: None,
      shortcutValue: None,
      isMultiSelect: None,
      isSelected: None,
      hasSubmenu: Some(true),
      submenuItems: Some(submenuItems),
      parentId: None,
    }
    item
  }

  // Helper to create a multi-select item
  let makeMultiSelectItem = (id, text, isSelected) => {
    let item: Types.menuItemProps = {
      id: Some(id),
      text: text,
      className: None,
      disabled: None,
      type_: Some(#MULTI_SELECT),
      state: None,
      action: None,
      onClick: None,
      onMouseEnter: None,
      onMouseLeave: None,
      hasSlotL: Some(true),
      hasSlotR1: None,
      hasSlotR2: None,
      slotL: Some(<Checkbox isChecked={isSelected} isDisabled=false className="mr-2" />),
      slotR1: None,
      slotR2: None,
      hasShortcut: None,
      shortcutValue: None,
      isMultiSelect: Some(true),
      isSelected: Some(isSelected),
      hasSubmenu: None,
      submenuItems: None,
      parentId: None,
    }
    item
  }

  // Helper to create an action item
  let makeActionItem = (id, text, icon, action) => {
    let item: Types.menuItemProps = {
      id: Some(id),
      text: text,
      className: None,
      disabled: None,
      type_: Some(#ACTION),
      state: None,
      action: Some(action),
      onClick: None,
      onMouseEnter: None,
      onMouseLeave: None,
      hasSlotL: Some(true),
      hasSlotR1: None,
      hasSlotR2: None,
      slotL: Some(icon),
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
  }

  @react.component
  let make = () => {
    let (selectedOption, setSelectedOption) = React.useState(_ => "")
    let (selectedMultiOptions, setSelectedMultiOptions) = React.useState(_ => [])
    
    // Basic Menu Items
    let basicMenuItems = [
      makeMenuItemWithIcon("1", "Profile", <LucideIcons.User size=16 />),
      makeMenuItemWithIcon("2", "Settings", <LucideIcons.Settings size=16 />),
      makeMenuItemWithIcon("3", "Help", <LucideIcons.HelpCircle size=16 />)
    ]

    // Nested Menu with Submenu
    let nestedMenuItems = [
      makeSubmenuItem(
        "1", 
        "Profile", 
        <LucideIcons.User size=16 />,
        [
          makeMenuItemWithIcon("1-1", "View Profile", <LucideIcons.User size=16 />),
          makeSubmenuItem(
            "1-2", 
            "Edit Profile", 
            <LucideIcons.Settings size=16 />,
            [
              makeMenuItemWithIcon("1-2-1", "Personal Info", <LucideIcons.User size=16 />),
              makeMenuItemWithIcon("1-2-2", "Preferences", <LucideIcons.Settings size=16 />),
              makeMenuItemWithIcon("1-2-3", "Security", <LucideIcons.Shield size=16 />)
            ]
          ),
          makeSubmenuItem(
            "1-3", 
            "Account Settings", 
            <LucideIcons.Shield size=16 />,
            [
              makeMenuItemWithIcon("1-3-1", "Billing", <LucideIcons.BarChart size=16 />),
              makeMenuItemWithIcon("1-3-2", "Subscription", <LucideIcons.Users size=16 />),
              makeMenuItemWithIcon("1-3-3", "API Keys", <LucideIcons.Shield size=16 />)
            ]
          )
        ]
      ),
      makeSubmenuItem(
        "2", 
        "Notifications", 
        <LucideIcons.Mail size=16 />,
        [
          makeMenuItemWithIcon("2-1", "All Notifications", <LucideIcons.Mail size=16 />),
          makeSubmenuItem(
            "2-2", 
            "Unread", 
            <LucideIcons.Mail size=16 />,
            [
              makeMenuItemWithIcon("2-2-1", "High Priority", <LucideIcons.Mail size=16 />),
              makeMenuItemWithIcon("2-2-2", "Medium Priority", <LucideIcons.Mail size=16 />),
              makeMenuItemWithIcon("2-2-3", "Low Priority", <LucideIcons.Mail size=16 />)
            ]
          ),
          makeSubmenuItem(
            "2-3", 
            "Settings", 
            <LucideIcons.Settings size=16 />,
            [
              makeMenuItemWithIcon("2-3-1", "Email Notifications", <LucideIcons.Mail size=16 />),
              makeMenuItemWithIcon("2-3-2", "Push Notifications", <LucideIcons.Mail size=16 />),
              makeMenuItemWithIcon("2-3-3", "SMS Notifications", <LucideIcons.Mail size=16 />)
            ]
          )
        ]
      ),
      makeSubmenuItem(
        "3", 
        "Help & Support", 
        <LucideIcons.HelpCircle size=16 />,
        [
          makeSubmenuItem(
            "3-1", 
            "Documentation", 
            <LucideIcons.Mail size=16 />,
            [
              makeMenuItemWithIcon("3-1-1", "Getting Started", <LucideIcons.Home size=16 />),
              makeMenuItemWithIcon("3-1-2", "API Reference", <LucideIcons.Mail size=16 />),
              makeMenuItemWithIcon("3-1-3", "Tutorials", <LucideIcons.HelpCircle size=16 />)
            ]
          ),
          makeSubmenuItem(
            "3-2", 
            "Contact Support", 
            <LucideIcons.Mail size=16 />,
            [
              makeMenuItemWithIcon("3-2-1", "Email Support", <LucideIcons.Mail size=16 />),
              makeMenuItemWithIcon("3-2-2", "Live Chat", <LucideIcons.Mail size=16 />),
              makeMenuItemWithIcon("3-2-3", "Phone Support", <LucideIcons.Mail size=16 />)
            ]
          ),
          makeMenuItemWithIcon("3-3", "FAQ", <LucideIcons.HelpCircle size=16 />)
        ]
      )
    ]

    // Create multi-select items with dynamic checked state
    let multiSelectMenuItems = [
      makeMultiSelectItem("1", "Option 1", selectedMultiOptions->Belt.Array.some(id => id === "1")),
      makeMultiSelectItem("2", "Option 2", selectedMultiOptions->Belt.Array.some(id => id === "2")),
      makeMultiSelectItem("3", "Option 3", selectedMultiOptions->Belt.Array.some(id => id === "3"))
    ]

    // Update multi-select state when an item is clicked
    let handleMultiSelectChange = (selectedIds) => {
      setSelectedMultiOptions(_ => selectedIds)
      Console.log2("Selected items changed:", selectedIds)
    }

    // Action Menu Items
    let actionMenuItems = [
      makeActionItem("1", "Edit Profile", <LucideIcons.User size=16 />, #PRIMARY),
      makeActionItem("2", "Delete Account", <LucideIcons.User size=16 />, #DANGER)
    ]

    <div className="p-4 space-y-8">
      <h1 className="text-2xl font-bold"> {"Menu Examples"->React.string} </h1>

      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Basic Menu"->React.string} </h2>
        <div className="relative">
          <DSMenu 
            items={basicMenuItems}
            onItemClick={item => Console.log2("Item clicked:", item)}
            className="min-w-[200px]"
          />
        </div>
      </div>

      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Menu with Submenu"->React.string} </h2>
        <div className="relative">
          <DSMenu 
            items={nestedMenuItems}
            onItemClick={item => Console.log2("Item clicked:", item)}
            className="min-w-[200px]"
          />
        </div>
      </div>

      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Multi-select Menu"->React.string} </h2>
        <div className="relative">
          <DSMenu 
            type_=#MULTI_SELECT
            items={multiSelectMenuItems}
            onItemClick={item => {
              // Handle item click without closing the menu
              let id = item.id->Belt.Option.getWithDefault("")
              let newSelections = if (selectedMultiOptions->Belt.Array.some(x => x === id)) {
                selectedMultiOptions->Belt.Array.keep(x => x !== id)
              } else {
                Belt.Array.concat(selectedMultiOptions, [id])
              }
              setSelectedMultiOptions(_ => newSelections)
              Console.log2("Clicked item:", item)
            }}
            className="min-w-[200px]"
            selectedItems={selectedMultiOptions}
            onSelectionChange={handleMultiSelectChange}
            // Keep menu open
            isOpen={true}
          />
        </div>
        <div className="mt-3 text-sm text-gray-600">
          {`Selected options: ${selectedMultiOptions->Belt.Array.joinWith(", ", x => x)}`->React.string}
        </div>
      </div>

      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Menu with Search"->React.string} </h2>
        <div className="relative">
          <DSMenu 
            items={basicMenuItems} 
            hasSearch={true}
            searchPlaceholder="Search items..."
            className="min-w-[200px]" 
          />
        </div>
      </div>

      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Menu with Actions"->React.string} </h2>
        <div className="relative">
          <DSMenu 
            items={actionMenuItems}
            onItemClick={item => Console.log2("Item clicked:", item)}
            className="min-w-[200px]"
          />
        </div>
      </div>

      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Dropdown Types"->React.string} </h2>
        
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          <div className="border p-4 rounded">
            <h3 className="font-medium mb-3"> {"Single Select Dropdown"->React.string} </h3>
            <DSMenuDropdown
              menuItems={basicMenuItems}
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
            <div className="flex flex-col items-center text-center">
              <DSMenuDropdown
                menuItems={basicMenuItems}
                type_=#iconOnly
                dropdownIcon={<span className="flex items-center justify-center w-10 h-10 bg-gray-100 rounded-full text-gray-600 hover:bg-gray-200"> {"+"->React.string} </span>}
                placeholder="Click the icon to select"
                subType=#noContainer
                className="w-auto"
                buttonClassName="flex items-center justify-center"
              />
              <p className="mt-2 text-gray-500 text-sm">{"Click the icon to select"->React.string}</p>
            </div>
          </div>

          <div className="border p-4 rounded">
            <h3 className="font-medium mb-3"> {"Multi Select Dropdown"->React.string} </h3>
            <DSMenuDropdown
              menuItems={multiSelectMenuItems}
              type_=#multiSelect
              label="Multi Select"
              selectedItems={selectedMultiOptions}
              onSelectedItemsChange={handleMultiSelectChange}
              selectionType=#text
              className="min-w-[200px]"
              placeholder="Select options"
              // Don't auto-close the dropdown when items are selected
              onOpenChange={isOpen => {
                // Only close when explicitly requested by clicking outside or pressing escape
                if (!isOpen) {
                  Console.log("Dropdown closed by user")
                }
              }}
            />
            <div className="mt-3 text-sm text-gray-600">
              {`Selected: ${selectedMultiOptions->Belt.Array.joinWith(", ", x => x)}`->React.string}
            </div>
          </div>
        </div>
      </div>
    </div>
  }
} 