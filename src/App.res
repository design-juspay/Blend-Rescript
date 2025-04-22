// Import the Button component from our bindings
open LucideIcons

module ButtonDemo = {
  @react.component
  let make = () => {
    <div>
      <h1 className="text-2xl font-bold mb-6"> {"Button Variants Demo"->React.string} </h1>
      // Basic button types
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Button Typesss"->React.string} </h2>
        <div className="flex flex-wrap gap-3">
          <DesignSystem
            buttonType=#primary text="Primary Button" onClick={_ => Js.log("Primary clicked")}
          />
          <DesignSystem
            buttonType=#secondary text="Secondary Button" onClick={_ => Js.log("Secondary clicked")}
          />
          <DesignSystem
            buttonType=#danger text="Danger Button" onClick={_ => Js.log("Danger clicked")}
          />
          <DesignSystem
            buttonType=#success text="Success Button" onClick={_ => Js.log("Success clicked")}
          />
        </div>
      </div>
      // Button sizes
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Button Sizes"->React.string} </h2>
        <div className="flex flex-wrap items-center gap-3">
          <DesignSystem buttonType=#primary size=#sm text="Small Button" />
          <DesignSystem buttonType=#primary size=#md text="Medium Button" />
          <DesignSystem buttonType=#primary size=#lg text="Large Button" />
        </div>
      </div>
      // Button states
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Button States"->React.string} </h2>
        <div className="flex flex-wrap gap-3">
          <DesignSystem buttonType=#primary text="Enabled Button" />
          <DesignSystem buttonType=#primary text="Disabled Button" isDisabled=true />
          <DesignSystem buttonType=#primary text="Loading" isLoading=true />
        </div>
      </div>
      // Button subtypes
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Button Subtypes"->React.string} </h2>
        <div className="flex flex-wrap items-center gap-3">
          <DesignSystem buttonType=#secondary subType=#default text="Default Button" />
          <DesignSystem buttonType=#secondary subType=#link text="Link Button" />
          <DesignSystem
            buttonType=#secondary
            subType=#iconOnly
            ariaLabel="Icon only button"
            leftIcon={<ThumbsUp size=18 />}
          />
        </div>
      </div>
      // Buttons with icons
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Buttons with Icons"->React.string} </h2>
        <div className="flex flex-wrap gap-3">
          <DesignSystem buttonType=#primary text="Left Icon" leftIcon={<ChevronLeft size=18 />} />
          <DesignSystem
            buttonType=#primary text="Right Icon" rightIcon={<ChevronRight size=18 />}
          />
          <DesignSystem
            buttonType=#primary
            text="Both Icons"
            leftIcon={<ChevronLeft size=18 />}
            rightIcon={<ChevronRight size=18 />}
          />
        </div>
      </div>
      // Icon variants
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Icon Variants"->React.string} </h2>
        <div className="flex flex-wrap gap-3">
          <DesignSystem buttonType=#primary text="Download" leftIcon={<Download size=18 />} />
          <DesignSystem
            buttonType=#secondary text="Mail" leftIcon={<Mail size=18 color="#666" />}
          />
          <DesignSystem
            buttonType=#success subType=#iconOnly ariaLabel="Success" leftIcon={<Check size=18 />}
          />
        </div>
      </div>
      // Full width button
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Full Width Button"->React.string} </h2>
        <DesignSystem buttonType=#primary text="Full Width Button" fullWidth=true />
      </div>
      // Children prop example
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Button with Children"->React.string} </h2>
        <DesignSystem buttonType=#success>
          <div className="flex items-center">
            <Check size=18 className="mr-2" />
            <span> {"Custom Content"->React.string} </span>
          </div>
        </DesignSystem>
      </div>
    </div>
  }
}

