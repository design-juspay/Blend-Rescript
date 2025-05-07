// Import the Button component from our bindings
open LucideIcons

// Import the avatarData type from AvatarGroup
open AvatarGroup

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

module TooltipDemo2 = {
  @react.component
  let make = () => {
    <div>
      <h1 className="text-2xl font-bold mb-6 mt-12"> {"Tooltip V2 Demo"->React.string} </h1>
      <TooltipV2 content={React.string("This is a basic tooltip")}>
        <button> {React.string("Hover me")} </button>
      </TooltipV2>
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

module AlertDemo = {
  @react.component
  let make = () => {
    <div>
      <h1 className="text-2xl font-bold mb-6 mt-12"> {"Alert Demo"->React.string} </h1>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Alert Variants"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <Alert
            heading="Primary Alert"
            description="This is a primary alert with important information."
            variant=#primary
          />
          <Alert
            heading="Success Alert"
            description="Your action was completed successfully."
            variant=#success
            icon={<Check size=16 />}
          />
          <Alert
            heading="Warning Alert"
            description="Please be aware of this important warning."
            variant=#warning
          />
          <Alert
            heading="Error Alert"
            description="An error occurred while processing your request."
            variant=#error
          />
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Alert Styles"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <Alert
            heading="Fill Style"
            description="This alert uses the fill style."
            variant=#primary
            style=#fill
          />
          <Alert
            heading="Subtle Style"
            description="This alert uses the subtle style."
            variant=#primary
            style=#subtle
          />
          <Alert
            heading="No Fill Style"
            description="This alert uses the no fill style."
            variant=#primary
            style=#noFill
          />
        </div>
      </div>
    </div>
  }
}

module BreadcrumbDemo = {
  @react.component
  let make = () => {
    <div>
      <h1 className="text-2xl font-bold mb-6 mt-12"> {"Breadcrumb Demo"->React.string} </h1>
      <Breadcrumb
        variant=#default
        items=[
          {label: "Home", href: "/", onClick: () => Js.log("Home clicked")},
          {label: "Products", href: "/products", onClick: () => Js.log("Products clicked")},
          {label: "Categories", href: "/categories", onClick: () => Js.log("Categories clicked")},
        ]
      />
    </div>
  }
}

module ButtonGroupDemo = {
  @react.component
  let make = () => {
    <div>
      <h1 className="text-2xl font-bold mb-6 mt-12"> {"ButtonGroup Demo"->React.string} </h1>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"ButtonGroup Sizes"->React.string} </h2>
        <div className="flex flex-col gap-6">
          <ButtonGroup size=#sm>
            <DesignSystem buttonType=#primary text="Primary" />
            <DesignSystem buttonType=#secondary text="Secondary" />
            <DesignSystem buttonType=#secondary text="Action" />
          </ButtonGroup>
          <ButtonGroup size=#md>
            <DesignSystem buttonType=#primary text="Primary" />
            <DesignSystem buttonType=#secondary text="Secondary" />
            <DesignSystem buttonType=#secondary text="Action" />
          </ButtonGroup>
          <ButtonGroup size=#lg>
            <DesignSystem buttonType=#primary text="Primary" />
            <DesignSystem buttonType=#secondary text="Secondary" />
            <DesignSystem buttonType=#secondary text="Action" />
          </ButtonGroup>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"ButtonGroup Modes"->React.string} </h2>
        <div className="flex flex-col gap-6">
          <div>
            <div className="mb-2"> {"Mode: singlePrimary (default)"->React.string} </div>
            <ButtonGroup mode=#singlePrimary>
              <DesignSystem buttonType=#primary text="Primary" />
              <DesignSystem buttonType=#danger text="Danger" />
              <DesignSystem buttonType=#success text="Success" />
            </ButtonGroup>
          </div>
          <div>
            <div className="mb-2"> {"Mode: allSecondary"->React.string} </div>
            <ButtonGroup mode=#allSecondary>
              <DesignSystem buttonType=#primary text="Primary" />
              <DesignSystem buttonType=#danger text="Danger" />
              <DesignSystem buttonType=#success text="Success" />
            </ButtonGroup>
          </div>
          <div>
            <div className="mb-2"> {"Mode: noTransform"->React.string} </div>
            <ButtonGroup mode=#noTransform>
              <DesignSystem buttonType=#primary text="Primary" />
              <DesignSystem buttonType=#danger text="Danger" />
              <DesignSystem buttonType=#success text="Success" />
            </ButtonGroup>
          </div>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Stacked vs Non-stacked"->React.string} </h2>
        <div className="flex flex-col gap-6">
          <div>
            <div className="mb-2"> {"isStacked: true (default)"->React.string} </div>
            <ButtonGroup isStacked=true>
              <DesignSystem buttonType=#primary text="First" />
              <DesignSystem buttonType=#secondary text="Second" />
              <DesignSystem buttonType=#secondary text="Third" />
            </ButtonGroup>
          </div>
          <div>
            <div className="mb-2"> {"isStacked: false"->React.string} </div>
            <ButtonGroup isStacked=false>
              <DesignSystem buttonType=#primary text="First" />
              <DesignSystem buttonType=#secondary text="Second" />
              <DesignSystem buttonType=#secondary text="Third" />
            </ButtonGroup>
          </div>
        </div>
      </div>
    </div>
  }
}

