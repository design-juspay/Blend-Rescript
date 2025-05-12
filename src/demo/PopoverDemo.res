open RescriptCore

module PopoverDemo = {
  @react.component
  let make = () => {
    // State for controlled popover
    let (isOpen, setIsOpen) = React.useState(_ => false)
    
    // Handle open change
    let handleOpenChange = open_ => {
      setIsOpen(_ => open_)
      Js.log(`Popover open state changed to: ${open_ ? "open" : "closed"}`)
    }
    
    // Handle button clicks
    let handlePrimaryClick = () => {
      Js.log("Primary button clicked")
    }
    
    let handleSecondaryClick = () => {
      Js.log("Secondary button clicked")
      setIsOpen(_ => false)
    }
    
    <div className="p-4 space-y-8">
      <h1 className="text-2xl font-bold"> {"Popover Components"->React.string} </h1>
      
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Basic Popover Examples"->React.string} </h2>
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
          <div className="flex flex-col items-center">
            <Popover
              trigger={<button className="px-4 py-2 bg-blue-500 text-white rounded"> {"Open Popover"->React.string} </button>}
              placement=#bottom
            >
              <div className="p-4">
                <p> {"This is a basic popover with default placement"->React.string} </p>
              </div>
            </Popover>
            <p className="mt-2 text-sm text-gray-600"> {"Default Popover"->React.string} </p>
          </div>
          
          <div className="flex flex-col items-center">
            <Popover
              trigger={<button className="px-4 py-2 bg-green-500 text-white rounded"> {"Open with Heading"->React.string} </button>}
              placement=#right
              heading="Popover Title"
              description="This is a detailed description of what this popover is about."
            >
              <div className="p-4">
                <p> {"This popover has a heading and description."->React.string} </p>
              </div>
            </Popover>
            <p className="mt-2 text-sm text-gray-600"> {"With Heading & Description"->React.string} </p>
          </div>
          
          <div className="flex flex-col items-center">
            <Popover
              trigger={<button className="px-4 py-2 bg-purple-500 text-white rounded"> {"With Actions"->React.string} </button>}
              placement=#left
              heading="Confirmation"
              primaryButtonText="Confirm"
              secondaryButtonText="Cancel"
              onPrimaryButtonClick={handlePrimaryClick}
              onSecondaryButtonClick={handleSecondaryClick}
            >
              <div className="p-4">
                <p> {"This popover includes action buttons."->React.string} </p>
              </div>
            </Popover>
            <p className="mt-2 text-sm text-gray-600"> {"With Action Buttons"->React.string} </p>
          </div>
        </div>
      </div>
      
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Popover Placements"->React.string} </h2>
        <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
          <div className="flex flex-col items-center p-4">
            <Popover
              trigger={<button className="px-4 py-2 bg-blue-500 text-white rounded"> {"Top"->React.string} </button>}
              placement=#top
            >
              <div className="p-4 bg-white">
                <p> {"Popover on top"->React.string} </p>
              </div>
            </Popover>
          </div>
          
          <div className="flex flex-col items-center p-4">
            <Popover
              trigger={<button className="px-4 py-2 bg-blue-500 text-white rounded"> {"Right"->React.string} </button>}
              placement=#right
            >
              <div className="p-4 bg-white">
                <p> {"Popover on right"->React.string} </p>
              </div>
            </Popover>
          </div>
          
          <div className="flex flex-col items-center p-4">
            <Popover
              trigger={<button className="px-4 py-2 bg-blue-500 text-white rounded"> {"Bottom"->React.string} </button>}
              placement=#bottom
            >
              <div className="p-4 bg-white">
                <p> {"Popover on bottom"->React.string} </p>
              </div>
            </Popover>
          </div>
          
          <div className="flex flex-col items-center p-4">
            <Popover
              trigger={<button className="px-4 py-2 bg-blue-500 text-white rounded"> {"Left"->React.string} </button>}
              placement=#left
            >
              <div className="p-4 bg-white">
                <p> {"Popover on left"->React.string} </p>
              </div>
            </Popover>
          </div>
          
          <div className="flex flex-col items-center p-4">
            <Popover
              trigger={<button className="px-4 py-2 bg-blue-500 text-white rounded"> {"Top Start"->React.string} </button>}
              placement=#"top-start"
            >
              <div className="p-4 bg-white">
                <p> {"Popover on top-start"->React.string} </p>
              </div>
            </Popover>
          </div>
          
          <div className="flex flex-col items-center p-4">
            <Popover
              trigger={<button className="px-4 py-2 bg-blue-500 text-white rounded"> {"Bottom End"->React.string} </button>}
              placement=#"bottom-end"
            >
              <div className="p-4 bg-white">
                <p> {"Popover on bottom-end"->React.string} </p>
              </div>
            </Popover>
          </div>
        </div>
      </div>
      
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Controlled Popover"->React.string} </h2>
        <div className="flex flex-col space-y-4">
          <div className="flex items-center space-x-4">
            <Popover
              trigger={<button className="px-4 py-2 bg-indigo-500 text-white rounded"> {"Controlled Popover"->React.string} </button>}
              placement=#bottom
              open_={isOpen}
              onOpenChange={handleOpenChange}
              heading="Controlled Popover"
              description="This popover's state is controlled externally."
              showCloseButton={true}
            >
              <div className="p-4">
                <p> {"This popover's open state is controlled by React state."->React.string} </p>
              </div>
            </Popover>
            
            <button
              onClick={_ => setIsOpen(prev => !prev)}
              className="px-4 py-2 bg-gray-200 rounded"
            >
              {(isOpen ? "Close Popover" : "Open Popover")->React.string}
            </button>
            
            <div className="ml-4 text-sm text-gray-600">
              {`Current state: ${isOpen ? "Open" : "Closed"}`->React.string}
            </div>
          </div>
        </div>
      </div>
      
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Popover with Different Button Types"->React.string} </h2>
        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
          <div className="flex flex-col items-center">
            <Popover
              trigger={<button className="px-4 py-2 bg-blue-500 text-white rounded"> {"Primary Actions"->React.string} </button>}
              placement=#bottom
              heading="Confirmation"
              primaryButtonText="Accept"
              secondaryButtonText="Decline"
              primaryButtonType=#primary
              secondaryButtonType=#secondary
              onPrimaryButtonClick={handlePrimaryClick}
              onSecondaryButtonClick={handleSecondaryClick}
            >
              <div className="p-4">
                <p> {"This popover has primary and secondary action buttons."->React.string} </p>
              </div>
            </Popover>
            <p className="mt-2 text-sm text-gray-600"> {"Primary & Secondary Buttons"->React.string} </p>
          </div>
          
          <div className="flex flex-col items-center">
            <Popover
              trigger={<button className="px-4 py-2 bg-red-500 text-white rounded"> {"Danger Actions"->React.string} </button>}
              placement=#bottom
              heading="Delete Confirmation"
              primaryButtonText="Delete"
              secondaryButtonText="Cancel"
              primaryButtonType=#danger
              secondaryButtonType=#secondary
              onPrimaryButtonClick={handlePrimaryClick}
              onSecondaryButtonClick={handleSecondaryClick}
            >
              <div className="p-4">
                <p> {"This action cannot be undone. Are you sure you want to delete this item?"->React.string} </p>
              </div>
            </Popover>
            <p className="mt-2 text-sm text-gray-600"> {"Danger & Secondary Buttons"->React.string} </p>
          </div>
          
          <div className="flex flex-col items-center">
            <Popover
              trigger={<button className="px-4 py-2 bg-green-500 text-white rounded"> {"Success Actions"->React.string} </button>}
              placement=#bottom
              heading="Confirmation"
              primaryButtonText="Submit"
              secondaryButtonText="Back"
              primaryButtonType=#success
              secondaryButtonType=#secondary
              primaryButtonSubType=#default
              secondaryButtonSubType=#link
              onPrimaryButtonClick={handlePrimaryClick}
              onSecondaryButtonClick={handleSecondaryClick}
            >
              <div className="p-4">
                <p> {"Submit your information to continue."->React.string} </p>
              </div>
            </Popover>
            <p className="mt-2 text-sm text-gray-600"> {"Success Button & Link Button"->React.string} </p>
          </div>
          
          <div className="flex flex-col items-center">
            <Popover
              trigger={<button className="px-4 py-2 bg-gray-500 text-white rounded"> {"Disabled Actions"->React.string} </button>}
              placement=#bottom
              heading="Form Incomplete"
              primaryButtonText="Submit"
              secondaryButtonText="Cancel"
              primaryButtonDisabled={true}
              onPrimaryButtonClick={handlePrimaryClick}
              onSecondaryButtonClick={handleSecondaryClick}
            >
              <div className="p-4">
                <p> {"Please complete all required fields before submitting."->React.string} </p>
              </div>
            </Popover>
            <p className="mt-2 text-sm text-gray-600"> {"Disabled Primary Button"->React.string} </p>
          </div>
        </div>
      </div>
      
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Popover Use Cases"->React.string} </h2>
        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
          <div className="flex flex-col items-center">
            <Popover
              trigger={<button className="px-4 py-2 bg-blue-500 text-white rounded flex items-center">
                {"Help "->React.string}
                <span className="ml-1 text-lg">{"?"->React.string}</span>
              </button>}
              placement=#right
              heading="Help Information"
              closeOnOutsideClick={true}
              showCloseButton={true}
            >
              <div className="p-4">
                <h3 className="font-bold mb-2"> {"Getting Started"->React.string} </h3>
                <p className="mb-2"> {"Here are some tips to help you get started:"->React.string} </p>
                <ul className="list-disc pl-5 space-y-1">
                  <li> {"Fill out all required fields"->React.string} </li>
                  <li> {"Upload your documents"->React.string} </li>
                  <li> {"Review your information before submitting"->React.string} </li>
                </ul>
              </div>
            </Popover>
            <p className="mt-2 text-sm text-gray-600"> {"Help Information"->React.string} </p>
          </div>
          
          <div className="flex flex-col items-center">
            <Popover
              trigger={<button className="px-4 py-2 bg-purple-500 text-white rounded"> {"User Profile"->React.string} </button>}
              placement=#bottom
              offset={8}
            >
              <div className="p-4 w-64">
                <div className="flex items-center border-b pb-3 mb-3">
                  <div className="w-10 h-10 rounded-full bg-gray-300 mr-3 flex items-center justify-center font-bold text-gray-600">
                    {"JD"->React.string}
                  </div>
                  <div>
                    <div className="font-bold"> {"John Doe"->React.string} </div>
                    <div className="text-sm text-gray-600"> {"john.doe@example.com"->React.string} </div>
                  </div>
                </div>
                <div className="space-y-2">
                  <button className="block w-full text-left px-3 py-2 hover:bg-gray-100 rounded">
                    {"View Profile"->React.string}
                  </button>
                  <button className="block w-full text-left px-3 py-2 hover:bg-gray-100 rounded">
                    {"Settings"->React.string}
                  </button>
                  <button className="block w-full text-left px-3 py-2 hover:bg-gray-100 rounded">
                    {"Help Center"->React.string}
                  </button>
                  <button className="block w-full text-left px-3 py-2 hover:bg-gray-100 rounded text-red-600">
                    {"Sign Out"->React.string}
                  </button>
                </div>
              </div>
            </Popover>
            <p className="mt-2 text-sm text-gray-600"> {"User Profile Menu"->React.string} </p>
          </div>
          
          <div className="flex flex-col items-center">
            <Popover
              trigger={<button className="px-4 py-2 border border-gray-300 bg-white rounded flex items-center">
                {"Filter "->React.string}
                <span className="ml-1">{"⚙️"->React.string}</span>
              </button>}
              placement=#"bottom-start"
            >
              <div className="p-4 w-64">
                <h3 className="font-bold mb-3"> {"Filter Options"->React.string} </h3>
                <div className="space-y-3">
                  <div>
                    <label className="block text-sm mb-1"> {"Price Range"->React.string} </label>
                    <div className="flex items-center space-x-2">
                      <input type_="text" placeholder="Min" className="border p-1 w-full rounded" />
                      <span>{"to"->React.string}</span>
                      <input type_="text" placeholder="Max" className="border p-1 w-full rounded" />
                    </div>
                  </div>
                  <div>
                    <label className="block text-sm mb-1"> {"Category"->React.string} </label>
                    <select className="border p-1 w-full rounded">
                      <option> {"All Categories"->React.string} </option>
                      <option> {"Electronics"->React.string} </option>
                      <option> {"Clothing"->React.string} </option>
                      <option> {"Books"->React.string} </option>
                    </select>
                  </div>
                  <div>
                    <label className="block text-sm mb-1"> {"Rating"->React.string} </label>
                    <div className="flex items-center">
                      {Belt.Array.make(5, "★")
                        ->Belt.Array.mapWithIndex((i, star) => 
                          <span key={i->Int.toString} className="text-yellow-400 text-lg">{star->React.string}</span>
                        )
                        ->React.array}
                    </div>
                  </div>
                  <div className="pt-2 flex justify-end space-x-2">
                    <button className="px-3 py-1 border rounded text-sm hover:bg-gray-100">
                      {"Reset"->React.string}
                    </button>
                    <button className="px-3 py-1 bg-blue-500 text-white rounded text-sm hover:bg-blue-600">
                      {"Apply"->React.string}
                    </button>
                  </div>
                </div>
              </div>
            </Popover>
            <p className="mt-2 text-sm text-gray-600"> {"Filter Dialog"->React.string} </p>
          </div>
        </div>
      </div>
    </div>
  }
}

// Export the main component
let default = PopoverDemo.make 