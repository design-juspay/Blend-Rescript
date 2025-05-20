open DropdownBinding
open Menu
open LucideIcons

@react.component
let make = () => {
  // Simple menu items for single selection
  let basicMenuItems: array<menuItem> = [
    {
      id: Some("1"),
      text: "Option 1",
      className: None,
      disabled: None,
      menuType: Some(#DEFAULT),
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
      text: "Option 2",
      className: None,
      disabled: None,
      menuType: Some(#DEFAULT),
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
      text: "Option 3",
      className: None,
      disabled: None,
      menuType: Some(#DEFAULT),
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

  // Menu items with icons
  let iconMenuItems: array<menuItem> = [
    {
      id: Some("1"),
      text: "Profile",
      className: None,
      disabled: None,
      menuType: Some(#DEFAULT),
      state: None,
      action: None,
      onClick: None,
      onMouseEnter: None,
      onMouseLeave: None,
      hasSlotL: Some(true),
      hasSlotR1: None,
      hasSlotR2: None,
      slotL: Some(<User size=16 />),
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
      text: "Settings",
      className: None,
      disabled: None,
      menuType: Some(#DEFAULT),
      state: None,
      action: None,
      onClick: None,
      onMouseEnter: None,
      onMouseLeave: None,
      hasSlotL: Some(true),
      hasSlotR1: None,
      hasSlotR2: None,
      slotL: Some(<Settings size=16 />),
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
      text: "Help",
      className: None,
      disabled: None,
      menuType: Some(#DEFAULT),
      state: None,
      action: None,
      onClick: None,
      onMouseEnter: None,
      onMouseLeave: None,
      hasSlotL: Some(true),
      hasSlotR1: None,
      hasSlotR2: None,
      slotL: Some(<HelpCircle size=16 />),
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

  // Multi-select menu items
  let multiSelectMenuItems: array<menuItem> = [
    {
      id: Some("1"),
      text: "Option 1",
      className: None,
      disabled: None,
      menuType: Some(#MULTI_SELECT),
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
      isMultiSelect: Some(true),
      isSelected: None,
      hasSubmenu: None,
      submenuItems: None,
      parentId: None,
    },
    {
      id: Some("2"),
      text: "Option 2",
      className: None,
      disabled: None,
      menuType: Some(#MULTI_SELECT),
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
      isMultiSelect: Some(true),
      isSelected: None,
      hasSubmenu: None,
      submenuItems: None,
      parentId: None,
    },
    {
      id: Some("3"),
      text: "Option 3",
      className: None,
      disabled: None,
      menuType: Some(#MULTI_SELECT),
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
      isMultiSelect: Some(true),
      isSelected: None,
      hasSubmenu: None,
      submenuItems: None,
      parentId: None,
    },
  ]

  <div>
    <h2 className="text-2xl font-semibold"> {React.string("Dropdown Examples")} </h2>
    <div className="mt-6">
      <h3 className="text-xl font-semibold mb-4"> {React.string("Dropdown Types")} </h3>
      <div className="mt-6 pb-6 border-b border-gray-200">
        <h4 className="text-lg font-medium mb-4"> {React.string("1. Single Select Dropdown")} </h4>
        <div className="flex flex-wrap gap-8">
          <div>
            <p className="text-sm text-gray-600 mb-2">
              {React.string("Default (HAS_CONTAINER)")}
            </p>
            <DropdownBinding
              dropdownType=#singleSelect
              menuItems=basicMenuItems
              hasLabel=true
              label="Single Select"
              hasHint=true
              hint="Select one option"
              placeholder="Select an option"
            />
          </div>
          <div>
            <p className="text-sm text-gray-600 mb-2"> {React.string("NO_CONTAINER Variant")} </p>
            <DropdownBinding
              dropdownType=#singleSelect
              subType=#noContainer
              menuItems=basicMenuItems
              placeholder="Select an option"
            />
          </div>
        </div>
      </div>
      <div className="mt-6 pb-6 border-b border-gray-200">
        <h4 className="text-lg font-medium mb-4"> {React.string("2. Icon Only Dropdown")} </h4>
        <div className="flex flex-wrap gap-8">
          <div>
            <p className="text-sm text-gray-600 mb-2">
              {React.string("Default (HAS_CONTAINER)")}
            </p>
            <DropdownBinding
              dropdownType=#iconOnly
              menuItems=iconMenuItems
              hasLeftIcon=true
              leftIcon={<User size=16 />}
              hasLabel=true
              label="Icon Only"
              hasHint=true
              hint="Click icon to open"
            />
          </div>
          <div>
            <p className="text-sm text-gray-600 mb-2"> {React.string("NO_CONTAINER Variant")} </p>
            <DropdownBinding
              dropdownType=#iconOnly
              subType=#noContainer
              menuItems=iconMenuItems
              hasLeftIcon=true
              leftIcon={<User size=16 />}
            />
          </div>
        </div>
      </div>
      <div className="mt-6 pb-6 border-b border-gray-200">
        <h4 className="text-lg font-medium mb-4"> {React.string("3. Multi Select Dropdown")} </h4>
        <div className="flex flex-wrap gap-8">
          <div>
            <p className="text-sm text-gray-600 mb-2">
              {React.string("Count Display (HAS_CONTAINER)")}
            </p>
            <DropdownBinding
              dropdownType=#multiSelect
              selectionType=#count
              menuItems=multiSelectMenuItems
              hasLabel=true
              label="Multi Select (Count)"
              hasHint=true
              hint="Select multiple options"
              placeholder="Select options"
            />
          </div>
          <div>
            <p className="text-sm text-gray-600 mb-2">
              {React.string("Text Display (HAS_CONTAINER)")}
            </p>
            <DropdownBinding
              dropdownType=#multiSelect
              selectionType=#text
              menuItems=multiSelectMenuItems
              hasLabel=true
              label="Multi Select (Text)"
              hasHint=true
              hint="Select multiple options"
              placeholder="Select options"
            />
          </div>
          <div>
            <p className="text-sm text-gray-600 mb-2"> {React.string("NO_CONTAINER Variant")} </p>
            <DropdownBinding
              dropdownType=#multiSelect
              subType=#noContainer
              menuItems=multiSelectMenuItems
              placeholder="Select options"
            />
          </div>
          <div>
            <p className="text-sm text-gray-600 mb-2">
              {React.string("NO_CONTAINER with Text Display")}
            </p>
            <DropdownBinding
              dropdownType=#multiSelect
              subType=#noContainer
              selectionType=#text
              menuItems=multiSelectMenuItems
              placeholder="Text display"
            />
          </div>
        </div>
      </div>
    </div>
    <div className="mt-10">
      <h3 className="text-xl font-semibold mb-4"> {React.string("Dropdown Subtypes")} </h3>
      <div className="mt-6 pb-6 border-b border-gray-200">
        <h4 className="text-lg font-medium mb-4"> {React.string("1. HAS_CONTAINER Subtype")} </h4>
        <p className="text-gray-600 mb-4">
          {React.string("Shows label, sublabel, and hint text")}
        </p>
        <div className="flex flex-col space-y-4">
          <DropdownBinding
            subType=#hasContainer
            hasLabel=true
            label="Regular Label"
            menuItems=basicMenuItems
            placeholder="Basic label"
          />
          <DropdownBinding
            subType=#hasContainer
            hasLabel=true
            label="With Sublabel"
            hasSubLabel=true
            subLabel="(optional)"
            menuItems=basicMenuItems
            placeholder="Label and sublabel"
          />
          <DropdownBinding
            subType=#hasContainer
            hasLabel=true
            label="With Hint"
            hasHint=true
            hint="This is a helpful hint text"
            menuItems=basicMenuItems
            placeholder="Label and hint"
          />
          <DropdownBinding
            subType=#hasContainer
            hasLabel=true
            label="Required Field"
            mandatory=true
            menuItems=basicMenuItems
            placeholder="With required indicator"
          />
        </div>
      </div>
      <div className="mt-6">
        <h4 className="text-lg font-medium mb-4"> {React.string("2. NO_CONTAINER Subtype")} </h4>
        <p className="text-gray-600 mb-4">
          {React.string("Standalone dropdown with no labels, hints, or borders")}
        </p>
        <div className="flex flex-wrap gap-8">
          <div>
            <p className="text-sm text-gray-600 mb-2"> {React.string("Single Select")} </p>
            <DropdownBinding
              subType=#noContainer menuItems=basicMenuItems placeholder="No container dropdown"
            />
          </div>
          <div>
            <p className="text-sm text-gray-600 mb-2"> {React.string("Multi Select")} </p>
            <DropdownBinding
              dropdownType=#multiSelect
              subType=#noContainer
              menuItems=multiSelectMenuItems
              placeholder="No container multiselect"
            />
          </div>
          <div>
            <p className="text-sm text-gray-600 mb-2"> {React.string("Icon Only")} </p>
            <DropdownBinding
              dropdownType=#iconOnly
              subType=#noContainer
              menuItems=iconMenuItems
              hasLeftIcon=true
              leftIcon={<User size=16 />}
            />
          </div>
        </div>
      </div>
    </div>
    <div className="mt-10">
      <h3 className="text-xl font-semibold mb-4"> {React.string("Dropdown Sizes")} </h3>
      <div className="flex flex-wrap gap-6 items-end">
        <div>
          <p className="text-sm text-gray-600 mb-2"> {React.string("Small (sm)")} </p>
          <DropdownBinding
            size=#sm
            hasLabel=true
            label="Small Dropdown"
            menuItems=basicMenuItems
            placeholder="Small"
          />
        </div>
        <div>
          <p className="text-sm text-gray-600 mb-2"> {React.string("Medium (md)")} </p>
          <DropdownBinding
            size=#md
            hasLabel=true
            label="Medium Dropdown"
            menuItems=basicMenuItems
            placeholder="Medium"
          />
        </div>
        <div>
          <p className="text-sm text-gray-600 mb-2"> {React.string("Large (lg)")} </p>
          <DropdownBinding
            size=#lg
            hasLabel=true
            label="Large Dropdown"
            menuItems=basicMenuItems
            placeholder="Large"
          />
        </div>
      </div>
      <div className="mt-8">
        <h4 className="text-lg font-medium mb-4"> {React.string("Icon Size Comparison")} </h4>
        <div className="flex flex-wrap gap-6 items-end">
          <div>
            <p className="text-sm text-gray-600 mb-2"> {React.string("Small (sm)")} </p>
            <DropdownBinding
              dropdownType=#iconOnly
              size=#sm
              hasLeftIcon=true
              leftIcon={<User size=16 />}
              menuItems=basicMenuItems
            />
          </div>
          <div>
            <p className="text-sm text-gray-600 mb-2"> {React.string("Medium (md)")} </p>
            <DropdownBinding
              dropdownType=#iconOnly
              size=#md
              hasLeftIcon=true
              leftIcon={<User size=16 />}
              menuItems=basicMenuItems
            />
          </div>
          <div>
            <p className="text-sm text-gray-600 mb-2"> {React.string("Large (lg)")} </p>
            <DropdownBinding
              dropdownType=#iconOnly
              size=#lg
              hasLeftIcon=true
              leftIcon={<User size=16 />}
              menuItems=basicMenuItems
            />
          </div>
        </div>
      </div>
    </div>
  </div>
}
