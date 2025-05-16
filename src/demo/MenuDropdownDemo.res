// open Menu
// open LucideIcons
// open Checkbox

// // Helper function for creating separator menu items
// // let createSeparator = (~id="separator") => {
// //   id,
// //   text: "",
// //   type_: #SEPARATOR,
// //   className: "py-0 my-1 border-b border-gray-200",
// // }

// // Updated binding for MenuDropdown that more closely matches the design system component
// module Dropdown = {
//   // These enum variants should exactly match the design system's expected values
//   type dropdownType = [
//     | #ICON_ONLY
//     | #SINGLE_SELECT
//     | #MULTI_SELECT
//     | #iconOnly // backward compatibility
//     | #singleSelect // backward compatibility
//     | #multiSelect
//   ] // backward compatibility

//   type dropdownState = [
//     | #DEFAULT
//     | #HOVER
//     | #OPEN
//     | #SELECTED
//     | #default // backward compatibility
//     | #hover // backward compatibility
//     | #focused // backward compatibility
//     | #error // backward compatibility
//     | #disabled // backward compatibility
//     | #success
//   ] // backward compatibility

//   type dropdownSubType = [
//     | #HAS_CONTAINER
//     | #NO_CONTAINER
//     | #hasContainer // backward compatibility
//     | #noContainer // backward compatibility
//     | #menuButton
//   ] // backward compatibility

//   type dropdownSelectionType = [
//     | #COUNT
//     | #TEXT
//     | #count // backward compatibility
//     | #text
//   ] // backward compatibility

//   @module("@vinitjuspay/design-system") @react.component
//   external make: (
//     ~id: string=?,
//     ~className: string=?,
//     ~type_: dropdownType=?,
//     ~subType: dropdownSubType=?,
//     ~size: [#sm | #md | #lg]=?,
//     ~state: dropdownState=?,
//     ~selectionType: dropdownSelectionType=?,
//     ~hasLabel: bool=?,
//     ~hasSubLabel: bool=?,
//     ~mandatory: bool=?,
//     ~hasHelp: bool=?,
//     ~hasHint: bool=?,
//     ~hasClearButton: bool=?,
//     ~hasLeftIcon: bool=?,
//     ~leftIcon: React.element=?,
//     ~label: string=?,
//     ~subLabel: string=?,
//     ~hint: string=?,
//     ~placeholder: string=?,
//     ~selectedOption: string=?,
//     ~selectedCount: int=?,
//     ~selectedText: string=?,
//     ~children: React.element=?,
//     ~menuItems: array<menuItem>,
//     ~onSelect: menuItem => unit=?,
//     ~onClear: unit => unit=?,
//     ~onOpen: unit => unit=?,
//     ~onClose: unit => unit=?,
//     ~isOpen: bool=?,
//     ~disabled: bool=?,
//     ~closeOnSelect: bool=?,
//     ~width: string=?,
//     ~position: string=?,
//     ~offset: int=?,
//     // Additional props for our custom implementations
//     ~triggerType: [#button | #iconButton | #custom]=?,
//     ~triggerText: string=?,
//     ~triggerIcon: React.element=?,
//     ~triggerVariant: [#primary | #secondary | #danger | #success]=?,
//     ~triggerSize: [#sm | #md | #lg]=?,
//     ~triggerClassName: string=?,
//     ~placement: [
//       | #top
//       | #bottom
//       | #left
//       | #right
//       | #topLeft
//       | #topRight
//       | #bottomLeft
//       | #bottomRight
//       | #leftTop
//       | #leftBottom
//       | #rightTop
//       | #rightBottom
//     ]=?,
//     ~menuType: menuType=?,
//   ) => React.element = "Dropdown"
// }

// @react.component
// let make = () => {
//   let (selectedItems, setSelectedItems) = React.useState(_ => [])
//   let (_isOpen, setIsOpen) = React.useState(_ => false)

//   // For debugging
//   React.useEffect1(() => {
//     Js.log("Selected items updated: ")
//     Js.log(selectedItems)
//     Js.log("Count: " ++ Belt.Int.toString(Belt.Array.length(selectedItems)))
//     None
//   }, [selectedItems])

//   // Basic menu items
//   let basicMenuItems = [
//     {
//       id: "item1",
//       text: "Home",
//       onClick: () => Js.log("Home clicked"),
//     },
//     {
//       id: "item2",
//       text: "Profile",
//       onClick: () => Js.log("Profile clicked"),
//     },
//     {
//       id: "item3",
//       text: "Settings",
//       onClick: () => Js.log("Settings clicked"),
//     },
//     // createSeparator(~id="separator1"),
//     {
//       id: "item4",
//       text: "Logout",
//       action: #DANGER,
//       onClick: () => Js.log("Logout clicked"),
//     },
//   ]

