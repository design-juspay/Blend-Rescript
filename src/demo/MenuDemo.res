open Menu
open LucideIcons

@react.component
let make = () => {
  let (selectedItems, setSelectedItems) = React.useState(_ => [])
  let (searchTerm, setSearchTerm) = React.useState(_ => "")

  // Basic Menu Items
  let basicMenuItems: array<menuItem> = [
    {
      id: Some("1"),
      text: "Profile",
      className: None,
      disabled: None,
      menuType: Some(#DEFAULT),
      state: None,
      action: None,
      onClick: Some(() => Js.log("Profile clicked")),
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
      onClick: Some(() => Js.log("Settings clicked")),
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
      onClick: Some(() => Js.log("Help clicked")),
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

  // Menu with Submenu
  let menuWithSubmenuItems: array<menuItem> = [
    {
      id: Some("1"),
      text: "Profile",
      className: None,
      disabled: None,
      menuType: Some(#SUBMENU),
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
      hasSubmenu: Some(true),
      submenuItems: Some([
        {
          id: Some("1-1"),
          text: "View Profile",
          className: None,
          disabled: None,
          menuType: Some(#DEFAULT),
          state: None,
          action: None,
          onClick: Some(() => Js.log("View Profile clicked")),
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
          parentId: Some("1"),
        },
        {
          id: Some("1-2"),
          text: "Edit Profile",
          className: None,
          disabled: None,
          menuType: Some(#SUBMENU),
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
          hasSubmenu: Some(true),
          submenuItems: Some([
            {
              id: Some("1-2-1"),
              text: "Personal Info",
              className: None,
              disabled: None,
              menuType: Some(#DEFAULT),
              state: None,
              action: None,
              onClick: Some(() => Js.log("Personal Info clicked")),
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
              parentId: Some("1-2"),
            },
            {
              id: Some("1-2-2"),
              text: "Preferences",
              className: None,
              disabled: None,
              menuType: Some(#DEFAULT),
              state: None,
              action: None,
              onClick: Some(() => Js.log("Preferences clicked")),
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
              parentId: Some("1-2"),
            },
          ]),
          parentId: Some("1"),
        },
      ]),
      parentId: None,
    },
    {
      id: Some("2"),
      text: "Notifications",
      className: None,
      disabled: None,
      menuType: Some(#SUBMENU),
      state: None,
      action: None,
      onClick: None,
      onMouseEnter: None,
      onMouseLeave: None,
      hasSlotL: Some(true),
      hasSlotR1: None,
      hasSlotR2: None,
      slotL: Some(<Bell size=16 />),
      slotR1: None,
      slotR2: None,
      hasShortcut: None,
      shortcutValue: None,
      isMultiSelect: None,
      isSelected: None,
      hasSubmenu: Some(true),
      submenuItems: Some([
        {
          id: Some("2-1"),
          text: "All Notifications",
          className: None,
          disabled: None,
          menuType: Some(#DEFAULT),
          state: None,
          action: None,
          onClick: Some(() => Js.log("All Notifications clicked")),
          onMouseEnter: None,
          onMouseLeave: None,
          hasSlotL: Some(true),
          hasSlotR1: None,
          hasSlotR2: None,
          slotL: Some(<Bell size=16 />),
          slotR1: None,
          slotR2: None,
          hasShortcut: None,
          shortcutValue: None,
          isMultiSelect: None,
          isSelected: None,
          hasSubmenu: None,
          submenuItems: None,
          parentId: Some("2"),
        },
      ]),
      parentId: None,
    },
  ]

  // Multi-select Menu Items
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
      isSelected: Some(selectedItems->Js.Array2.includes("1")),
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
      isSelected: Some(selectedItems->Js.Array2.includes("2")),
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
      isSelected: Some(selectedItems->Js.Array2.includes("3")),
      hasSubmenu: None,
      submenuItems: None,
      parentId: None,
    },
  ]

  // Menu with Actions
  let menuWithActionsItems: array<menuItem> = [
    {
      id: Some("1"),
      text: "Edit Profile",
      className: None,
      disabled: None,
      menuType: Some(#ACTION),
      state: None,
      action: Some(#PRIMARY),
      onClick: Some(() => Js.log("Edit Profile clicked")),
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
      text: "Delete Account",
      className: None,
      disabled: None,
      menuType: Some(#ACTION),
      state: None,
      action: Some(#DANGER),
      onClick: Some(() => Js.log("Delete Account clicked")),
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
  ]

  // Handle item selection change
  let handleSelectionChange = items => {
    setSelectedItems(_ => items)
    Js.log(`Selected items: ${items->Js.Array2.joinWith(", ")}`)
  }

  // Handle search term change
  let handleSearchTermChange = term => {
    setSearchTerm(_ => term)
    Js.log(`Search term: ${term}`)
  }

  <div className="p-6">
    <h2 className="text-2xl font-semibold"> {"Menu Examples"->React.string} </h2>
    <div className="mt-6">
      <h3 className="text-xl font-semibold mb-4"> {"Basic Menu"->React.string} </h3>
      <Menu items=basicMenuItems onItemClick={item => Js.log(`Clicked: ${item.text}`)} />
    </div>
    <div className="mt-6">
      <h3 className="text-xl font-semibold mb-4"> {"Menu with Submenu"->React.string} </h3>
      <Menu items=menuWithSubmenuItems onItemClick={item => Js.log(`Clicked: ${item.text}`)} />
    </div>
    <div className="mt-6">
      <h3 className="text-xl font-semibold mb-4"> {"Multi-select Menu"->React.string} </h3>
      <Menu
        menuType=#MULTI_SELECT
        items=multiSelectMenuItems
        selectedItems
        onSelectionChange=handleSelectionChange
      />
      <div className="mt-4">
        <p className="font-medium"> {"Selected items:"->React.string} </p>
        {selectedItems->Js.Array2.length > 0
          ? <ul className="list-disc pl-5 mt-2">
              {selectedItems
              ->Js.Array2.map(id => {
                let item = multiSelectMenuItems->Js.Array2.find(item => item.id === Some(id))
                switch item {
                | Some(item) => <li key=id> {item.text->React.string} </li>
                | None => React.null
                }
              })
              ->React.array}
            </ul>
          : <p className="text-gray-500"> {"No items selected"->React.string} </p>}
      </div>
    </div>
    <div className="mt-6">
      <h3 className="text-xl font-semibold mb-4"> {"Menu with Search"->React.string} </h3>
      <Menu
        hasSearch=true
        searchPlaceholder="Search items..."
        items=basicMenuItems
        searchTerm
        onSearchTermChange=handleSearchTermChange
      />
    </div>
    <div className="mt-6">
      <h3 className="text-xl font-semibold mb-4"> {"Menu with Actions"->React.string} </h3>
      <Menu items=menuWithActionsItems />
    </div>
  </div>
}