module AvatarDemo = {
  @react.component
  let make = () => {
    <div>
      <h1 className="text-2xl font-bold mb-6 mt-12"> {"Avatar Demo"->React.string} </h1>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Avatar Sizes"->React.string} </h2>
        <div className="flex items-center gap-6">
          <div className="flex flex-col items-center">
            <Avatar size=#sm fallback="SM" />
            <span className="mt-2 text-sm"> {"Small"->React.string} </span>
          </div>
          <div className="flex flex-col items-center">
            <Avatar size=#regular fallback="RE" />
            <span className="mt-2 text-sm"> {"Regular"->React.string} </span>
          </div>
          <div className="flex flex-col items-center">
            <Avatar size=#md fallback="MD" />
            <span className="mt-2 text-sm"> {"Medium"->React.string} </span>
          </div>
          <div className="flex flex-col items-center">
            <Avatar size=#lg fallback="LG" />
            <span className="mt-2 text-sm"> {"Large"->React.string} </span>
          </div>
          <div className="flex flex-col items-center">
            <Avatar size=#xl fallback="XL" />
            <span className="mt-2 text-sm"> {"Extra Large"->React.string} </span>
          </div>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Avatar Shapes"->React.string} </h2>
        <div className="flex items-center gap-8">
          <div className="flex flex-col items-center">
            <Avatar shape=#circular fallback="CR" size=#lg />
            <span className="mt-2 text-sm"> {"Circular"->React.string} </span>
          </div>
          <div className="flex flex-col items-center">
            <Avatar shape=#rounded fallback="RO" size=#lg />
            <span className="mt-2 text-sm"> {"Rounded"->React.string} </span>
          </div>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4">
          {"Avatar with Image vs Fallback"->React.string}
        </h2>
        <div className="flex items-center gap-8">
          <div className="flex flex-col items-center">
            <Avatar src="https://i.pravatar.cc/150?img=1" alt="User avatar" size=#lg />
            <span className="mt-2 text-sm"> {"With Image"->React.string} </span>
          </div>
          <div className="flex flex-col items-center">
            <Avatar fallback="JD" size=#lg />
            <span className="mt-2 text-sm"> {"With Fallback"->React.string} </span>
          </div>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Online Status"->React.string} </h2>
        <div className="flex items-center gap-8">
          <div className="flex flex-col items-center">
            <Avatar src="https://i.pravatar.cc/150?img=2" alt="Online user" size=#lg online=true />
            <span className="mt-2 text-sm"> {"Online"->React.string} </span>
          </div>
          <div className="flex flex-col items-center">
            <Avatar
              src="https://i.pravatar.cc/150?img=3" alt="Offline user" size=#lg online=false
            />
            <span className="mt-2 text-sm"> {"Offline"->React.string} </span>
          </div>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Comprehensive Examples"->React.string} </h2>
        <div className="grid grid-cols-3 gap-8">
          <div className="flex flex-col items-center">
            <Avatar
              src="https://i.pravatar.cc/150?img=4"
              alt="User 1"
              size=#md
              shape=#circular
              online=true
            />
            <span className="mt-2 text-sm"> {"User 1"->React.string} </span>
          </div>
          <div className="flex flex-col items-center">
            <Avatar fallback="AB" size=#md shape=#circular online=true />
            <span className="mt-2 text-sm"> {"User 2"->React.string} </span>
          </div>
          <div className="flex flex-col items-center">
            <Avatar
              src="https://i.pravatar.cc/150?img=6"
              alt="User 3"
              size=#md
              shape=#rounded
              online=false
            />
            <span className="mt-2 text-sm"> {"User 3"->React.string} </span>
          </div>
        </div>
      </div>
    </div>
  }
}

