open React
open Popover

@react.component
let make = () => {
  let (open_, setOpen) = useState(() => false)

  <div className="space-y-8">
    <h1 className="text-2xl font-bold mb-6 mt-12"> {"Popover Demo"->React.string} </h1>
    <div className="space-y-4">
      <h2 className="text-xl font-semibold"> {"Basic Popover"->React.string} </h2>
      <Popover
        trigger={<button className="px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-600">
          {"Click me"->React.string}
        </button>}
        placement=#bottom
        heading="Popover Title"
        description="This is a basic popover with a title and description."
        primaryButtonText="Confirm"
        secondaryButtonText="Cancel"
        onPrimaryButtonClick={() => Js.log("Primary clicked")}
        onSecondaryButtonClick={() => Js.log("Secondary clicked")}>
        <div className="p-4"> {"This is the popover content"->React.string} </div>
      </Popover>
    </div>
    <div className="space-y-4">
      <h2 className="text-xl font-semibold"> {"Controlled Popover"->React.string} </h2>
      <Popover
        trigger={<button
          className="px-4 py-2 bg-green-500 text-white rounded hover:bg-green-600"
          onClick={_ => setOpen(prev => !prev)}>
          {"Toggle Popover"->React.string}
        </button>}
        open_
        // onOpenChange={setOpen}
        placement=#right
        heading="Controlled Popover"
        description="This popover is controlled by React state."
        showCloseButton=true>
        <div className="p-4"> {"This is a controlled popover"->React.string} </div>
      </Popover>
    </div>
    <div className="space-y-4">
      <h2 className="text-xl font-semibold"> {"Popover with Custom Alignment"->React.string} </h2>
      <Popover
        trigger={<button className="px-4 py-2 bg-purple-500 text-white rounded hover:bg-purple-600">
          {"Custom Alignment"->React.string}
        </button>}
        placement=#bottom
        alignment=#end
        heading="Custom Alignment"
        description="This popover has custom alignment settings."
        showCloseButton=true>
        <div className="p-4"> {"This popover is aligned to the end"->React.string} </div>
      </Popover>
    </div>
  </div>
}