module TagDemo = {
  @react.component
  let make = () => {
    <div>
      <h1 className="text-2xl font-bold mb-6 mt-12"> {"Tag Variants Demo"->React.string} </h1>
      // Tag variants
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Tag Variants"->React.string} </h2>
        <div className="flex flex-wrap gap-3">
          <Tag variant=#noFill label="No Fill" />
          <Tag variant=#attentive label="Attentive" />
          <Tag variant=#subtle label="Subtle" />
        </div>
      </div>
      // Tag styles
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Tag Styles"->React.string} </h2>
        <div className="flex flex-wrap gap-3">
          <Tag tagStyle=#rounded label="Vinit OG" color=#purple variant=#attentive />
          <Tag tagStyle=#rounded label="Rounded" />
        </div>
      </div>
      // Tag sizes
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Tag Sizes"->React.string} </h2>
        <div className="flex flex-wrap items-center gap-3">
          <Tag size=#xs label="Extra Small" />
          <Tag size=#sm label="Small" />
          <Tag size=#md label="Medium" />
          <Tag size=#lg label="Large" />
        </div>
      </div>
      // Tag colors
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Tag Colors"->React.string} </h2>
        <div className="flex flex-wrap gap-3">
          <Tag color=#neutral label="Neutral" />
          <Tag color=#primary label="Primary" />
          <Tag color=#success label="Success" />
          <Tag color=#error label="Error" />
          <Tag color=#warning label="Warning" />
          <Tag color=#purple label="Purple" />
        </div>
      </div>
      // Tags with slots
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Tags with Slots"->React.string} </h2>
        <div className="flex flex-wrap gap-3">
          <Tag label="Leading Icon" leadingSlot={<Check size=14 />} />
          <Tag label="Trailing Icon" />
          <Tag label="Both Slots" leadingSlot={<Check size=14 />} />
        </div>
      </div>
      // Split Tags
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Split Tags"->React.string} </h2>
        <div className="flex flex-wrap gap-3">
          <Tag.Split leftLabel="Left" rightLabel="Right" />
          <Tag.Split
            leftLabel="With"
            rightLabel="Icons"
            leftSlot={<Check size=14 />}
            // rightSlot={<X size=14 />}
          />
          <Tag.Split color=#success leftLabel="Success" rightLabel="Tag" />
        </div>
      </div>
      // Combined variants
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Combined Variants"->React.string} </h2>
        <div className="flex flex-wrap gap-3">
          <Tag
            variant=#attentive
            color=#success
            tagStyle=#rounded
            size=#lg
            label="Combined"
            leadingSlot={<Check size=16 />}
          />
          <Tag
            variant=#subtle
            color=#error
            size=#sm
            label="Error"
            // trailingSlot={<X size=12 />}
          />
          <Tag.Split tagStyle=#rounded color=#primary size=#md leftLabel="Split" rightLabel="Tag" />
        </div>
      </div>
    </div>
  }
}

