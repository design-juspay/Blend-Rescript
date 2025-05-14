open Menu
open DropdownBinding

@react.component
let make = () => {
  let (selectedItems, setSelectedItems) = React.useState(_ => [])
  let (_isOpen, setIsOpen) = React.useState(_ => false)

  // For debugging
  React.useEffect1(() => {
    Js.log("Selected items updated in CorrectDropdownDemo: ")
    Js.log(selectedItems)
    Js.log("Count: " ++ Belt.Int.toString(Belt.Array.length(selectedItems)))
    None
  }, [selectedItems])

  // Define multi-select menu items properly for the design system
  let multiSelectMenuItems = [
    {
      id: "1",
      text: "Option 1",
      menuType: #MULTI_SELECT,
    },
    {
      id: "2",
      text: "Option 2",
      menuType: #MULTI_SELECT,
    },
    {
      id: "3",
      text: "Option 3",
      menuType: #MULTI_SELECT,
    },
  ]

  <div className="space-y-10 p-6">
    // <button
    //   className="inline-flex items-center justify-center transition-all duration-200 disabled:pointer-events-none font-600 font-sans focus-visible:outline-gray-100 focus-visible:outline-2 focus:outline-gray-100 focus:outline-2 focus:bg-white focus:border-gray-150 h-9 aspect-square p-0 bg-white text-gray-600 hover:bg-gray-50 hover:border-gray-150 active:bg-gray-25 active:shadow-[inset_0px_4px_4px_0px_rgba(0,0,0,0.1)] active:border-gray-200 border-[1.5px] border-gray-200 disabled:bg-gray-150 disabled:border-0 disabled:text-gray-400 rounded-lg rounded-l-none border-[1px]">
    //   <span className="text-body-md truncate">
    //     <svg
    //       xmlns="http://www.w3.org/2000/svg"
    //       width="16"
    //       height="16"
    //       viewBox="0 0 24 24"
    //       fill="none"
    //       stroke="currentColor"
    //       strokeWidth="2"
    //       strokeLinecap="round"
    //       strokeLinejoin="round"
    //       className="lucide lucide-x text-gray-600">
    //       <path d="M18 6 6 18" />
    //       <path d="m6 6 12 12" />
    //     </svg>
    //   </span>
    //   // <span className="text-body-md truncate"> {"X"->React.string} </span>
    // </button>
    <h1 className="text-2xl font-bold mb-6"> {"Correct Dropdown Demo"->React.string} </h1>
    <div className="space-y-8">
      <div>
        <h2 className="text-xl font-semibold mb-4">
          {"Multi-select MenuDropdown"->React.string}
        </h2>
        <div className="space-y-8">
          <div>
            <h3 className="text-lg  font-medium mb-2">
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
                  dropdownType=#multiSelect
                  selectionType=#count
                  menuItems=multiSelectMenuItems
                  hasLabel=true
                  label="Multi Select (Count)"
                  hasHint=true
                  hint="Select multiple options"
                  placeholder="Select options"
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
              />
            </div>
          </div>
          // <div>
          //   <h3 className="text-lg font-medium mb-2"> {"noContainer Variant"->React.string} </h3>
          //   <div className="flex flex-wrap gap-4">
          //     <DropdownBinding.make
          //       type_=#multiSelect
          //       subType=#noContainer
          //       menuItems=multiSelectMenuItems
          //       placeholder="Select options"
          //       selectionType=#count
          //       closeOnSelect=false
          //       onSelect={item => {
          //         switch item.id {
          //         | Some(id) => handleMultiSelectItemClick(id)
          //         | None => ()
          //         }
          //       }}
          //       selectedOption={Belt.Array.joinWith(selectedItems, ",", x => x)}
          //       selectedCount={Belt.Array.length(selectedItems)}
          //     />
          //   </div>
          // </div>
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
    </div>
  </div>
}