//   // Menu items with icons
//   let menuItemsWithIcons = [
//     {
//       id: "home",
//       text: "Home",
//       hasSlotL: true,
//       slotL: <Home size=16 />,
//       onClick: () => Js.log("Home clicked"),
//     },
//     {
//       id: "profile",
//       text: "Profile",
//       hasSlotL: true,
//       slotL: <User size=16 />,
//       onClick: () => Js.log("Profile clicked"),
//     },
//     {
//       id: "settings",
//       text: "Settings",
//       hasSlotL: true,
//       slotL: <Settings size=16 />,
//       onClick: () => Js.log("Settings clicked"),
//     },
//     // createSeparator(~id="separator2"),
//     {
//       id: "logout",
//       text: "Logout",
//       hasSlotL: true,
//       slotL: <LogOut size=16 />,
//       action: #DANGER,
//       onClick: () => Js.log("Logout clicked"),
//     },
//   ]

//   // Multi-select menu items
//   let handleMultiSelectItemClick = itemId => {
//     setSelectedItems(prev => {
//       let isSelected = prev->Belt.Array.some(id => id == itemId)
//       if isSelected {
//         prev->Belt.Array.keep(id => id != itemId)
//       } else {
//         Belt.Array.concat(prev, [itemId])
//       }
//     })
//     Js.log("Multi-select item toggled: " ++ itemId)
//   }

//   // Define multi-select menu items properly for the design system
//   let multiSelectMenuItems = [
//     {
//       id: "option1",
//       text: "Option 1",
//       type_: #MULTI_SELECT,
//       isMultiSelect: true,
//       hasSlotR1: true,
//       slotR1: <Checkbox
//         size=#sm isChecked={selectedItems->Belt.Array.some(id => id == "option1")}
//       />,
//       onClick: () => handleMultiSelectItemClick("option1"),
//     },
//     {
//       id: "option2",
//       text: "Option 2",
//       type_: #MULTI_SELECT,
//       isMultiSelect: true,
//       hasSlotR1: true,
//       slotR1: <Checkbox
//         size=#sm isChecked={selectedItems->Belt.Array.some(id => id == "option2")}
//       />,
//       onClick: () => handleMultiSelectItemClick("option2"),
//     },
//     {
//       id: "option3",
//       text: "Option 3",
//       type_: #MULTI_SELECT,
//       isMultiSelect: true,
//       hasSlotR1: true,
//       slotR1: <Checkbox
//         size=#sm isChecked={selectedItems->Belt.Array.some(id => id == "option3")}
//       />,
//       onClick: () => handleMultiSelectItemClick("option3"),
//     },
//   ]

//   let handleItemClick = item => {
//     Js.log2("Item clicked:", item)
//   }

//   <div className="space-y-10 p-6">
//     <h1 className="text-2xl font-bold mb-6"> {"MenuDropdown Component"->React.string} </h1>
//     <div className="space-y-8">
//       <div>
//         <h2 className="text-xl font-semibold mb-4"> {"Basic MenuDropdown"->React.string} </h2>
//         <div className="flex flex-wrap gap-4">
//           <Dropdown.make
//             type_=#singleSelect
//             menuItems=basicMenuItems
//             onSelect=handleItemClick
//             placeholder="Select an option"
//             label="Basic Dropdown"
//           />
//         </div>
//       </div>
//       <div>
//         <h2 className="text-xl font-semibold mb-4"> {"Icon Button Trigger"->React.string} </h2>
//         <div className="flex flex-wrap gap-4">
//           <Dropdown.make
//             type_=#ICON_ONLY
//             subType=#menuButton
//             menuItems=menuItemsWithIcons
//             onSelect=handleItemClick
//             hasLeftIcon=true
//             leftIcon={<User size=16 />}
//             placeholder=""
//           />
//         </div>
//       </div>
//       <div>
//         <h2 className="text-xl font-semibold mb-4"> {"Custom Trigger"->React.string} </h2>
//         <div className="flex flex-wrap gap-4">
//           <Dropdown.make
//             type_=#singleSelect
//             menuItems=basicMenuItems
//             onSelect=handleItemClick
//             triggerType=#custom>
//             <button
//               className="px-3 py-2 bg-purple-500 text-white rounded-lg flex items-center"
//               onClick={_ => setIsOpen(prev => !prev)}>
//               <span className="mr-2"> {"Custom Trigger"->React.string} </span>
//               <ChevronDown size=16 />
//             </button>
//           </Dropdown.make>
//         </div>
//       </div>
//       <div>
//         <h2 className="text-xl font-semibold mb-4">
//           {"Multi-select MenuDropdown"->React.string}
//         </h2>
//         <div className="space-y-8">
//           <div>
//             <h3 className="text-lg font-medium mb-2">
//               {"Count Display (HAS_CONTAINER)"->React.string}
//             </h3>
//             <div className="flex flex-wrap gap-4">
//               {
//                 // Debug info for props
//                 let selectedItemsStr = Belt.Array.joinWith(selectedItems, ",", x => x)
//                 let selectedCount = Belt.Array.length(selectedItems)
//                 Js.log("Rendering Count dropdown with:")
//                 Js.log2("selectedOption", selectedItemsStr)
//                 Js.log2("selectedCount", selectedCount)

