open Menu
open Checkbox

// Helper function for creating separator menu items
let createSeparator = (~id="separator") => {
  id: id,
  text: "",
  type_: #SEPARATOR,
  className: "py-0 my-1 border-b border-gray-200"
}

// Helper function for creating multi-select menu items
let createMultiSelectItem = (~id, ~text, ~disabled=false) => {
  id: id,
  text: text,
  type_: #MULTI_SELECT,
  isMultiSelect: true,
  disabled: disabled
}

@react.component
let make = () => {
  let (searchTerm, setSearchTerm) = React.useState(_ => "")
  let (selectedItems, setSelectedItems) = React.useState(_ => [])
  let (isOpen, setIsOpen) = React.useState(_ => false)

  // Basic menu items
  let basicMenuItems = [
    {
      id: "item1",
      text: "Home",
      onClick: () => Js.log("Home clicked"),
    },
    {
      id: "item2",
      text: "Profile",
      onClick: () => Js.log("Profile clicked"),
    },
    {
      id: "item3",
      text: "Settings",
      onClick: () => Js.log("Settings clicked"),
    },
    {
      id: "item4",
      text: "Help",
      onClick: () => Js.log("Help clicked"),
    },
    {
      id: "item5",
      text: "Logout",
      action: #DANGER,
      onClick: () => Js.log("Logout clicked"),
    },
  ]

  // Menu items with icons
  let menuItemsWithIcons = [
    {
      id: "home",
      text: "Home",
      hasSlotL: true,
      slotL: <LucideIcons.Home size=16 />,
      onClick: () => Js.log("Home clicked"),
    },
    {
      id: "profile",
      text: "Profile",
      hasSlotL: true,
      slotL: <LucideIcons.User size=16 />,
      onClick: () => Js.log("Profile clicked"),
    },
    {
      id: "settings",
      text: "Settings",
      hasSlotL: true,
      slotL: <LucideIcons.Settings size=16 />,
      onClick: () => Js.log("Settings clicked"),
    },
    createSeparator(~id="separator1"),
    {
      id: "logout",
      text: "Logout",
      hasSlotL: true,
      slotL: <LucideIcons.LogOut size=16 />,
      action: #DANGER,
      onClick: () => Js.log("Logout clicked"),
    },
  ]

  let handleMultiSelectItemClick = itemId => {
    // Toggle the item in the selected items array
    setSelectedItems(prev => {
      let isSelected = prev->Belt.Array.some(id => id == itemId)
      if isSelected {
        prev->Belt.Array.keep(id => id != itemId)
      } else {
        Belt.Array.concat(prev, [itemId])
      }
    })
    Js.log("Multi-select item toggled:")
    Js.log(itemId)
  }

  // Multi-select menu items with explicit Checkbox components
  let multiSelectMenuItems = [
    {
      id: "option1",
      text: "Option 1",
      type_: #MULTI_SELECT,
      isMultiSelect: true,
      hasSlotR1: true,
      slotR1: <Checkbox 
        size=#sm 
        isChecked={selectedItems->Belt.Array.some(id => id == "option1")}
      />,
      onClick: () => handleMultiSelectItemClick("option1"),
    },
    {
      id: "option2",
      text: "Option 2",
      type_: #MULTI_SELECT,
      isMultiSelect: true,
      hasSlotR1: true,
      slotR1: <Checkbox 
        size=#sm 
        isChecked={selectedItems->Belt.Array.some(id => id == "option2")}
      />,
      onClick: () => handleMultiSelectItemClick("option2"),
    },
    {
      id: "option3", 
      text: "Option 3",
      type_: #MULTI_SELECT,
      isMultiSelect: true,
      hasSlotR1: true,
      slotR1: <Checkbox 
        size=#sm 
        isChecked={selectedItems->Belt.Array.some(id => id == "option3")}
      />,
      onClick: () => handleMultiSelectItemClick("option3"),
    },
    {
      id: "option4",
      text: "Option 4",
      type_: #MULTI_SELECT,
      isMultiSelect: true,
      hasSlotR1: true,
      slotR1: <Checkbox 
        size=#sm 
        isChecked={selectedItems->Belt.Array.some(id => id == "option4")}
        isDisabled=true
      />,
      disabled: true,
      onClick: () => handleMultiSelectItemClick("option4"),
    },
  ]

  // Menu items with submenu
  let nestedMenuItems = [
    {
      id: "file",
      text: "File",
      hasSubmenu: true,
      submenuItems: [
        {
          id: "new",
          text: "New",
          hasSubmenu: true,
          submenuItems: [
            {id: "document", text: "Document", onClick: () => Js.log("New Document")},
            {id: "spreadsheet", text: "Spreadsheet", onClick: () => Js.log("New Spreadsheet")},
            {id: "presentation", text: "Presentation", onClick: () => Js.log("New Presentation")},
          ],
        },
        {id: "open", text: "Open", onClick: () => Js.log("Open")},
        {id: "save", text: "Save", onClick: () => Js.log("Save")},
        createSeparator(~id="save-exit-separator"),
        {id: "exit", text: "Exit", action: #DANGER, onClick: () => Js.log("Exit")},
      ],
    },
    {
      id: "edit",
      text: "Edit",
      hasSubmenu: true,
      submenuItems: [
        {id: "undo", text: "Undo", shortcutValue: "⌘Z", hasShortcut: true, onClick: () => Js.log("Undo")},
        {id: "redo", text: "Redo", shortcutValue: "⌘Y", hasShortcut: true, onClick: () => Js.log("Redo")},
        createSeparator(~id="redo-cut-separator"),
        {id: "cut", text: "Cut", shortcutValue: "⌘X", hasShortcut: true, onClick: () => Js.log("Cut")},
        {id: "copy", text: "Copy", shortcutValue: "⌘C", hasShortcut: true, onClick: () => Js.log("Copy")},
        {id: "paste", text: "Paste", shortcutValue: "⌘V", hasShortcut: true, onClick: () => Js.log("Paste")},
      ],
    },
  ]

  let handleItemClick = item => {
    Js.log2("Item clicked:", item)
  }

  <div className="space-y-10 p-6">
    <h1 className="text-2xl font-bold mb-6"> {"Menu Component"->React.string} </h1>
    
    <div className="space-y-8">
      <div>
        <h2 className="text-xl font-semibold mb-4"> {"Basic Menu"->React.string} </h2>
        <div className="flex flex-col items-start">
          <button 
            className="px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-600"
            onClick={_ => setIsOpen(prev => !prev)}>
            {React.string("Toggle Menu")}
          </button>
          {isOpen 
            ? <div className="mt-2 border border-gray-200 rounded shadow-lg">
                <Menu 
                  items=basicMenuItems
                  onItemClick=handleItemClick
                  isOpen
                  onOpenChange={isOpen => setIsOpen(_ => isOpen)}
                />
              </div>
            : React.null}
        </div>
      </div>
      
      <div>
        <h2 className="text-xl font-semibold mb-4"> {"Menu with Icons"->React.string} </h2>
        <div className="border border-gray-200 rounded shadow-lg w-64">
          <Menu 
            items=menuItemsWithIcons
            onItemClick=handleItemClick
            isOpen=true
          />
        </div>
      </div>

      <div>
        <h2 className="text-xl font-semibold mb-4"> {"Multi-select Menu"->React.string} </h2>
        <div className="border border-gray-200 rounded shadow-lg w-64">
          <Menu 
            type_=#MULTI_SELECT
            items=multiSelectMenuItems
            selectedItems
            onSelectionChange={items => {
              setSelectedItems(_ => items)
              Js.log("Selection changed via Menu component:")
              Js.log(items)
            }}
            onItemClick={item => {
              // When an item is clicked through the Menu component,
              // we toggle its selection state
              switch item.id {
              | Some(id) => handleMultiSelectItemClick(id)
              | None => ()
              }
            }}
            isOpen=true
            className="p-2"
          />
        </div>
        <div className="mt-2">
          <p className="text-sm text-gray-700"> 
            {React.string("Click on items to select them. Multiple selections are allowed.")}
          </p>
          <p className="mt-1 font-medium"> 
            {
              if Belt.Array.length(selectedItems) == 0 {
                React.string("No items selected")
              } else {
                React.string("Selected items: " ++ Belt.Array.joinWith(selectedItems, ", ", x => x))
              }
            } 
          </p>
        </div>
      </div>

      <div>
        <h2 className="text-xl font-semibold mb-4"> {"Menu with Search"->React.string} </h2>
        <div className="border border-gray-200 rounded shadow-lg w-64">
          <Menu 
            items=basicMenuItems
            hasSearch=true
            searchPlaceholder="Search menu items..."
            searchTerm
            onSearchTermChange={term => setSearchTerm(_ => term)}
            isOpen=true
          />
        </div>
      </div>

      <div>
        <h2 className="text-xl font-semibold mb-4"> {"Nested Menu (Submenu)"->React.string} </h2>
        <div className="border border-gray-200 rounded shadow-lg w-64">
          <Menu 
            items=nestedMenuItems
            onItemClick=handleItemClick
            isOpen=true
          />
        </div>
      </div>
    </div>
  </div>
} 