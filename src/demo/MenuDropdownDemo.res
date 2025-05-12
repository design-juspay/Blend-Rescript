open RescriptCore
open MenuDropdown

// Inline types for the MenuDropdown component
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
module DSMenuDropdown = {
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
    ~size: [#sm | #md | #lg]=?,
    ~type_: [#iconOnly | #singleSelect | #multiSelect]=?,
    ~subType: [#hasContainer | #noContainer]=?,
    ~disabled: bool=?,
    ~selectedItems: array<string>=?,
    ~onSelectedItemsChange: array<string> => unit=?,
    ~selectionType: [#text | #count]=?,
    ~hasLabel: bool=?,
    ~hasSubLabel: bool=?,
    ~mandatory: bool=?,
    ~hasHelp: bool=?,
    ~hasHint: bool=?,
    ~hasClearButton: bool=?,
    ~hasLeftIcon: bool=?,
    ~leftIcon: React.element=?,
    ~subLabel: string=?,
    ~hint: string=?,
    ~selectedOption: string=?,
    ~selectedCount: int=?,
    ~selectedText: string=?,
    ~onSelect: Menu.menuItemProps => unit=?,
    ~onClear: unit => unit=?,
    ~onOpen: unit => unit=?,
    ~onClose: unit => unit=?,
    ~width: string=?,
    ~position: [#"bottom-start" | #"bottom-end" | #"top-start" | #"top-end" | #left | #right]=?,
    ~offset: int=?,
    ~\"aria-label": string=?,
    ~searchTerm: string=?,
    ~onSearchTermChange: string => unit=?,
    ~onItemClick: Menu.menuItemProps => unit=?,
    ~closeOnSelect: bool=?,
  ) => React.element = "Dropdown"
}

module MenuDropdownDemo = {
  @react.component
  let make = () => {
    let (selectedSingleItem, setSelectedSingleItem) = React.useState(_ => "")
    let (selectedMultiItems, setSelectedMultiItems) = React.useState(_ => [])
    let (isMultiDropdownOpen, setIsMultiDropdownOpen) = React.useState(_ => false)
    let (isMultiTextDropdownOpen, setIsMultiTextDropdownOpen) = React.useState(_ => false)
    let (isMultiCountDropdownOpen, setIsMultiCountDropdownOpen) = React.useState(_ => false)
    
    // Basic menu items
    let basicMenuItems = [
      {
        Menu.id: Some("1"),
        text: "Profile",
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
        slotL: Some(<LucideIcons.User size=16 />),
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
        Menu.id: Some("2"),
        text: "Settings",
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
        slotL: Some(<LucideIcons.Settings size=16 />),
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
        Menu.id: Some("3"),
        text: "Help",
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
        slotL: Some(<LucideIcons.HelpCircle size=16 />),
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
    
    // Function to generate multi-select menu items based on current selection state
    let getMultiSelectMenuItems = () => {
      [
        {
          Menu.id: Some("1"),
          text: "Option 1",
          className: None,
          disabled: None,
          type_: Some(#MULTI_SELECT),
          state: None,
          action: None,
          onClick: None,
          onMouseEnter: None,
          onMouseLeave: None,
          hasSlotL: Some(true),
          hasSlotR1: Some(true),
          hasSlotR2: None,
          slotL: Some(<LucideIcons.User size=16 />),
          slotR1: Some(<Checkbox isChecked={selectedMultiItems->Belt.Array.some(id => id === "1")} isDisabled=false className="ml-2" />),
          slotR2: None,
          hasShortcut: None,
          shortcutValue: None,
          isMultiSelect: Some(true),
          isSelected: Some(selectedMultiItems->Belt.Array.some(id => id === "1")),
          hasSubmenu: None,
          submenuItems: None,
          parentId: None,
        },
        {
          Menu.id: Some("2"),
          text: "Option 2",
          className: None,
          disabled: None,
          type_: Some(#MULTI_SELECT),
          state: None,
          action: None,
          onClick: None,
          onMouseEnter: None,
          onMouseLeave: None,
          hasSlotL: Some(true),
          hasSlotR1: Some(true),
          hasSlotR2: None,
          slotL: Some(<LucideIcons.Settings size=16 />),
          slotR1: Some(<Checkbox isChecked={selectedMultiItems->Belt.Array.some(id => id === "2")} isDisabled=false className="ml-2" />),
          slotR2: None,
          hasShortcut: None,
          shortcutValue: None,
          isMultiSelect: Some(true),
          isSelected: Some(selectedMultiItems->Belt.Array.some(id => id === "2")),
          hasSubmenu: None,
          submenuItems: None,
          parentId: None,
        },
        {
          Menu.id: Some("3"),
          text: "Option 3",
          className: None,
          disabled: None,
          type_: Some(#MULTI_SELECT),
          state: None,
          action: None,
          onClick: None,
          onMouseEnter: None,
          onMouseLeave: None,
          hasSlotL: Some(true),
          hasSlotR1: Some(true),
          hasSlotR2: None,
          slotL: Some(<LucideIcons.HelpCircle size=16 />),
          slotR1: Some(<Checkbox isChecked={selectedMultiItems->Belt.Array.some(id => id === "3")} isDisabled=false className="ml-2" />),
          slotR2: None,
          hasShortcut: None,
          shortcutValue: None,
          isMultiSelect: Some(true),
          isSelected: Some(selectedMultiItems->Belt.Array.some(id => id === "3")),
          hasSubmenu: None,
          submenuItems: None,
          parentId: None,
        },
      ]
    }

    // Use the dynamic menu items in the render
    let currentMultiSelectMenuItems = getMultiSelectMenuItems()
    
    // Handle selection in single select dropdown
    let handleSelect = item => {
      let id = item.Menu.id->Belt.Option.getWithDefault("")
      setSelectedSingleItem(_ => id)
      Js.log2("Selected item:", id)
    }
    
    // Function to toggle a selection in our internal state
    let toggleSelection = (id) => {
      let isCurrentlySelected = selectedMultiItems->Belt.Array.some(itemId => itemId === id)
      
      // Update state based on current selection
      if (isCurrentlySelected) {
        // Remove from selections
        let newItems = selectedMultiItems->Belt.Array.keep(itemId => itemId !== id)
        setSelectedMultiItems(_ => newItems)
        Js.log(`Removed item ${id} from selections`)
      } else {
        // Add to selections
        let newItems = Belt.Array.concat(selectedMultiItems, [id])
        setSelectedMultiItems(_ => newItems)
        Js.log(`Added item ${id} to selections`)
      }
    }
    
    // Handle selection in multi-select dropdown
    let handleMultiSelect = items => {
      Js.log("onSelectedItemsChange called with: " ++ items->Belt.Array.joinWith(", ", x => x))
      
      // Update the state with the new selections
      setSelectedMultiItems(_ => items)
      
      // Keep all dropdowns open
      setIsMultiDropdownOpen(_ => true)
      setIsMultiTextDropdownOpen(_ => true)
      setIsMultiCountDropdownOpen(_ => true)
    }
    
    // Handle clicking on a multi-select item
    let handleMultiSelectItemClick = item => {
      let id = item.Menu.id->Belt.Option.getWithDefault("")
      Js.log(`Item clicked: ${id}`)
      
      // Toggle the selection using our helper
      toggleSelection(id)
      
      // Force all dropdowns to stay open
      setIsMultiDropdownOpen(_ => true)
      setIsMultiTextDropdownOpen(_ => true)
      setIsMultiCountDropdownOpen(_ => true)
      
      // Return false to prevent the default closing behavior
      false->ignore
    }

    // Functions to handle dropdown opening
    let handleMultiDropdownOpenChange = isOpen => {
      setIsMultiDropdownOpen(_ => isOpen)
    }
    
    let handleMultiTextDropdownOpenChange = isOpen => {
      setIsMultiTextDropdownOpen(_ => isOpen)
    }
    
    let handleMultiCountDropdownOpenChange = isOpen => {
      setIsMultiCountDropdownOpen(_ => isOpen)
    }

    <div className="p-4 space-y-8">
      <h1 className="text-2xl font-bold"> {"MenuDropdown Examples"->React.string} </h1>

      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        {/* Single Select Dropdown */ React.null}
        <div className="border p-4 rounded">
          <h3 className="font-medium mb-3"> {"Single Select Dropdown"->React.string} </h3>
          <DSMenuDropdown
            menuItems={basicMenuItems}
            type_=#singleSelect
            subType=#hasContainer
            label="Single Select"
            placeholder="Choose an option"
            selectedOption={selectedSingleItem}
            onSelect={handleSelect}
            className="min-w-[200px]"
            hasLabel={true}
            hint="Select from the available options"
            hasHint={true}
          />
          <div className="mt-3 text-sm text-gray-600">
            {`Selected item: ${selectedSingleItem}`->React.string}
          </div>
        </div>

        {/* Icon Only Dropdown */ React.null}
        <div className="border p-4 rounded">
          <h3 className="font-medium mb-3"> {"Icon Only Dropdown"->React.string} </h3>
          <div className="flex flex-col items-start">
            <DSMenuDropdown
              menuItems={basicMenuItems}
              type_=#iconOnly
              subType=#noContainer
              leftIcon={<LucideIcons.Settings size=16 />}
              hasLeftIcon={true}
              onSelect={handleSelect}
              className="w-auto"
              position=#"bottom-start"
              menuClassName="min-w-[200px]" 
              buttonClassName="flex items-center justify-center"
              offset={0}
              placeholder=""
              value=""
              label=""
              hasLabel={false}
              selectionType=#text
            />
            <p className="mt-2 text-sm text-gray-600">{"Click the icon to open"->React.string}</p>
          </div>
        </div>

        {/* Multi Select Dropdown */ React.null}
        <div className="border p-4 rounded">
          <h3 className="font-medium mb-3"> {"Multi Select Dropdown"->React.string} </h3>
          <div className="flex space-x-2 mb-2">
            <button 
              className="px-3 py-1 bg-blue-500 text-white rounded text-sm"
              onClick={_ => setIsMultiDropdownOpen(_ => true)}
            >
              {"Open Dropdown"->React.string}
            </button>
            <button 
              className="px-3 py-1 bg-green-500 text-white rounded text-sm"
              onClick={_ => {
                // Manually select all options for testing
                let allOptions = ["1", "2", "3"]
                setSelectedMultiItems(_ => allOptions)
                Js.log("Manually selected all options")
              }}
            >
              {"Select All"->React.string}
            </button>
            <button 
              className="px-3 py-1 bg-red-500 text-white rounded text-sm"
              onClick={_ => {
                // Clear all selections
                setSelectedMultiItems(_ => [])
                Js.log("Cleared all selections")
              }}
            >
              {"Clear All"->React.string}
            </button>
          </div>
          <DSMenuDropdown
            menuItems={currentMultiSelectMenuItems}
            type_=#multiSelect
            subType=#hasContainer
            label="Multi Select"
            hasLabel={true}
            selectedItems={selectedMultiItems}
            onSelectedItemsChange={handleMultiSelect}
            onItemClick={handleMultiSelectItemClick}
            selectionType=#text
            className="min-w-[200px]"
            placeholder="Select options"
            hasClearButton={true}
            onClear={() => setSelectedMultiItems(_ => [])}
            closeOnSelect={false}
            isOpen={isMultiDropdownOpen}
            onOpenChange={handleMultiDropdownOpenChange}
          />
          <div className="mt-3 text-sm text-gray-600">
            {`Selected: ${selectedMultiItems->Belt.Array.joinWith(", ", x => x)}`->React.string}
          </div>
        </div>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-2 gap-6 mt-8">
        {/* Different Size Variants */ React.null}
        <div className="border p-4 rounded">
          <h3 className="font-medium mb-3"> {"Size Variants"->React.string} </h3>
          <div className="space-y-4">
            <DSMenuDropdown
              menuItems={basicMenuItems}
              type_=#singleSelect
              subType=#hasContainer
              size=#sm
              label="Small Size"
              hasLabel={true}
              className="min-w-[200px]"
            />
            <DSMenuDropdown
              menuItems={basicMenuItems}
              type_=#singleSelect
              subType=#hasContainer
              size=#md
              label="Medium Size (Default)"
              hasLabel={true}
              className="min-w-[200px]"
            />
            <DSMenuDropdown
              menuItems={basicMenuItems}
              type_=#singleSelect
              subType=#hasContainer
              size=#lg
              label="Large Size"
              hasLabel={true}
              className="min-w-[200px]"
            />
          </div>
        </div>

        {/* Selection Display Types */ React.null}
        <div className="border p-4 rounded">
          <h3 className="font-medium mb-3"> {"Multi-Select Display Types"->React.string} </h3>
          <div className="space-y-4">
            <div>
              <button 
                className="mb-2 px-3 py-1 bg-blue-500 text-white rounded text-sm"
                onClick={_ => setIsMultiTextDropdownOpen(_ => true)}
              >
                {"Open Text Dropdown"->React.string}
              </button>
              <DSMenuDropdown
                menuItems={currentMultiSelectMenuItems}
                type_=#multiSelect
                subType=#hasContainer
                label="Show as Text"
                hasLabel={true}
                selectedItems={selectedMultiItems}
                onSelectedItemsChange={handleMultiSelect}
                onItemClick={handleMultiSelectItemClick}
                selectionType=#text
                className="min-w-[200px]"
                closeOnSelect={false}
                isOpen={isMultiTextDropdownOpen}
                onOpenChange={handleMultiTextDropdownOpenChange}
              />
            </div>
            <div>
              <button 
                className="mb-2 px-3 py-1 bg-blue-500 text-white rounded text-sm"
                onClick={_ => setIsMultiCountDropdownOpen(_ => true)}
              >
                {"Open Count Dropdown"->React.string}
              </button>
              <DSMenuDropdown
                menuItems={currentMultiSelectMenuItems}
                type_=#multiSelect
                subType=#hasContainer
                label="Show as Count"
                hasLabel={true}
                selectedItems={selectedMultiItems}
                onSelectedItemsChange={handleMultiSelect}
                onItemClick={handleMultiSelectItemClick}
                selectionType=#count
                className="min-w-[200px]"
                closeOnSelect={false}
                isOpen={isMultiCountDropdownOpen}
                onOpenChange={handleMultiCountDropdownOpenChange}
              />
            </div>
          </div>
        </div>

        <div className="border p-4 rounded mt-8">
          <h3 className="font-medium mb-3"> {"Controlled Multi-Select Items"->React.string} </h3>
          <div className="flex flex-wrap gap-2 mb-4">
            {["1", "2", "3"]->Belt.Array.map(id => {
              let isSelected = selectedMultiItems->Belt.Array.some(itemId => itemId === id)
              <button
                key=id
                className={`px-3 py-1 rounded text-sm ${isSelected ? "bg-blue-500 text-white" : "bg-gray-200"}`}
                onClick={_ => toggleSelection(id)}
              >
                {`Option ${id} ${isSelected ? "✓" : ""}`->React.string}
              </button>
            })->React.array}
          </div>
          <div className="text-sm text-gray-600 mb-2">
            {`Selected items: ${selectedMultiItems->Belt.Array.joinWith(", ", x => x)}`->React.string}
          </div>
          <button 
            className="px-3 py-1 bg-blue-500 text-white rounded text-sm mr-2"
            onClick={_ => setIsMultiDropdownOpen(_ => true)}
          >
            {"Open Dropdown"->React.string}
          </button>
          <DSMenuDropdown
            menuItems={currentMultiSelectMenuItems}
            type_=#multiSelect
            subType=#hasContainer
            label="Controlled Multi-Select"
            hasLabel={true}
            selectedItems={selectedMultiItems}
            onSelectedItemsChange={handleMultiSelect}
            onItemClick={handleMultiSelectItemClick}
            selectionType=#text
            className="min-w-[200px]"
            closeOnSelect={false}
            isOpen={isMultiDropdownOpen}
            onOpenChange={handleMultiDropdownOpenChange}
          />
        </div>
      </div>
    </div>
  }
}

// Export the main component
let default = MenuDropdownDemo.make 