//                 <Dropdown.make
//                   id="multi-select-count"
//                   type_=#MULTI_SELECT
//                   // subType=#HAS_CONTAINER
//                   menuItems=multiSelectMenuItems
//                   selectionType=#COUNT
//                   hasClearButton=true
//                   closeOnSelect=false
//                   onClear={() => {
//                     setSelectedItems(_ => [])
//                     Js.log("Selections cleared")
//                   }}
//                   onSelect={item => {
//                     switch item.id {
//                     | Some(id) => {
//                         handleMultiSelectItemClick(id)
//                         Js.log("Selected via onSelect: " ++ id)
//                       }
//                     | None => ()
//                     }
//                   }}
//                   label="Multi Select (Count)"
//                   hint="Select multiple options"
//                   placeholder="Select options"
//                   selectedOption={selectedItemsStr}
//                   selectedCount
//                 />
//               }
//             </div>
//           </div>
//           <div>
//             <h3 className="text-lg font-medium mb-2">
//               {"Text Display (HAS_CONTAINER)"->React.string}
//             </h3>
//             <div className="flex flex-wrap gap-4">
//               <Dropdown.make
//                 id="multi-select-text"
//                 type_=#MULTI_SELECT
//                 subType=#HAS_CONTAINER
//                 menuItems=multiSelectMenuItems
//                 selectionType=#TEXT
//                 hasClearButton=true
//                 closeOnSelect=false
//                 onClear={() => setSelectedItems(_ => [])}
//                 onSelect={item => {
//                   switch item.id {
//                   | Some(id) => handleMultiSelectItemClick(id)
//                   | None => ()
//                   }
//                 }}
//                 label="Multi Select (Text)"
//                 hint="Select multiple options"
//                 placeholder="Select options"
//                 selectedOption={Belt.Array.joinWith(selectedItems, ",", x => x)}
//                 selectedText={
//                   let placeholder = "Select options"
//                   if Belt.Array.length(selectedItems) > 0 {
//                     let firstItem = Belt.Array.get(selectedItems, 0)->Belt.Option.getWithDefault("")
//                     let remainingCount = Belt.Array.length(selectedItems) - 1
//                     if remainingCount > 0 {
//                       `${placeholder} ${firstItem}, +${remainingCount->Belt.Int.toString} more`
//                     } else {
//                       `${placeholder} ${firstItem}`
//                     }
//                   } else {
//                     placeholder
//                   }
//                 }
//                 selectedCount={Belt.Array.length(selectedItems)}
//               />
//             </div>
//           </div>
//           <div>
//             <h3 className="text-lg font-medium mb-2"> {"NO_CONTAINER Variant"->React.string} </h3>
//             <div className="flex flex-wrap gap-4">
//               <Dropdown.make
//                 type_=#MULTI_SELECT
//                 subType=#NO_CONTAINER
//                 menuItems=multiSelectMenuItems
//                 placeholder="Select options"
//                 selectionType=#COUNT
//                 closeOnSelect=false
//                 onSelect={item => {
//                   switch item.id {
//                   | Some(id) => handleMultiSelectItemClick(id)
//                   | None => ()
//                   }
//                 }}
//                 selectedOption={Belt.Array.joinWith(selectedItems, ",", x => x)}
//                 selectedCount={Belt.Array.length(selectedItems)}
//               />
//             </div>
//           </div>
//           <div>
//             <h3 className="text-lg font-medium mb-2">
//               {"NO_CONTAINER with Text Display"->React.string}
//             </h3>
//             <div className="flex flex-wrap gap-4">
//               <Dropdown.make
//                 type_=#MULTI_SELECT
//                 subType=#NO_CONTAINER
//                 menuItems=multiSelectMenuItems
//                 placeholder="Text display"
//                 selectionType=#TEXT
//                 closeOnSelect=false
//                 onSelect={item => {
//                   switch item.id {
//                   | Some(id) => handleMultiSelectItemClick(id)
//                   | None => ()
//                   }
//                 }}
//                 selectedOption={Belt.Array.joinWith(selectedItems, ",", x => x)}
//                 selectedText={
//                   let placeholder = "Text display"
//                   if Belt.Array.length(selectedItems) > 0 {
//                     let firstItem = Belt.Array.get(selectedItems, 0)->Belt.Option.getWithDefault("")
//                     let remainingCount = Belt.Array.length(selectedItems) - 1
//                     if remainingCount > 0 {
//                       `${placeholder} ${firstItem}, +${remainingCount->Belt.Int.toString} more`
//                     } else {
//                       `${placeholder} ${firstItem}`
//                     }
//                   } else {
//                     placeholder
//                   }
//                 }
//                 selectedCount={Belt.Array.length(selectedItems)}
//               />
//             </div>
//           </div>
//         </div>
//         <div className="mt-4">
//           <p className="font-medium">
//             {if Belt.Array.length(selectedItems) == 0 {
//               React.string("No items selected")
//             } else {
//               React.string("Selected items: " ++ Belt.Array.joinWith(selectedItems, ", ", x => x))
//             }}
//           </p>
//         </div>
//         <style
//           dangerouslySetInnerHTML={{
//             "__html": ``,
//           }}
//         />
//       </div>
//       <div>
//         <h2 className="text-xl font-semibold mb-4"> {"Dropdown Sizes"->React.string} </h2>
//         <div className="flex flex-wrap gap-6 items-end">
//           <div>
//             <p className="text-sm text-gray-600 mb-2"> {"Small (sm)"->React.string} </p>
//             <Dropdown.make
//               size=#sm
//               hasLabel=true
//               label="Small Dropdown"
//               menuItems=basicMenuItems
//               placeholder="Small"
//             />
//           </div>
//           <div>
//             <p className="text-sm text-gray-600 mb-2"> {"Medium (md)"->React.string} </p>
//             <Dropdown.make
//               size=#md
//               hasLabel=true
//               label="Medium Dropdown"
//               menuItems=basicMenuItems
//               placeholder="Medium"
//             />
//           </div>
//           <div>
//             <p className="text-sm text-gray-600 mb-2"> {"Large (lg)"->React.string} </p>
//             <Dropdown.make
//               size=#lg
//               hasLabel=true
//               label="Large Dropdown"
//               menuItems=basicMenuItems
//               placeholder="Large"
//             />
//           </div>
//         </div>
//         <div className="mt-8">
//           <h4 className="text-lg font-medium mb-4"> {"Icon Size Comparison"->React.string} </h4>
//           <div className="flex flex-wrap gap-6 items-end">
//             <div>
//               <p className="text-sm text-gray-600 mb-2"> {"Small (sm)"->React.string} </p>
//               <Dropdown.make
//                 type_=#ICON_ONLY
//                 subType=#menuButton
//                 size=#sm
//                 hasLeftIcon=true
//                 leftIcon={<User size=16 />}
//                 menuItems=basicMenuItems
//                 placeholder=""
//               />
//             </div>
//             <div>
//               <p className="text-sm text-gray-600 mb-2"> {"Medium (md)"->React.string} </p>
//               <Dropdown.make
//                 type_=#ICON_ONLY
//                 subType=#menuButton
//                 size=#md
//                 hasLeftIcon=true
//                 leftIcon={<User size=16 />}
//                 menuItems=basicMenuItems
//                 placeholder=""
//               />
//             </div>
//             <div>
//               <p className="text-sm text-gray-600 mb-2"> {"Large (lg)"->React.string} </p>
//               <Dropdown.make
//                 type_=#ICON_ONLY
//                 subType=#menuButton
//                 size=#lg
//                 hasLeftIcon=true
//                 leftIcon={<User size=16 />}
//                 menuItems=basicMenuItems
//                 placeholder=""
//               />
//             </div>
//           </div>
//         </div>
//       </div>
//     </div>
//   </div>
// }

@react.component
let make = () => {
  <div> {"MenuDropdownDemo"->React.string} </div>
}