module AvatarGroupDemo = {
  @react.component
  let make = () => {
    // Sample avatar data for demos
    let avatarData = [
      {
        id: "1",
        src: Some("https://i.pravatar.cc/150?img=1"),
        alt: Some("User 1"),
        fallback: Some("U1"),
        size: None,
        shape: None,
        online: Some(true),
      },
      {
        id: "2",
        src: Some("https://i.pravatar.cc/150?img=2"),
        alt: Some("User 2"),
        fallback: Some("U2"),
        size: None,
        shape: None,
        online: Some(false),
      },
      {
        id: "3",
        src: Some("https://i.pravatar.cc/150?img=3"),
        alt: Some("User 3"),
        fallback: Some("U3"),
        size: None,
        shape: None,
        online: Some(true),
      },
      {
        id: "4",
        src: None,
        alt: Some("User 4"),
        fallback: Some("U4"),
        size: None,
        shape: None,
        online: None,
      },
      {
        id: "5",
        src: Some("https://i.pravatar.cc/150?img=5"),
        alt: Some("User 5"),
        fallback: Some("U5"),
        size: None,
        shape: None,
        online: None,
      },
      {
        id: "6",
        src: Some("https://i.pravatar.cc/150?img=6"),
        alt: Some("User 6"),
        fallback: Some("U6"),
        size: None,
        shape: None,
        online: None,
      },
    ]

    // State for selected avatars
    let (selectedAvatarIds, setSelectedAvatarIds) = React.useState(_ => [])

    <div>
      <h1 className="text-2xl font-bold mb-6 mt-12"> {"Avatar Group Demo"->React.string} </h1>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Basic Avatar Group"->React.string} </h2>
        <div className="flex flex-col gap-6">
          <AvatarGroup avatars={avatarData} />
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Avatar Group Sizes"->React.string} </h2>
        <div className="flex flex-col gap-6">
          <div>
            <div className="mb-2"> {"Size: small"->React.string} </div>
            <AvatarGroup avatars={avatarData} size=#sm />
          </div>
          <div>
            <div className="mb-2"> {"Size: regular"->React.string} </div>
            <AvatarGroup avatars={avatarData} size=#regular />
          </div>
          <div>
            <div className="mb-2"> {"Size: medium"->React.string} </div>
            <AvatarGroup avatars={avatarData} size=#md />
          </div>
          <div>
            <div className="mb-2"> {"Size: large"->React.string} </div>
            <AvatarGroup avatars={avatarData} size=#lg />
          </div>
          <div>
            <div className="mb-2"> {"Size: extra large"->React.string} </div>
            <AvatarGroup avatars={avatarData} size=#xl />
          </div>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Max Count Variations"->React.string} </h2>
        <div className="flex flex-col gap-6">
          <div>
            <div className="mb-2"> {"Max Count: 3"->React.string} </div>
            <AvatarGroup avatars={avatarData} maxCount=3 />
          </div>
          <div>
            <div className="mb-2"> {"Max Count: 4"->React.string} </div>
            <AvatarGroup avatars={avatarData} maxCount=4 />
          </div>
          <div>
            <div className="mb-2"> {"Max Count: 5"->React.string} </div>
            <AvatarGroup avatars={avatarData} maxCount=5 />
          </div>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Selection Functionality"->React.string} </h2>
        <div className="flex flex-col gap-6">
          <div>
            <div className="mb-2"> {"Selectable Avatars"->React.string} </div>
            <AvatarGroup
              avatars={avatarData}
              selectedAvatarIds={selectedAvatarIds}
              onSelectionChange={ids => setSelectedAvatarIds(_ => ids)}
            />
            <div className="mt-2">
              {`Selected IDs: ${selectedAvatarIds->Js.Array2.joinWith(", ")}`->React.string}
            </div>
          </div>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Edge Cases"->React.string} </h2>
        <div className="flex flex-col gap-6">
          <div>
            <div className="mb-2"> {"Empty Avatar Array"->React.string} </div>
            <AvatarGroup avatars={[]} />
            <div className="mt-2 text-gray-500 italic">
              {"No avatars to display"->React.string}
            </div>
          </div>
          <div>
            <div className="mb-2"> {"Avatars with Fallbacks Only"->React.string} </div>
            <AvatarGroup
              avatars={[
                {
                  id: "1",
                  src: None,
                  alt: Some("User 1"),
                  fallback: Some("U1"),
                  size: None,
                  shape: None,
                  online: None,
                },
                {
                  id: "2",
                  src: None,
                  alt: Some("User 2"),
                  fallback: Some("U2"),
                  size: None,
                  shape: None,
                  online: None,
                },
                {
                  id: "3",
                  src: None,
                  alt: Some("User 3"),
                  fallback: Some("U3"),
                  size: None,
                  shape: None,
                  online: None,
                },
              ]}
            />
          </div>
        </div>
      </div>
    </div>
  }
}