module SnackbarDemo = {
  @react.component
  let make = () => {
    let (showSnackbar, setShowSnackbar) = React.useState(_ => false)
    let (snackbarVariant, setSnackbarVariant) = React.useState(_ => #success)

    <div>
      <h1 className="text-2xl font-bold mb-6 mt-12"> {"Snackbar Demo"->React.string} </h1>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Snackbar Variants"->React.string} </h2>
        <div className="flex flex-wrap gap-3">
          <DesignSystem
            buttonType=#primary
            text="Show Success Snackbar"
            onClick={_ => {
              setSnackbarVariant(_ => #success)
              setShowSnackbar(_ => true)
            }}
          />
          <DesignSystem
            buttonType=#danger
            text="Show Error Snackbar"
            onClick={_ => {
              setSnackbarVariant(_ => #error)
              setShowSnackbar(_ => true)
            }}
          />
          <DesignSystem
            buttonType=#secondary
            text="Show Info Snackbar"
            onClick={_ => {
              setSnackbarVariant(_ => #info)
              setShowSnackbar(_ => true)
            }}
          />
          <DesignSystem
            buttonType=#secondary
            text="Show Warning Snackbar"
            onClick={_ => {
              setSnackbarVariant(_ => #warning)
              setShowSnackbar(_ => true)
            }}
          />
        </div>
      </div>
      {showSnackbar
        ? <Snackbar
            type_=snackbarVariant
            heading="Snackbar Heading"
            message="This is a detailed message explaining what happened"
            alertMessage="Optional alert message for additional context"
            showIcon=true
            autoClose=true
            position=#topLeft
            onClose={() => setShowSnackbar(_ => false)}
          />
        : React.null}
    </div>
  }
}

module TooltipDemo = {
  @react.component
  let make = () => {
    <div>
      <h1 className="text-2xl font-bold mb-6 mt-12"> {"Tooltip Demo"->React.string} </h1>
      <ToolTipVinit content={React.string("This is a basic tooltip")}>
        <button> {React.string("Hover me")} </button>
      </ToolTipVinit>
    </div>
  }
}

module TabsPreviewDemo = {
  @react.component
  let make = () => {
    <div>
      <h1 className="text-2xl font-bold mb-6 mt-12"> {"Tabs Variants Demo"->React.string} </h1>
      <div className="mb-10">
        <h2 className="text-xl font-semibold mb-4"> {"Boxed Variant"->React.string} </h2>
        <Tabs defaultValue="tab1" variant=#boxed>
          <Tabs.List variant=#boxed>
            <Tabs.Trigger value="tab1" variant=#boxed leftSlot={<Home size=16 />}>
              {React.string("Home")}
            </Tabs.Trigger>
            <Tabs.Trigger value="tab2" variant=#boxed leftSlot={<User size=16 />}>
              {React.string("Account")}
            </Tabs.Trigger>
            <Tabs.Trigger value="tab3" variant=#boxed rightSlot={<Settings size=16 />}>
              {React.string("Settings")}
            </Tabs.Trigger>
          </Tabs.List>
          <Tabs.Content value="tab1">
            <div className="p-4 rounded-md border border-gray-200 mt-4">
              <h3 className="text-lg font-semibold"> {React.string("Home Dashboard")} </h3>
              <p className="text-gray-600 mt-2"> {React.string("Welcome to your dashboard.")} </p>
            </div>
          </Tabs.Content>
          <Tabs.Content value="tab2">
            <div className="p-4 rounded-md border border-gray-200 mt-4">
              <h3 className="text-lg font-semibold"> {React.string("Account Settings")} </h3>
              <p className="text-gray-600 mt-2">
                {React.string("Manage your account preferences here.")}
              </p>
            </div>
          </Tabs.Content>
          <Tabs.Content value="tab3">
            <div className="p-4 rounded-md border border-gray-200 mt-4">
              <h3 className="text-lg font-semibold"> {React.string("General Settings")} </h3>
              <p className="text-gray-600 mt-2">
                {React.string("Configure your application preferences.")}
              </p>
            </div>
          </Tabs.Content>
        </Tabs>
      </div>
      <div className="mb-10">
        <h2 className="text-xl font-semibold mb-4"> {"Floating Variant"->React.string} </h2>
        <Tabs defaultValue="tab1" variant=#floating>
          <Tabs.List variant=#floating>
            <Tabs.Trigger value="tab1" variant=#floating leftSlot={<Home size=16 />}>
              {React.string("Home")}
            </Tabs.Trigger>
            <Tabs.Trigger value="tab2" variant=#floating leftSlot={<User size=16 />}>
              {React.string("Account")}
            </Tabs.Trigger>
            <Tabs.Trigger value="tab3" variant=#floating rightSlot={<Settings size=16 />}>
              {React.string("Settings")}
            </Tabs.Trigger>
          </Tabs.List>
          <Tabs.Content value="tab1">
            <div className="p-4 rounded-md border border-gray-200 mt-4">
              <h3 className="text-lg font-semibold"> {React.string("Home Dashboard")} </h3>
              <p className="text-gray-600 mt-2"> {React.string("Welcome to your dashboard.")} </p>
            </div>
          </Tabs.Content>
          <Tabs.Content value="tab2">
            <div className="p-4 rounded-md border border-gray-200 mt-4">
              <h3 className="text-lg font-semibold"> {React.string("Account Settings")} </h3>
              <p className="text-gray-600 mt-2">
                {React.string("Manage your account preferences here.")}
              </p>
            </div>
          </Tabs.Content>
          <Tabs.Content value="tab3">
            <div className="p-4 rounded-md border border-gray-200 mt-4">
              <h3 className="text-lg font-semibold"> {React.string("General Settings")} </h3>
              <p className="text-gray-600 mt-2">
                {React.string("Configure your application preferences.")}
              </p>
            </div>
          </Tabs.Content>
        </Tabs>
      </div>
      <div className="mb-10">
        <h2 className="text-xl font-semibold mb-4"> {"Underline Variant"->React.string} </h2>
        <Tabs defaultValue="tab1" variant=#underline>
          <Tabs.List variant=#underline>
            <Tabs.Trigger value="tab1" variant=#underline leftSlot={<Home size=16 />}>
              {React.string("Home")}
            </Tabs.Trigger>
            <Tabs.Trigger value="tab2" variant=#underline leftSlot={<User size=16 />}>
              {React.string("Account")}
            </Tabs.Trigger>
            <Tabs.Trigger value="tab3" variant=#underline rightSlot={<Settings size=16 />}>
              {React.string("Settings")}
            </Tabs.Trigger>
          </Tabs.List>
          <Tabs.Content value="tab1">
            <div className="p-4 rounded-md border border-gray-200 mt-4">
              <h3 className="text-lg font-semibold"> {React.string("Home Dashboard")} </h3>
              <p className="text-gray-600 mt-2"> {React.string("Welcome to your dashboard.")} </p>
            </div>
          </Tabs.Content>
          <Tabs.Content value="tab2">
            <div className="p-4 rounded-md border border-gray-200 mt-4">
              <h3 className="text-lg font-semibold"> {React.string("Account Settings")} </h3>
              <p className="text-gray-600 mt-2">
                {React.string("Manage your account preferences here.")}
              </p>
            </div>
          </Tabs.Content>
          <Tabs.Content value="tab3">
            <div className="p-4 rounded-md border border-gray-200 mt-4">
              <h3 className="text-lg font-semibold"> {React.string("General Settings")} </h3>
              <p className="text-gray-600 mt-2">
                {React.string("Configure your application preferences.")}
              </p>
            </div>
          </Tabs.Content>
        </Tabs>
      </div>
    </div>
  }
}

module TabInterface = {
  type tab =
    | Buttons
    | Tags
    | Snackbars
    | Tooltips
    | TabsComponent

  @react.component
  let make = () => {
    let (activeTab, setActiveTab) = React.useState(_ => Buttons)

    let getTabClass = tab => {
      let baseClass = "px-4 py-2 font-medium rounded-t-lg transition-colors duration-200"
      let activeClass = baseClass ++ " bg-blue-500 text-white"
      let inactiveClass = baseClass ++ " bg-gray-200 text-gray-700 hover:bg-gray-300"

      activeTab === tab ? activeClass : inactiveClass
    }

    <div>
      <div className="flex border-b border-gray-200 mb-6">
        <button className={getTabClass(Buttons)} onClick={_ => setActiveTab(_ => Buttons)}>
          {"Buttons"->React.string}
        </button>
        <button className={getTabClass(Tags)} onClick={_ => setActiveTab(_ => Tags)}>
          {"Tags"->React.string}
        </button>
        <button className={getTabClass(Snackbars)} onClick={_ => setActiveTab(_ => Snackbars)}>
          {"Snackbars"->React.string}
        </button>
        <button className={getTabClass(Tooltips)} onClick={_ => setActiveTab(_ => Tooltips)}>
          {"Tooltips"->React.string}
        </button>
        <button
          className={getTabClass(TabsComponent)} onClick={_ => setActiveTab(_ => TabsComponent)}>
          {"Tabs"->React.string}
        </button>
      </div>
      <div className="tab-content">
        {switch activeTab {
        | Buttons => <ButtonDemo />
        | Tags => <TagDemo />
        | Snackbars => <SnackbarDemo />
        | Tooltips => <TooltipDemo />
        | TabsComponent => <TabsPreviewDemo />
        }}
      </div>
    </div>
  }
}

let tooltipExample = () => {
  <div className="tooltip-example" style={ReactDOM.Style.make(~margin="20px", ~padding="20px", ())}>
    <h2> {React.string("Tooltip Component Example")} </h2>
    <div style={ReactDOM.Style.make(~display="flex", ~gap="20px", ~marginTop="20px", ())} />
  </div>
}

@react.component
let make = () => {
  <div className="p-6">
    <h1 className="text-3xl font-bold mb-8 text-center">
      {"Design System Components"->React.string}
    </h1>
    <TabInterface />
    <h2 className="text-2xl font-bold mb-4 mt-12">
      {React.string("Design System Tabs Example")}
    </h2>
    <Tabs defaultValue="tab1" className="tabs-root">
      <Tabs.List className="tabs-list">
        <Tabs.Trigger value="tab1" className="tabs-trigger">
          {React.string("Features")}
        </Tabs.Trigger>
        <Tabs.Trigger value="tab2" className="tabs-trigger">
          {React.string("Specifications")}
        </Tabs.Trigger>
        <Tabs.Trigger value="tab3" className="tabs-trigger">
          {React.string("Reviews")}
        </Tabs.Trigger>
      </Tabs.List>
      <Tabs.Content value="tab1" className="tabs-content">
        <div>
          <h3 className="text-xl font-semibold mb-3"> {React.string("Key Features")} </h3>
          <ul className="list-disc pl-5 space-y-2">
            <li> {React.string("Fully accessible tabs component")} </li>
            <li> {React.string("Keyboard navigation support")} </li>
            <li> {React.string("Customizable styling")} </li>
            <li> {React.string("Smooth transitions between tabs")} </li>
          </ul>
        </div>
      </Tabs.Content>
      <Tabs.Content value="tab2" className="tabs-content">
        <div>
          <h3 className="text-xl font-semibold mb-3">
            {React.string("Technical Specifications")}
          </h3>
          <table className="w-full border-collapse">
            <tbody>
              <tr className="border-b">
                <td className="py-2 font-medium"> {React.string("Component")} </td>
                <td className="py-2"> {React.string("Design System Tabs")} </td>
              </tr>
              <tr className="border-b">
                <td className="py-2 font-medium"> {React.string("Language")} </td>
                <td className="py-2"> {React.string("ReScript")} </td>
              </tr>
              <tr className="border-b">
                <td className="py-2 font-medium"> {React.string("Styling")} </td>
                <td className="py-2"> {React.string("Design System CSS")} </td>
              </tr>
            </tbody>
          </table>
        </div>
      </Tabs.Content>
      <Tabs.Content value="tab3" className="tabs-content">
        <div>
          <h3 className="text-xl font-semibold mb-3"> {React.string("User Reviews")} </h3>
          <div className="space-y-4">
            <div className="p-3 bg-gray-50 rounded-lg">
              <div className="flex items-center mb-2">
                <div className="font-medium"> {React.string("John Doe")} </div>
                <div className="ml-auto text-yellow-500"> {"★★★★★"->React.string} </div>
              </div>
              <p className="text-gray-700">
                {React.string("This tabs component is amazing! Very easy to use and customize.")}
              </p>
            </div>
            <div className="p-3 bg-gray-50 rounded-lg">
              <div className="flex items-center mb-2">
                <div className="font-medium"> {React.string("Jane Smith")} </div>
                <div className="ml-auto text-yellow-500"> {"★★★★☆"->React.string} </div>
              </div>
              <p className="text-gray-700">
                {React.string("Great component with good accessibility features.")}
              </p>
            </div>
          </div>
        </div>
      </Tabs.Content>
    </Tabs>
    {tooltipExample()}
  </div>
}
