open Menu

@react.component
let make = () => {
  let (selectedItems, setSelectedItems) = React.useState(_ => [])
  let (_, setSelectedSingleItem) = React.useState(_ => "")
  let (_isOpen, _) = React.useState(_ => false)

  // For debugging
  React.useEffect1(() => {
    Js.log("Selected items updated in CorrectDropdownDemo: ")
    Js.log(selectedItems)
    Js.log("Count: " ++ Belt.Int.toString(Belt.Array.length(selectedItems)))
    None
  }, [selectedItems])

  // Define standard menu items
  let standardMenuItems = [
    {
      id: Some("item1"),
      text: "Option 1",
      menuType: Some(#DEFAULT),
      className: None,
      disabled: None,
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
      id: Some("item2"),
      text: "Option 2",
      menuType: Some(#DEFAULT),
      className: None,
      disabled: None,
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
      id: Some("item3"),
      text: "Option 3",
      menuType: Some(#DEFAULT),
      className: None,
      disabled: None,
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

  // Define multi-select menu items
  let multiSelectMenuItems = [
    {
      id: Some("1"),
      text: "Option 1",
      menuType: Some(#MULTI_SELECT),
      className: None,
      disabled: None,
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
      isMultiSelect: Some(true), // For multi-select items
      isSelected: None,
      hasSubmenu: None,
      submenuItems: None,
      parentId: None,
    },
    {
      id: Some("2"),
      text: "Option 2",
      menuType: Some(#MULTI_SELECT),
      className: None,
      disabled: None,
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
      isMultiSelect: Some(true), // For multi-select items
      isSelected: None,
      hasSubmenu: None,
      submenuItems: None,
      parentId: None,
    },
    {
      id: Some("3"),
      text: "Option 3",
      menuType: Some(#MULTI_SELECT),
      className: None,
      disabled: None,
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
      isMultiSelect: Some(true), // For multi-select items
      isSelected: None,
      hasSubmenu: None,
      submenuItems: None,
      parentId: None,
    },
  ]

  // Handle selection for single select
  let handleSingleSelect = (item: menuItem) => {
    switch item.id {
    | Some(id) => {
        setSelectedSingleItem(_ => id)
        Js.log("Selected single item: " ++ id)
      }
    | None => ()
    }
  }

  // Handle selection for multi-select
  let handleMultiSelect = (item: menuItem) => {
    switch item.id {
    | Some(id) =>
      setSelectedItems(prev => {
        let isSelected = prev->Belt.Array.some(item => item == id)
        if isSelected {
          prev->Belt.Array.keep(item => item != id)
        } else {
          Belt.Array.concat(prev, [id])
        }
      })
    | None => ()
    }
  }

  <div className="space-y-10 p-6">
    <h1 className="text-2xl font-bold mb-6"> {"Dropdown Types Demo"->React.string} </h1>
    <div className="space-y-8">
      <div>
        <h2 className="text-xl font-semibold mb-4"> {"Icon-Only Dropdown"->React.string} </h2>
        <div className="space-y-4">
          <div>
            <h3 className="text-lg font-medium mb-2"> {"Basic Icon Dropdown"->React.string} </h3>
            <div className="flex flex-wrap gap-4">
              <DropdownBinding.make
                id="icon-only-basic"
                dropdownType=#iconOnly
                menuItems=standardMenuItems
                onSelect=handleSingleSelect
              />
            </div>
          </div>
          <div>
            <h3 className="text-lg font-medium mb-2">
              {"Icon Dropdown with Different Sizes"->React.string}
            </h3>
            <div className="flex flex-wrap gap-4 items-end">
              <div>
                <p className="text-sm text-gray-600 mb-1"> {"Small"->React.string} </p>
                <DropdownBinding.make
                  id="icon-only-sm"
                  dropdownType=#iconOnly
                  size=#sm
                  menuItems=standardMenuItems
                  onSelect=handleSingleSelect
                />
              </div>
              <div>
                <p className="text-sm text-gray-600 mb-1"> {"Medium"->React.string} </p>
                <DropdownBinding.make
                  id="icon-only-md"
                  dropdownType=#iconOnly
                  size=#md
                  menuItems=standardMenuItems
                  onSelect=handleSingleSelect
                />
              </div>
              <div>
                <p className="text-sm text-gray-600 mb-1"> {"Large"->React.string} </p>
                <DropdownBinding.make
                  id="icon-only-lg"
                  dropdownType=#iconOnly
                  size=#lg
                  menuItems=standardMenuItems
                  onSelect=handleSingleSelect
                />
              </div>
            </div>
          </div>
        </div>
      </div>
      // Single Select Dropdown
      <div>
        <h2 className="text-xl font-semibold mb-4"> {"Single-Select Dropdown"->React.string} </h2>
        <div className="space-y-4">
          <div>
            <h3 className="text-lg font-medium mb-2"> {"Basic Single Select"->React.string} </h3>
            <div className="flex flex-wrap gap-4">
              <DropdownBinding.make
                id="single-select-basic"
                dropdownType=#singleSelect
                menuItems=standardMenuItems
                hasLabel=true
                label="Single Select"
                hasHint=true
                hint="Select one option"
                placeholder="Select an option"
                onSelect=handleSingleSelect
              />
            </div>
          </div>
          <div>
            <h3 className="text-lg font-medium mb-2">
              {"Single Select with Different States"->React.string}
            </h3>
            <div className="flex flex-wrap gap-4">
              <div>
                <p className="text-sm text-gray-600 mb-1"> {"Default"->React.string} </p>
                <DropdownBinding.make
                  id="single-select-default"
                  subType=#noContainer
                  dropdownType=#singleSelect
                  menuItems=standardMenuItems
                  state=#default
                  placeholder="Default state"
                  onSelect=handleSingleSelect
                />
              </div>
              <div>
                <p className="text-sm text-gray-600 mb-1"> {"Hover"->React.string} </p>
                <DropdownBinding.make
                  id="single-select-hover"
                  dropdownType=#singleSelect
                  menuItems=standardMenuItems
                  state=#hover
                  placeholder="Hover state"
                  onSelect=handleSingleSelect
                />
              </div>
              <div>
                <p className="text-sm text-gray-600 mb-1"> {"Selected"->React.string} </p>
                <DropdownBinding.make
                  id="single-select-selected"
                  dropdownType=#singleSelect
                  menuItems=standardMenuItems
                  state=#selected
                  placeholder="Selected state"
                  selectedOption="Option 1"
                  onSelect=handleSingleSelect
                />
              </div>
            </div>
          </div>
          <div>
            <h3 className="text-lg font-medium mb-2">
              {"Single Select with Different Sizes"->React.string}
            </h3>
            <div className="flex flex-wrap gap-4">
              <div>
                <p className="text-sm text-gray-600 mb-1"> {"Small"->React.string} </p>
                <DropdownBinding.make
                  id="single-select-sm"
                  dropdownType=#singleSelect
                  size=#sm
                  menuItems=standardMenuItems
                  placeholder="Small dropdown"
                  onSelect=handleSingleSelect
                />
              </div>
              <div>
                <p className="text-sm text-gray-600 mb-1"> {"Medium"->React.string} </p>
                <DropdownBinding.make
                  id="single-select-md"
                  dropdownType=#singleSelect
                  size=#md
                  menuItems=standardMenuItems
                  placeholder="Medium dropdown"
                  onSelect=handleSingleSelect
                />
              </div>
              <div>
                <p className="text-sm text-gray-600 mb-1"> {"Large"->React.string} </p>
                <DropdownBinding.make
                  id="single-select-lg"
                  dropdownType=#singleSelect
                  size=#lg
                  menuItems=standardMenuItems
                  placeholder="Large dropdown"
                  onSelect=handleSingleSelect
                />
              </div>
            </div>
          </div>
        </div>
      </div>
      // Multi-select Dropdown
      <div>
        <h2 className="text-xl font-semibold mb-4"> {"Multi-select Dropdown"->React.string} </h2>
        <div className="space-y-8">
          <div>
            <h3 className="text-lg font-medium mb-2">
              {"Count Display (hasContainer)"->React.string}
            </h3>
            <div className="flex flex-wrap gap-4">
              {
                // Debug info for props
                let selectedItemsStr = Belt.Array.joinWith(selectedItems, ",", x => x)
                let selectedCount = Belt.Array.length(selectedItems)
                Js.log("Rendering Count dropdown with:")
                Js.log2("selectedOption", selectedItemsStr)
                Js.log2("selectedCount", selectedCount)

                <DropdownBinding.make
                  id="multi-select-count"
                  dropdownType=#multiSelect
                  selectionType=#count
                  menuItems=multiSelectMenuItems
                  hasLabel=true
                  label="Multi Select (Count)"
                  hasHint=true
                  hint="Select multiple options"
                  placeholder="Select options"
                  onSelect=handleMultiSelect
                  selectedCount
                  hasClearButton=true
                  onClear={() => setSelectedItems(_ => [])}
                />
              }
            </div>
          </div>
          <div>
            <h3 className="text-lg font-medium mb-2">
              {"Text Display (hasContainer)"->React.string}
            </h3>
            <div className="flex flex-wrap gap-4">
              <DropdownBinding.make
                id="multi-select-text-correct"
                dropdownType=#multiSelect
                menuItems=multiSelectMenuItems
                selectionType=#text
                hasLabel=true
                label="Multi Select (Text)"
                hasHint=true
                hint="Select multiple options"
                placeholder="Select options"
                onSelect=handleMultiSelect
                selectedText={if Belt.Array.length(selectedItems) > 0 {
                  Belt.Array.map(selectedItems, id => {
                    let item = Belt.Array.getBy(multiSelectMenuItems, item => {
                      switch item.id {
                      | Some(itemId) => itemId == id
                      | None => false
                      }
                    })
                    switch item {
                    | Some(found) => found.text
                    | None => id
                    }
                  })->Belt.Array.joinWith(", ", x => x)
                } else {
                  ""
                }}
                hasClearButton=true
                onClear={() => setSelectedItems(_ => [])}
              />
            </div>
          </div>
          <div>
            <h3 className="text-lg font-medium mb-2"> {"Disabled Multi-select"->React.string} </h3>
            <div className="flex flex-wrap gap-4">
              <DropdownBinding.make
                id="multi-select-disabled"
                dropdownType=#multiSelect
                menuItems=multiSelectMenuItems
                selectionType=#count
                hasLabel=true
                label="Disabled Multi-select"
                placeholder="Cannot select options"
                disabled=true
              />
            </div>
          </div>
        </div>
        <div className="mt-4">
          <p className="font-medium">
            {if Belt.Array.length(selectedItems) == 0 {
              React.string("No items selected")
            } else {
              React.string("Selected items: " ++ Belt.Array.joinWith(selectedItems, ", ", x => x))
            }}
          </p>
        </div>
      </div>
      // Additional dropdown configurations
      <div>
        <h2 className="text-xl font-semibold mb-4">
          {"Additional Configurations"->React.string}
        </h2>
        <div className="space-y-4">
          <div>
            <h3 className="text-lg font-medium mb-2"> {"Dropdown with Position"->React.string} </h3>
            <div className="flex flex-wrap gap-4">
              <div>
                <p className="text-sm text-gray-600 mb-1"> {"Bottom-start"->React.string} </p>
                <DropdownBinding.make
                  id="position-bottom-start"
                  dropdownType=#singleSelect
                  menuItems=standardMenuItems
                  placeholder="Bottom-start position"
                  position=#"bottom-start"
                />
              </div>
              <div>
                <p className="text-sm text-gray-600 mb-1"> {"Bottom-end"->React.string} </p>
                <DropdownBinding.make
                  id="position-bottom-end"
                  dropdownType=#singleSelect
                  menuItems=standardMenuItems
                  placeholder="Bottom-end position"
                  position=#"bottom-end"
                />
              </div>
              <div>
                <p className="text-sm text-gray-600 mb-1"> {"Top-start"->React.string} </p>
                <DropdownBinding.make
                  id="position-top-start"
                  dropdownType=#singleSelect
                  menuItems=standardMenuItems
                  placeholder="Top-start position"
                  position=#"top-start"
                />
              </div>
            </div>
          </div>
          <div>
            <h3 className="text-lg font-medium mb-2">
              {"Dropdown with Mandatory Field"->React.string}
            </h3>
            <div className="flex flex-wrap gap-4">
              <DropdownBinding.make
                id="mandatory-dropdown"
                dropdownType=#singleSelect
                menuItems=standardMenuItems
                hasLabel=true
                label="Required Field"
                placeholder="Must select an option"
                mandatory=true
              />
            </div>
          </div>
          <div>
            <h3 className="text-lg font-medium mb-2">
              {"Dropdown with Custom Width"->React.string}
            </h3>
            <div className="flex flex-wrap gap-4">
              <DropdownBinding.make
                id="custom-width"
                dropdownType=#singleSelect
                menuItems=standardMenuItems
                hasLabel=true
                label="Custom Width"
                placeholder="Width: 300px"
                width="300px"
              />
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
}