module RadioDemo = {
  @react.component
  let make = () => {
    let (selectedValue, setSelectedValue) = React.useState(_ => "option1")

    <div>
      <h1 className="text-2xl font-bold mb-6 mt-12"> {"Radio Button Demo"->React.string} </h1>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Radio Sizes"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <Radio value="small" size=#sm> {React.string("Small Radio Button")} </Radio>
          <Radio value="medium" size=#md> {React.string("Medium Radio Button")} </Radio>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Radio with Subtext"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <Radio value="subtext_example" subtext="This is additional information about this option">
            {React.string("Radio with Subtext")}
          </Radio>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Radio with Right Slot"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <Radio
            value="right_slot" rightSlot={<Tag variant=#attentive label="New" color=#primary />}>
            {React.string("Radio with Right Slot")}
          </Radio>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Radio States"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <Radio value="enabled"> {React.string("Enabled Radio")} </Radio>
          <Radio value="checked" checked=true> {React.string("Checked Radio")} </Radio>
          <Radio value="disabled" isDisabled=true> {React.string("Disabled Radio")} </Radio>
          <Radio value="disabled_checked" isDisabled=true checked=true>
            {React.string("Disabled and Checked")}
          </Radio>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4">
          {"Radio Group (Uncontrolled)"->React.string}
        </h2>
        <Radio.RadioGroup name="uncontrolled-group" defaultValue="option1" label="Select an option">
          <div className="flex flex-col gap-2">
            <Radio value="option1"> {React.string("Option 1")} </Radio>
            <Radio value="option2"> {React.string("Option 2")} </Radio>
            <Radio value="option3"> {React.string("Option 3")} </Radio>
          </div>
        </Radio.RadioGroup>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Radio Group (Controlled)"->React.string} </h2>
        <Radio.RadioGroup
          name="controlled-group"
          value=selectedValue
          label="Select an option"
          onChange={data => setSelectedValue(_ => data["value"])}>
          <div className="flex flex-col gap-2">
            <Radio value="option1"> {React.string("Option 1")} </Radio>
            <Radio value="option2"> {React.string("Option 2")} </Radio>
            <Radio value="option3"> {React.string("Option 3")} </Radio>
          </div>
        </Radio.RadioGroup>
        <div className="mt-2"> {`Selected value: ${selectedValue}`->React.string} </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Disabled Radio Group"->React.string} </h2>
        <Radio.RadioGroup
          name="disabled-group" defaultValue="option1" isDisabled=true label="Disabled group">
          <div className="flex flex-col gap-2">
            <Radio value="option1"> {React.string("Option 1")} </Radio>
            <Radio value="option2"> {React.string("Option 2")} </Radio>
            <Radio value="option3"> {React.string("Option 3")} </Radio>
          </div>
        </Radio.RadioGroup>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4">
          {"Radio with Custom Validation"->React.string}
        </h2>
        <Radio.RadioGroup name="validation-group" label="Choose a valid option">
          <div className="flex flex-col gap-2">
            <Radio value="valid" rightSlot={<Check size=16 color="green" />}>
              {React.string("Valid Option")}
            </Radio>
            <Radio value="invalid" rightSlot={<Check size=16 color="red" />}>
              {React.string("Invalid Option")}
            </Radio>
            <Radio
              value="warning"
              rightSlot={<Check size=16 color="orange" />}
              subtext="This option requires additional verification">
              {React.string("Warning Option")}
            </Radio>
          </div>
        </Radio.RadioGroup>
      </div>
    </div>
  }
}

module SwitchDemo = {
  @react.component
  let make = () => {
    let (isChecked, setIsChecked) = React.useState(_ => false)
    let (groupValues, setGroupValues) = React.useState(_ => ["option1"])

    <div>
      <h1 className="text-2xl font-bold mb-6 mt-12"> {"Switch Demo"->React.string} </h1>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Basic Switch"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <Switch
            checked=isChecked
            onCheckedChange={checked => setIsChecked(_ => checked)}
            label={React.string("Toggle me")}
          />
          <div className="text-sm text-gray-600">
            {`Current state: ${isChecked ? "On" : "Off"}`->React.string}
          </div>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Switch Sizes"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <Switch size=#sm label={React.string("Small Switch")} />
          <Switch size=#md label={React.string("Medium Switch")} />
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Switch States"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <Switch label={React.string("Enabled Switch")} />
          <Switch checked=true label={React.string("Checked Switch")} />
          <Switch disabled=true label={React.string("Disabled Switch")} />
          <Switch disabled=true checked=true label={React.string("Disabled and Checked Switch")} />
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Switch with Subtext"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <Switch
            label={React.string("Switch with Subtext")}
            subtext="Additional information about this switch option"
          />
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Switch with Right Slot"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <Switch
            label={React.string("Switch with Icon")} rightSlot={<Check size=16 color="green" />}
          />
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Switch Group"->React.string} </h2>
        <Switch.SwitchGroup
          name="options"
          label="Select multiple options"
          value=groupValues
          onChange={data => setGroupValues(_ => data["values"])}>
          <div className="flex flex-col gap-3">
            <Switch value="option1" label={React.string("Option 1")} />
            <Switch value="option2" label={React.string("Option 2")} />
            <Switch
              value="option3" label={React.string("Option 3")} subtext="With additional description"
            />
          </div>
        </Switch.SwitchGroup>
        <div className="mt-2 text-sm text-gray-600">
          {`Selected values: ${groupValues->Js.Array2.joinWith(", ")}`->React.string}
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Disabled Switch Group"->React.string} </h2>
        <Switch.SwitchGroup
          name="disabled-options"
          label="Disabled options group"
          isDisabled=true
          defaultValue={["option1"]}>
          <div className="flex flex-col gap-3">
            <Switch value="option1" label={React.string("Option 1")} />
            <Switch value="option2" label={React.string("Option 2")} />
          </div>
        </Switch.SwitchGroup>
      </div>
    </div>
  }
}

module DateRangePickerDemo = {
  @react.component
  let make = () => {
    let today = Js.Date.make()
    let future = Js.Date.make()
    let _ = Js.Date.setDate(future, Js.Date.getDate(future) +. 7.0)

    let (dateRange, setDateRange) = React.useState((_): DateRangePicker.dateRange => {
      startDate: today,
      endDate: future,
    })

    <div>
      <h1 className="text-2xl font-bold mb-6 mt-12"> {"DateRangePicker Demo"->React.string} </h1>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Basic DateRangePicker"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <DateRangePicker
            value=dateRange
            onChange={range => setDateRange(_ => range)}
            placeholder="Select date range"
          />
          <div className="text-sm text-gray-600">
            {`Selected range: ${Js.Date.toLocaleDateString(
                dateRange.startDate,
              )} - ${Js.Date.toLocaleDateString(dateRange.endDate)}`->React.string}
          </div>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"DateRangePicker Variants"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <div>
            <div className="mb-2"> {"Primary Variant"->React.string} </div>
            <DateRangePicker variant=#primary placeholder="Primary variant" />
          </div>
          <div>
            <div className="mb-2"> {"Secondary Variant"->React.string} </div>
            <DateRangePicker variant=#secondary placeholder="Secondary variant" />
          </div>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4">
          {"DateRangePicker with Time Picker"->React.string}
        </h2>
        <div className="flex flex-col gap-4">
          <DateRangePicker showTimePicker=true placeholder="Select date and time range" />
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4">
          {"DateRangePicker with Presets"->React.string}
        </h2>
        <div className="flex flex-col gap-4">
          <DateRangePicker showPresets=true placeholder="Select from presets" />
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Disabled DateRangePicker"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <DateRangePicker isDisabled=true placeholder="Disabled picker" />
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4">
          {"DateRangePicker with Custom Icon"->React.string}
        </h2>
        <div className="flex flex-col gap-4">
          <DateRangePicker icon={<Check size=16 />} placeholder="Custom calendar icon" />
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4">
          {"DateRangePicker with Date Constraints"->React.string}
        </h2>
        <div className="flex flex-col gap-4">
          <div>
            <div className="mb-2"> {"Disable Future Dates"->React.string} </div>
            <DateRangePicker disableFutureDates=true placeholder="No future dates" />
          </div>
          <div>
            <div className="mb-2"> {"Disable Past Dates"->React.string} </div>
            <DateRangePicker disablePastDates=true placeholder="No past dates" />
          </div>
          <div>
            <div className="mb-2"> {"Min/Max Date Range"->React.string} </div>
            <DateRangePicker
              minDate={Js.Date.makeWithYMD(~year=2023.0, ~month=0.0, ~date=1.0, ())}
              maxDate={Js.Date.makeWithYMD(~year=2023.0, ~month=11.0, ~date=31.0, ())}
              placeholder="Limited to 2023"
            />
          </div>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Single Date Selection"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <DateRangePicker allowSingleDateSelection=true placeholder="Select one date" />
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Custom Format"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <DateRangePicker dateFormat="MM/dd/yyyy" placeholder="MM/DD/YYYY format" />
        </div>
      </div>
    </div>
  }
}

module Sidebar = {
  type component =
    | Buttons
    | Tags
    | Snackbars
    | TabsComponent
    | Alerts
    | Breadcrumb
    | ButtonGroup
    | Avatar
    | AvatarGroup
    | Radio
    | Switch
    | DateRangePicker
    | TooltipDemo2
  // Add a type for component metadata
  type componentInfo = {
    variant: component,
    label: string,
  }

  // Create a list of all components with their labels
  let components: array<componentInfo> = [
    {variant: Buttons, label: "Buttons"},
    {variant: Tags, label: "Tags"},
    {variant: Snackbars, label: "Snackbars"},
    {variant: TabsComponent, label: "Tabs"},
    {variant: Alerts, label: "Alerts"},
    {variant: Breadcrumb, label: "Breadcrumb"},
    {variant: ButtonGroup, label: "ButtonGroup"},
    {variant: Avatar, label: "Avatar"},
    {variant: AvatarGroup, label: "AvatarGroup"},
    {variant: Radio, label: "Radio"},
    {variant: Switch, label: "Switch"},
    {variant: DateRangePicker, label: "DateRangePicker"},
    {variant: TooltipDemo2, label: "TooltipDemo2"},
  ]

  @react.component
  let make = (~onSelect, ~activeComponent) => {
    let getItemClass = component => {
      let baseClass = "px-4 py-2 w-full text-left transition-colors duration-200"
      let activeClass = baseClass ++ " bg-blue-500 text-white"
      let inactiveClass = baseClass ++ " hover:bg-gray-100"

      activeComponent === component ? activeClass : inactiveClass
    }

    <div
      className="w-64 h-screen bg-white border-r border-gray-200 fixed left-0 top-0 overflow-y-auto">
      <div className="p-4 border-b border-gray-200">
        <h2 className="text-xl font-bold"> {"Components"->React.string} </h2>
      </div>
      <nav className="py-2">
        {components
        ->Belt.Array.map(({variant, label}) =>
          <button key={label} className={getItemClass(variant)} onClick={_ => onSelect(variant)}>
            {label->React.string}
          </button>
        )
        ->React.array}
      </nav>
    </div>
  }
}

@react.component
let make = () => {
  let (activeComponent, setActiveComponent) = React.useState(_ => Sidebar.Buttons)

  <div className="flex">
    <Sidebar activeComponent onSelect={component => setActiveComponent(_ => component)} />
    <div className="ml-64 flex-1 p-6">
      <h1 className="text-3xl font-bold mb-8 text-center">
        {"Design System Components"->React.string}
      </h1>
      {switch activeComponent {
      | Buttons => <ButtonDemo />
      | Tags => <TagDemo />
      | Snackbars => <SnackbarDemo />
      | TabsComponent => <TabsPreviewDemo />
      | Alerts => <AlertDemo />
      | Breadcrumb => <BreadcrumbDemo />
      | ButtonGroup => <ButtonGroupDemo />
      | Avatar => <AvatarDemo />
      | AvatarGroup => <AvatarGroupDemo />
      | Radio => <RadioDemo />
      | Switch => <SwitchDemo />
      | DateRangePicker => <DateRangePickerDemo />
      | TooltipDemo2 => <TooltipDemo2 />
      }}
    </div>
  </div>
}
