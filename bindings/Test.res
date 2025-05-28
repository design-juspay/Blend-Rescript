open StorybookUtils
// open LucideIcons

module Introduction = {
  @react.component
  let make = () => {
    <div className="w-full pt-10 px-20">
      <div className="flex flex-wrap gap-3">
        <ButtonBinding
          buttonType=#primary text="Primary Button" onClick={_ => Js.log("Primary clicked")}
        />
        <ButtonBinding
          buttonType=#secondary text="Secondary Button" onClick={_ => Js.log("Secondary clicked")}
        />
        <ButtonBinding
          buttonType=#danger text="Danger Button" onClick={_ => Js.log("Danger clicked")}
        />
        <ButtonBinding
          buttonType=#success text="Success Button" onClick={_ => Js.log("Success clicked")}
        />
      </div>
      <div className="flex flex-wrap gap-3">
        <TagBinding variant=#noFill label="No Fill" text="No Fill" />
        <TagBinding variant=#attentive label="Attentive" text="Attentive" />
        <TagBinding variant=#subtle label="Subtle" text="Subtle" />
      </div>
      <div className="flex flex-wrap gap-3">
        <SplitTagBinding
          primaryTag={{
            text: "Split",
            variant: #attentive,
            status: #primary,
          }}
          secondaryTag={{
            text: "Tag",
            variant: #noFill,
            status: #primary,
          }}
        />
      </div>
      <div className="mb-10">
        <h2 className="text-xl font-semibold mb-4"> {"Boxed Variant"->React.string} </h2>
        <TabBinding variant=#boxed>
          <TabBinding.List variant=#boxed>
            <TabBinding.Trigger value="tab1" variant=#boxed>
              {React.string("Home")}
            </TabBinding.Trigger>
            <TabBinding.Trigger value="tab2" variant=#boxed>
              {React.string("Account")}
            </TabBinding.Trigger>
            <TabBinding.Trigger value="tab3" variant=#boxed>
              {React.string("Settings")}
            </TabBinding.Trigger>
          </TabBinding.List>
          <TabBinding.Content value="tab1">
            <div className="p-4 rounded-md border border-gray-200 mt-4">
              <h3 className="text-lg font-semibold"> {React.string("Home Dashboard")} </h3>
              <p className="text-gray-600 mt-2"> {React.string("Welcome to your dashboard.")} </p>
            </div>
          </TabBinding.Content>
          <TabBinding.Content value="tab2">
            <div className="p-4 rounded-md border border-gray-200 mt-4">
              <h3 className="text-lg font-semibold"> {React.string("Account Settings")} </h3>
              <p className="text-gray-600 mt-2">
                {React.string("Manage your account preferences here.")}
              </p>
            </div>
          </TabBinding.Content>
          <TabBinding.Content value="tab3">
            <div className="p-4 rounded-md border border-gray-200 mt-4">
              <h3 className="text-lg font-semibold"> {React.string("General Settings")} </h3>
              <p className="text-gray-600 mt-2">
                {React.string("Configure your application preferences.")}
              </p>
            </div>
          </TabBinding.Content>
        </TabBinding>
      </div>
      //  -----

      <TabBinding defaultValue="tab1" variant=#floating>
        <TabBinding.List variant=#floating>
          <TabBinding.Trigger value="tab1" variant=#floating>
            {React.string("Home")}
          </TabBinding.Trigger>
          <TabBinding.Trigger value="tab2" variant=#floating>
            {React.string("Account")}
          </TabBinding.Trigger>
          <TabBinding.Trigger value="tab3" variant=#floating>
            {React.string("Settings")}
          </TabBinding.Trigger>
        </TabBinding.List>
        <TabBinding.Content value="tab1">
          <div className="p-4 rounded-md border border-gray-200 mt-4">
            <h3 className="text-lg font-semibold"> {React.string("Home Dashboard")} </h3>
            <p className="text-gray-600 mt-2"> {React.string("Welcome to your dashboard.")} </p>
          </div>
        </TabBinding.Content>
        <TabBinding.Content value="tab2">
          <div className="p-4 rounded-md border border-gray-200 mt-4">
            <h3 className="text-lg font-semibold"> {React.string("Account Settings")} </h3>
            <p className="text-gray-600 mt-2">
              {React.string("Manage your account preferences here.")}
            </p>
          </div>
        </TabBinding.Content>
        <TabBinding.Content value="tab3">
          <div className="p-4 rounded-md border border-gray-200 mt-4">
            <h3 className="text-lg font-semibold"> {React.string("General Settings")} </h3>
            <p className="text-gray-600 mt-2">
              {React.string("Configure your application preferences.")}
            </p>
          </div>
        </TabBinding.Content>
      </TabBinding>
      //  ------

      // -----

      <div className="mb-10">
        <h2 className="text-xl font-semibold mb-4"> {"Underline Variant"->React.string} </h2>
        <TabBinding defaultValue="tab1" variant=#underline>
          <TabBinding.List variant=#underline>
            <TabBinding.Trigger value="tab1" variant=#underline>
              {React.string("Home")}
            </TabBinding.Trigger>
            <TabBinding.Trigger value="tab2" variant=#underline>
              {React.string("Account")}
            </TabBinding.Trigger>
            <TabBinding.Trigger value="tab3" variant=#underline>
              {React.string("Settings")}
            </TabBinding.Trigger>
          </TabBinding.List>
          <TabBinding.Content value="tab1">
            <div className="p-4 rounded-md border border-gray-200 mt-4">
              <h3 className="text-lg font-semibold"> {React.string("Home Dashboard")} </h3>
              <p className="text-gray-600 mt-2"> {React.string("Welcome to your dashboard.")} </p>
            </div>
          </TabBinding.Content>
          <TabBinding.Content value="tab2">
            <div className="p-4 rounded-md border border-gray-200 mt-4">
              <h3 className="text-lg font-semibold"> {React.string("Account Settings")} </h3>
              <p className="text-gray-600 mt-2">
                {React.string("Manage your account preferences here.")}
              </p>
            </div>
          </TabBinding.Content>
          <TabBinding.Content value="tab3">
            <div className="p-4 rounded-md border border-gray-200 mt-4">
              <h3 className="text-lg font-semibold"> {React.string("General Settings")} </h3>
              <p className="text-gray-600 mt-2">
                {React.string("Configure your application preferences.")}
              </p>
            </div>
          </TabBinding.Content>
        </TabBinding>
      </div>
      // -----

      // ----------

      // Snackbar

      <div>
        <h1 className="text-2xl font-bold mb-6 mt-12"> {"Snackbar Demo"->React.string} </h1>
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4"> {"Basic Snackbars"->React.string} </h2>
          <div className="flex flex-wrap gap-3">
            <ButtonBinding
              buttonType=#primary
              text="Info Snackbar"
              onClick={_ => {
                let _ = SnackbarBinding.addSnackbar({
                  header: "Info Notification",
                  description: "This is an informational message that provides helpful details.",
                  variant: #info,
                  onClose: () => Js.log("Info snackbar closed"),
                  actionButton: {
                    label: "Action",
                    onClick: () => Js.log("Action clicked"),
                  },
                })
              }}
            />
            <ButtonBinding
              buttonType=#success
              text="Success Snackbar"
              onClick={_ => {
                let _ = SnackbarBinding.addSnackbar({
                  header: "Success!",
                  description: "Your action has been completed successfully.",
                  variant: #success,
                  // onClose: None,
                  // actionButton: None,
                })
              }}
            />
            <ButtonBinding
              buttonType=#danger
              text="Error Snackbar"
              onClick={_ => {
                let _ = SnackbarBinding.addSnackbar({
                  header: "Error Occurred",
                  description: "Something went wrong. Please try again.",
                  variant: #error,
                  // onClose: None,
                  // actionButton: None,
                })
              }}
            />
            <ButtonBinding
              buttonType=#secondary
              text="Warning Snackbar"
              onClick={_ => {
                let _ = SnackbarBinding.addSnackbar({
                  header: "Warning",
                  description: "Please review your input before proceeding.",
                  variant: #warning,
                  // onClose: None,
                  // actionButton: None,
                })
              }}
            />
          </div>
        </div>
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4"> {"Snackbars with Actions"->React.string} </h2>
          <div className="flex flex-wrap gap-3">
            <ButtonBinding
              buttonType=#primary
              text="Snackbar with Action"
              onClick={_ => {
                let _ = SnackbarBinding.addSnackbar({
                  header: "Action Required",
                  description: "Your session will expire soon. Would you like to extend it?",
                  variant: #warning,
                  // onClose: None,
                  // actionButton: Some({
                  //   label: "Extend Session",
                  //   onClick: () => Js.log("Session extended"),
                  // }),
                })
              }}
            />
            <ButtonBinding
              buttonType=#success
              text="Success with Undo"
              onClick={_ => {
                let _ = SnackbarBinding.addSnackbar({
                  header: "Item Deleted",
                  description: "The item has been successfully deleted.",
                  variant: #success,
                  // onClose: None,
                  // actionButton: Some({
                  //   label: "Undo",
                  //   onClick: () => Js.log("Undo action triggered"),
                  // }),
                })
              }}
            />
          </div>
        </div>
      </div>
      // ----------------------

      // Tooltip Demo Section
      <div className="mb-12">
        <h1 className="text-2xl font-bold mb-6"> {"Tooltip Demo"->React.string} </h1>
        // Size Variants
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4"> {"Size Variants"->React.string} </h2>
          <div className="flex flex-wrap gap-6 items-center">
            <ToolTipBinding content={React.string("Small tooltip")} size=#sm side=#top>
              <ButtonBinding buttonType=#primary text="Small Tooltip" />
            </ToolTipBinding>
            <ToolTipBinding
              content={React.string("Large tooltip with more detailed information")}
              size=#lg
              side=#top>
              <ButtonBinding buttonType=#secondary text="Large Tooltip" />
            </ToolTipBinding>
          </div>
        </div>
        // Side Positioning
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4"> {"Side Positioning"->React.string} </h2>
          <div className="flex flex-wrap gap-6 items-center justify-center p-8">
            <ToolTipBinding content={React.string("Tooltip on top")} side=#top showArrow=true>
              <ButtonBinding buttonType=#primary text="Top" />
            </ToolTipBinding>
            <ToolTipBinding content={React.string("Tooltip on right")} side=#right showArrow=true>
              <ButtonBinding buttonType=#secondary text="Right" />
            </ToolTipBinding>
            <ToolTipBinding content={React.string("Tooltip on bottom")} side=#bottom showArrow=true>
              <ButtonBinding buttonType=#success text="Bottom" />
            </ToolTipBinding>
            <ToolTipBinding content={React.string("Tooltip on left")} side=#left showArrow=true>
              <ButtonBinding buttonType=#danger text="Left" />
            </ToolTipBinding>
          </div>
        </div>
        // Alignment Options
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4"> {"Alignment Options"->React.string} </h2>
          <div className="flex flex-wrap gap-6 items-center">
            <ToolTipBinding
              content={React.string("Start aligned tooltip")} side=#top align=#start showArrow=true>
              <ButtonBinding buttonType=#primary text="Start Align" />
            </ToolTipBinding>
            <ToolTipBinding
              content={React.string("Center aligned tooltip")}
              side=#top
              align=#center
              showArrow=true>
              <ButtonBinding buttonType=#secondary text="Center Align" />
            </ToolTipBinding>
            <ToolTipBinding
              content={React.string("End aligned tooltip")}
              side=#top
              align=#end
              showArrow=true
              slot={<div className="w-10 h-10 bg-red-500" />}
              slotDirection=#right>
              <ButtonBinding buttonType=#success text="slot tooltip" />
            </ToolTipBinding>
          </div>
        </div>
        // Arrow Options
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4"> {"Arrow Options"->React.string} </h2>
          <div className="flex flex-wrap gap-6 items-center">
            <ToolTipBinding content={React.string("Tooltip with arrow")} side=#top showArrow=true>
              <ButtonBinding buttonType=#primary text="With Arrow" />
            </ToolTipBinding>
            <ToolTipBinding
              content={React.string("Tooltip without arrow")} side=#top showArrow=false>
              <ButtonBinding buttonType=#secondary text="No Arrow" />
            </ToolTipBinding>
          </div>
        </div>
        // Delay and Offset
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4"> {"Timing & Spacing"->React.string} </h2>
          <div className="flex flex-wrap gap-6 items-center">
            <ToolTipBinding
              content={React.string("Quick tooltip (100ms delay)")}
              side=#top
              delayDuration=100
              showArrow=true>
              <ButtonBinding buttonType=#primary text="Quick Delay" />
            </ToolTipBinding>
            <ToolTipBinding
              content={React.string("Slow tooltip (1000ms delay)")}
              side=#top
              delayDuration=1000
              showArrow=true>
              <ButtonBinding buttonType=#secondary text="Slow Delay" />
            </ToolTipBinding>
            <ToolTipBinding
              content={React.string("Offset tooltip")} side=#top offset=20 showArrow=true>
              <ButtonBinding buttonType=#success text="Custom Offset" />
            </ToolTipBinding>
          </div>
        </div>
      </div>
      // Popover Demo Section
      <div className="mb-12">
        <h1 className="text-2xl font-bold mb-6"> {"Popover Demo"->React.string} </h1>
        // Basic Popover
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4"> {"Basic Popover"->React.string} </h2>
          <div className="flex flex-wrap gap-6 items-center">
            <PopOverBinding
              heading="Basic Popover"
              description="This is a simple popover with just text content."
              trigger={<ButtonBinding buttonType=#primary text="Open Basic Popover" />}
              showCloseButton=true>
              <div className="p-4 text-gray-600 text-sm">
                {"This is the content inside the popover. You can put any React elements here."->React.string}
              </div>
            </PopOverBinding>
          </div>
        </div>
        // Size Variants
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4"> {"Size Variants"->React.string} </h2>
          <div className="flex flex-wrap gap-6 items-center">
            <PopOverBinding
              heading="Small Popover"
              description="Compact size for limited content."
              trigger={<ButtonBinding buttonType=#secondary text="Small Popover" />}
              size=#sm
              showCloseButton=true>
              <div className="p-2 text-gray-600 text-xs">
                {"Small popover content with compact spacing."->React.string}
              </div>
            </PopOverBinding>
            <PopOverBinding
              heading="Medium Popover"
              description="Standard size for regular content."
              trigger={<ButtonBinding buttonType=#primary text="Medium Popover" />}
              size=#md
              showCloseButton=true>
              <div className="p-4 text-gray-600 text-sm">
                {"Medium popover content with standard spacing and more room for information."->React.string}
              </div>
            </PopOverBinding>
          </div>
        </div>
        // With Actions
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4"> {"Popover with Actions"->React.string} </h2>
          <div className="flex flex-wrap gap-6 items-center">
            <PopOverBinding
              heading="Confirm Action"
              description="Are you sure you want to proceed with this action?"
              trigger={<ButtonBinding buttonType=#danger text="Delete Item" />}
              showCloseButton=true
              primaryAction={
                label: "Confirm",
                onClick: _ => Js.log("Primary action clicked"),
                buttonType: #danger,
              }
              secondaryAction={
                label: "Cancel",
                onClick: _ => Js.log("Secondary action clicked"),
                buttonType: #secondary,
                buttonSubType: #outlined,
              }>
              <div className="p-4 text-gray-600 text-sm">
                {"This action cannot be undone. Please confirm if you want to continue."->React.string}
              </div>
            </PopOverBinding>
            <PopOverBinding
              heading="Save Changes"
              description="You have unsaved changes."
              trigger={<ButtonBinding buttonType=#success text="Save Document" />}
              showCloseButton=true
              primaryAction={
                label: "Save",
                onClick: _ => Js.log("Save clicked"),
                buttonType: #success,
              }
              secondaryAction={
                label: "Discard",
                onClick: _ => Js.log("Discard clicked"),
                buttonType: #secondary,
                buttonSubType: #outlined,
              }>
              <div className="p-4 text-gray-600 text-sm">
                {"Would you like to save your changes before leaving?"->React.string}
              </div>
            </PopOverBinding>
          </div>
        </div>
        // Rich Content
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4"> {"Rich Content Popover"->React.string} </h2>
          <div className="flex flex-wrap gap-6 items-center">
            <PopOverBinding
              heading="User Profile"
              trigger={<div className="p-2 border rounded-md cursor-pointer hover:bg-gray-50">
                <div
                  className="w-10 h-10 bg-blue-500 rounded-full flex items-center justify-center text-white font-semibold">
                  {"JD"->React.string}
                </div>
              </div>}
              showCloseButton=true
              size=#md>
              <div className="p-4">
                <div className="flex items-center gap-3 mb-3">
                  <div
                    className="w-12 h-12 bg-blue-500 rounded-full flex items-center justify-center text-white font-semibold">
                    {"JD"->React.string}
                  </div>
                  <div>
                    <div className="font-semibold text-gray-900"> {"John Doe"->React.string} </div>
                    <div className="text-sm text-gray-600">
                      {"Software Engineer"->React.string}
                    </div>
                  </div>
                </div>
                <div className="text-sm text-gray-600 mb-3">
                  {"Passionate developer with 5+ years of experience in React and TypeScript."->React.string}
                </div>
                <div className="flex gap-2">
                  <span className="px-2 py-1 bg-blue-100 text-blue-800 text-xs rounded">
                    {"React"->React.string}
                  </span>
                  <span className="px-2 py-1 bg-green-100 text-green-800 text-xs rounded">
                    {"TypeScript"->React.string}
                  </span>
                  <span className="px-2 py-1 bg-purple-100 text-purple-800 text-xs rounded">
                    {"Node.js"->React.string}
                  </span>
                </div>
              </div>
            </PopOverBinding>
            <PopOverBinding
              heading="Feature Information"
              description="Learn more about this feature"
              trigger={<span
                className="inline-flex items-center justify-center w-6 h-6 text-xs font-bold text-blue-600 bg-blue-100 rounded-full cursor-help">
                {"i"->React.string}
              </span>}
              showCloseButton=true
              size=#md>
              <div className="p-4">
                <div className="space-y-3">
                  <div>
                    <h4 className="font-semibold text-sm text-gray-900 mb-1">
                      {"Key Benefits"->React.string}
                    </h4>
                    <ul className="text-sm text-gray-600 space-y-1">
                      <li> {"• Improved user experience"->React.string} </li>
                      <li> {"• Enhanced performance"->React.string} </li>
                      <li> {"• Better accessibility"->React.string} </li>
                    </ul>
                  </div>
                  <div>
                    <h4 className="font-semibold text-sm text-gray-900 mb-1">
                      {"Usage"->React.string}
                    </h4>
                    <p className="text-sm text-gray-600">
                      {"This feature can be enabled in your settings panel under Advanced Options."->React.string}
                    </p>
                  </div>
                </div>
              </div>
            </PopOverBinding>
          </div>
        </div>
      </div>
      // Checkbox Demo Section
      <div className="mb-12">
        <h1 className="text-2xl font-bold mb-6"> {"Checkbox Demo"->React.string} </h1>
        // Basic Checkboxes
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4"> {"Basic Checkboxes"->React.string} </h2>
          <div className="space-y-4">
            <CheckBoxBinding
              checked=#falsee onCheckedChange={state => Js.log2("Checkbox changed:", state)}>
              {"Unchecked checkbox"->React.string}
            </CheckBoxBinding>
            <CheckBoxBinding
              checked=#truee onCheckedChange={state => Js.log2("Checkbox changed:", state)}>
              {"Checked checkbox"->React.string}
            </CheckBoxBinding>
            <CheckBoxBinding
              checked=#indeterminate onCheckedChange={state => Js.log2("Checkbox changed:", state)}>
              {"Indeterminate checkbox"->React.string}
            </CheckBoxBinding>
          </div>
        </div>
        // Size Variants
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4"> {"Size Variants"->React.string} </h2>
          <div className="space-y-4">
            <CheckBoxBinding
              size=#sm checked=#truee onCheckedChange={state => Js.log2("Small checkbox:", state)}>
              {"Small checkbox"->React.string}
            </CheckBoxBinding>
            <CheckBoxBinding
              size=#md checked=#truee onCheckedChange={state => Js.log2("Medium checkbox:", state)}>
              {"Medium checkbox"->React.string}
            </CheckBoxBinding>
          </div>
        </div>
        // States
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4"> {"Checkbox States"->React.string} </h2>
          <div className="space-y-4">
            <CheckBoxBinding checked=#truee disabled=true>
              {"Disabled checked"->React.string}
            </CheckBoxBinding>
            <CheckBoxBinding checked=#falsee disabled=true>
              {"Disabled unchecked"->React.string}
            </CheckBoxBinding>
            <CheckBoxBinding
              checked=#truee
              error=true
              onCheckedChange={state => Js.log2("Error checkbox:", state)}>
              {"Error state"->React.string}
            </CheckBoxBinding>
            <CheckBoxBinding
              checked=#truee
              required=true
              onCheckedChange={state => Js.log2("Required checkbox:", state)}>
              {"Required checkbox"->React.string}
            </CheckBoxBinding>
          </div>
        </div>
        // With Subtext
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4"> {"Checkbox with Subtext"->React.string} </h2>
          <div className="space-y-4">
            <CheckBoxBinding
              checked=#falsee
              subtext="This is additional information about the checkbox option"
              onCheckedChange={state => Js.log2("Subtext checkbox:", state)}>
              {"Accept terms and conditions"->React.string}
            </CheckBoxBinding>
            <CheckBoxBinding
              checked=#truee
              subtext="Get notified about important updates and announcements"
              onCheckedChange={state => Js.log2("Notification checkbox:", state)}>
              {"Email notifications"->React.string}
            </CheckBoxBinding>
          </div>
        </div>
        // Checkbox Groups
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4"> {"Checkbox Groups"->React.string} </h2>
          // Preferences Group
          <div className="mb-6">
            <h3 className="text-lg font-medium mb-3">
              {"Notification Preferences"->React.string}
            </h3>
            <div className="space-y-3 ml-4">
              <CheckBoxBinding
                id="email-notifications"
                checked=#truee
                onCheckedChange={state => Js.log2("Email notifications:", state)}>
                {"Email notifications"->React.string}
              </CheckBoxBinding>
              <CheckBoxBinding
                id="sms-notifications"
                checked=#falsee
                onCheckedChange={state => Js.log2("SMS notifications:", state)}>
                {"SMS notifications"->React.string}
              </CheckBoxBinding>
              <CheckBoxBinding
                id="push-notifications"
                checked=#truee
                onCheckedChange={state => Js.log2("Push notifications:", state)}>
                {"Push notifications"->React.string}
              </CheckBoxBinding>
            </div>
          </div>
          // Features Group with Select All
          <div className="mb-6">
            <h3 className="text-lg font-medium mb-3"> {"Feature Permissions"->React.string} </h3>
            <div className="space-y-3">
              <CheckBoxBinding
                id="select-all"
                checked=#indeterminate
                onCheckedChange={state => Js.log2("Select all:", state)}
                className="font-medium">
                {"Select All Features"->React.string}
              </CheckBoxBinding>
              <div className="ml-6 space-y-3">
                <CheckBoxBinding
                  id="camera-access"
                  checked=#truee
                  onCheckedChange={state => Js.log2("Camera access:", state)}>
                  {"Camera access"->React.string}
                </CheckBoxBinding>
                <CheckBoxBinding
                  id="location-access"
                  checked=#falsee
                  onCheckedChange={state => Js.log2("Location access:", state)}>
                  {"Location access"->React.string}
                </CheckBoxBinding>
                <CheckBoxBinding
                  id="microphone-access"
                  onCheckedChange={state => Js.log2("Microphone access:", state)}>
                  {"Microphone access"->React.string}
                </CheckBoxBinding>
                <CheckBoxBinding
                  id="storage-access" onCheckedChange={state => Js.log2("Storage access:", state)}>
                  {"Storage access"->React.string}
                </CheckBoxBinding>
              </div>
            </div>
          </div>
          // Skills Group (Small Size)
          <div className="mb-6">
            <h3 className="text-lg font-medium mb-3"> {"Skills (Compact)"->React.string} </h3>
            <div className="grid grid-cols-2 gap-3">
              <CheckBoxBinding size=#sm onCheckedChange={state => Js.log2("React:", state)}>
                {"React"->React.string}
              </CheckBoxBinding>
              <CheckBoxBinding size=#sm onCheckedChange={state => Js.log2("TypeScript:", state)}>
                {"TypeScript"->React.string}
              </CheckBoxBinding>
              <CheckBoxBinding size=#sm onCheckedChange={state => Js.log2("Vue.js:", state)}>
                {"Vue.js"->React.string}
              </CheckBoxBinding>
              <CheckBoxBinding size=#sm onCheckedChange={state => Js.log2("Node.js:", state)}>
                {"Node.js"->React.string}
              </CheckBoxBinding>
              <CheckBoxBinding size=#sm onCheckedChange={state => Js.log2("Python:", state)}>
                {"Python"->React.string}
              </CheckBoxBinding>
              <CheckBoxBinding size=#sm onCheckedChange={state => Js.log2("ReScript:", state)}>
                {"ReScript"->React.string}
              </CheckBoxBinding>
            </div>
          </div>
        </div>
        // With Custom Slots
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4"> {"Checkbox with Slots"->React.string} </h2>
          <div className="space-y-4">
            <CheckBoxBinding
              onCheckedChange={state => Js.log2("Premium checkbox:", state)}
              slot={<span
                className="ml-2 px-2 py-1 bg-yellow-100 text-yellow-800 text-xs rounded font-semibold">
                {"PREMIUM"->React.string}
              </span>}>
              {"Premium features"->React.string}
            </CheckBoxBinding>
            <CheckBoxBinding
              onCheckedChange={state => Js.log2("Beta checkbox:", state)}
              slot={<span
                className="ml-2 px-2 py-1 bg-blue-100 text-blue-800 text-xs rounded font-semibold">
                {"BETA"->React.string}
              </span>}>
              {"Beta testing program"->React.string}
            </CheckBoxBinding>
          </div>
        </div>
      </div>
      // Radio Demo Section
      <div className="mb-12">
        <h1 className="text-2xl font-bold mb-6"> {"Radio Demo"->React.string} </h1>
        // Basic Radio Buttons (Individual - Uncontrolled)
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4">
            {"Basic Radio Buttons (Individual)"->React.string}
          </h2>
          <div className="space-y-4">
            <RadioBinding
              name="basic-radio-individual"
              value="option1"
              defaultChecked=true
              onChange={checked => Js.log2("Option 1 changed:", checked)}>
              {"Selected option"->React.string}
            </RadioBinding>
            <RadioBinding
              name="basic-radio-individual-2"
              value="option2"
              defaultChecked=false
              onChange={checked => Js.log2("Option 2 changed:", checked)}>
              {"Unselected option"->React.string}
            </RadioBinding>
          </div>
        </div>
        // Size Variants
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4"> {"Size Variants"->React.string} </h2>
          <div className="space-y-4">
            <RadioBinding
              name="size-radio-sm"
              value="small"
              size=#sm
              defaultChecked=true
              onChange={checked => Js.log2("Small radio:", checked)}>
              {"Small radio button"->React.string}
            </RadioBinding>
            <RadioBinding
              name="size-radio-md"
              value="medium"
              size=#md
              defaultChecked=true
              onChange={checked => Js.log2("Medium radio:", checked)}>
              {"Medium radio button"->React.string}
            </RadioBinding>
          </div>
        </div>
        // Radio States
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4"> {"Radio States"->React.string} </h2>
          <div className="space-y-4">
            <RadioBinding
              name="state-radio-disabled-checked"
              value="disabled-checked"
              defaultChecked=true
              disabled=true>
              {"Disabled checked"->React.string}
            </RadioBinding>
            <RadioBinding
              name="state-radio-disabled-unchecked"
              value="disabled-unchecked"
              defaultChecked=false
              disabled=true>
              {"Disabled unchecked"->React.string}
            </RadioBinding>
            <RadioBinding
              name="state-radio-error"
              value="error"
              defaultChecked=true
              error=true
              onChange={checked => Js.log2("Error radio:", checked)}>
              {"Error state"->React.string}
            </RadioBinding>
            <RadioBinding
              name="state-radio-required"
              value="required"
              defaultChecked=false
              required=true
              onChange={checked => Js.log2("Required radio:", checked)}>
              {"Required option"->React.string}
            </RadioBinding>
          </div>
        </div>
        // Radio Groups
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4"> {"Radio Groups"->React.string} </h2>
          // Basic Radio Group
          <div className="mb-6">
            <RadioBinding.Group
              name="size-selection"
              label="Select size"
              defaultValue="medium"
              onChange={value => Js.log2("Size selected:", value)}>
              <div className="space-y-3">
                <RadioBinding value="small" name="size-selection">
                  {"Small"->React.string}
                </RadioBinding>
                <RadioBinding value="medium" name="size-selection">
                  {"Medium"->React.string}
                </RadioBinding>
                <RadioBinding value="large" name="size-selection">
                  {"Large"->React.string}
                </RadioBinding>
              </div>
            </RadioBinding.Group>
          </div>
          // Radio Group with Disabled Options
          <div className="mb-6">
            <RadioBinding.Group
              name="disabled-options"
              label="Options with disabled items"
              defaultValue="enabled"
              onChange={value => Js.log2("Option selected:", value)}>
              <div className="space-y-3">
                <RadioBinding value="enabled" name="disabled-options">
                  {"Enabled Option"->React.string}
                </RadioBinding>
                <RadioBinding value="disabled1" name="disabled-options" disabled=true>
                  {"Disabled Option 1"->React.string}
                </RadioBinding>
                <RadioBinding value="disabled2" name="disabled-options" disabled=true>
                  {"Disabled Option 2"->React.string}
                </RadioBinding>
                <RadioBinding value="another-enabled" name="disabled-options">
                  {"Another Enabled Option"->React.string}
                </RadioBinding>
              </div>
            </RadioBinding.Group>
          </div>
          // Payment Methods (Realistic Example)
          <div className="mb-6">
            <RadioBinding.Group
              name="payment-method"
              label="Select payment method"
              defaultValue="credit-card"
              onChange={value => Js.log2("Payment method:", value)}>
              <div className="space-y-3">
                <RadioBinding
                  value="credit-card"
                  name="payment-method"
                  subtext="Visa, Mastercard, American Express">
                  {"Credit Card"->React.string}
                </RadioBinding>
                <RadioBinding
                  value="paypal" name="payment-method" subtext="Pay with your PayPal account">
                  {"PayPal"->React.string}
                </RadioBinding>
                <RadioBinding
                  value="bank-transfer"
                  name="payment-method"
                  subtext="Direct bank transfer (2-3 business days)">
                  {"Bank Transfer"->React.string}
                </RadioBinding>
                <RadioBinding
                  value="crypto"
                  name="payment-method"
                  subtext="Bitcoin, Ethereum, and other cryptocurrencies"
                  disabled=true>
                  {"Cryptocurrency (Coming Soon)"->React.string}
                </RadioBinding>
              </div>
            </RadioBinding.Group>
          </div>
          // Shipping Options (Small Size)
          <div className="mb-6">
            <RadioBinding.Group
              name="shipping-options"
              label="Shipping options"
              defaultValue="standard"
              onChange={value => Js.log2("Shipping option:", value)}>
              <div className="space-y-2">
                <RadioBinding
                  value="standard"
                  name="shipping-options"
                  size=#sm
                  subtext="5-7 business days - Free">
                  {"Standard Shipping"->React.string}
                </RadioBinding>
                <RadioBinding
                  value="express"
                  name="shipping-options"
                  size=#sm
                  subtext="2-3 business days - $9.99">
                  {"Express Shipping"->React.string}
                </RadioBinding>
                <RadioBinding
                  value="overnight"
                  name="shipping-options"
                  size=#sm
                  subtext="Next business day - $24.99">
                  {"Overnight Shipping"->React.string}
                </RadioBinding>
              </div>
            </RadioBinding.Group>
          </div>
          // Subscription Plans (With Slots)
          <div className="mb-6">
            <RadioBinding.Group
              name="subscription-plan"
              label="Choose your plan"
              defaultValue="pro"
              onChange={value => Js.log2("Plan selected:", value)}>
              <div className="space-y-4">
                <RadioBinding
                  value="basic"
                  name="subscription-plan"
                  subtext="Essential features for individuals"
                  slot={<span
                    className="ml-auto px-2 py-1 bg-gray-100 text-gray-800 text-xs rounded font-semibold">
                    {"$9/month"->React.string}
                  </span>}>
                  {"Basic Plan"->React.string}
                </RadioBinding>
                <RadioBinding
                  value="pro"
                  name="subscription-plan"
                  subtext="Advanced features for professionals"
                  slot={<span
                    className="ml-auto px-2 py-1 bg-blue-100 text-blue-800 text-xs rounded font-semibold">
                    {"$19/month"->React.string}
                  </span>}>
                  {"Pro Plan"->React.string}
                </RadioBinding>
                <RadioBinding
                  value="enterprise"
                  name="subscription-plan"
                  subtext="Full feature set for teams and organizations"
                  slot={<span
                    className="ml-auto px-2 py-1 bg-purple-100 text-purple-800 text-xs rounded font-semibold">
                    {"$49/month"->React.string}
                  </span>}>
                  {"Enterprise Plan"->React.string}
                </RadioBinding>
              </div>
            </RadioBinding.Group>
          </div>
          // Theme Selection (Horizontal Layout)
          <div className="mb-6">
            <RadioBinding.Group
              name="theme-selection"
              label="Select theme"
              defaultValue="light"
              onChange={value => Js.log2("Theme selected:", value)}>
              <div className="flex gap-6">
                <RadioBinding value="light" name="theme-selection" size=#sm>
                  {"Light"->React.string}
                </RadioBinding>
                <RadioBinding value="dark" name="theme-selection" size=#sm>
                  {"Dark"->React.string}
                </RadioBinding>
                <RadioBinding value="auto" name="theme-selection" size=#sm>
                  {"Auto"->React.string}
                </RadioBinding>
              </div>
            </RadioBinding.Group>
          </div>
        </div>
      </div>
      // Switch Demo Section
      <div className="mb-12">
        <h1 className="text-2xl font-bold mb-6"> {"Switch Demo"->React.string} </h1>
        // Basic Switches (Uncontrolled)
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4">
            {"Basic Switches (Uncontrolled)"->React.string}
          </h2>
          <div className="space-y-4">
            <SwitchBinding
              defaultChecked=true onChange={checked => Js.log2("Switch 1 changed:", checked)}>
              "Enabled by default"
            </SwitchBinding>
            <SwitchBinding
              defaultChecked=false onChange={checked => Js.log2("Switch 2 changed:", checked)}>
              "Disabled by default"
            </SwitchBinding>
          </div>
        </div>
        // Size Variants
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4"> {"Size Variants"->React.string} </h2>
          <div className="space-y-4">
            <SwitchBinding
              size=#sm defaultChecked=true onChange={checked => Js.log2("Small switch:", checked)}>
              "Small switch"
            </SwitchBinding>
            <SwitchBinding
              size=#md defaultChecked=true onChange={checked => Js.log2("Medium switch:", checked)}>
              "Medium switch"
            </SwitchBinding>
          </div>
        </div>
        // Switch States
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4"> {"Switch States"->React.string} </h2>
          <div className="space-y-4">
            <SwitchBinding defaultChecked=true disabled=true> "Disabled (On)" </SwitchBinding>
            <SwitchBinding defaultChecked=false disabled=true> "Disabled (Off)" </SwitchBinding>
            <SwitchBinding
              defaultChecked=true
              error=true
              onChange={checked => Js.log2("Error switch:", checked)}>
              "Error state"
            </SwitchBinding>
            <SwitchBinding
              defaultChecked=false
              required=true
              onChange={checked => Js.log2("Required switch:", checked)}>
              "Required switch"
            </SwitchBinding>
          </div>
        </div>
        // With Subtext
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4"> {"Switch with Subtext"->React.string} </h2>
          <div className="space-y-4">
            <SwitchBinding
              defaultChecked=true
              subtext="Receive email notifications for important updates"
              onChange={checked => Js.log2("Email notifications:", checked)}>
              "Email notifications"
            </SwitchBinding>
            <SwitchBinding
              defaultChecked=false
              subtext="Allow the app to send push notifications to your device"
              onChange={checked => Js.log2("Push notifications:", checked)}>
              "Push notifications"
            </SwitchBinding>
            <SwitchBinding
              defaultChecked=true
              subtext="Automatically save your work every few minutes"
              size=#sm
              onChange={checked => Js.log2("Auto-save:", checked)}>
              "Auto-save"
            </SwitchBinding>
          </div>
        </div>
        // Switch Groups
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4"> {"Switch Groups"->React.string} </h2>
          // Privacy Settings Group
          <div className="mb-6">
            <SwitchBinding.Group
              label="Privacy Settings"
              name="privacy-settings"
              defaultValue=["analytics", "cookies"]
              onChange={values => Js.log2("Privacy settings changed:", values)}>
              <div className="space-y-4">
                <SwitchBinding
                  value="analytics"
                  name="privacy-settings"
                  subtext="Help improve our service by sharing anonymous usage data">
                  "Analytics tracking"
                </SwitchBinding>
                <SwitchBinding
                  value="cookies"
                  name="privacy-settings"
                  subtext="Allow cookies for better user experience">
                  "Accept cookies"
                </SwitchBinding>
                <SwitchBinding
                  value="marketing"
                  name="privacy-settings"
                  subtext="Receive personalized marketing content">
                  "Marketing emails"
                </SwitchBinding>
                <SwitchBinding
                  value="third-party"
                  name="privacy-settings"
                  subtext="Allow third-party integrations and services">
                  "Third-party services"
                </SwitchBinding>
              </div>
            </SwitchBinding.Group>
          </div>
          // App Features Group
          <div className="mb-6">
            <SwitchBinding.Group
              label="App Features"
              name="app-features"
              defaultValue=["dark-mode", "auto-save"]
              onChange={values => Js.log2("App features changed:", values)}>
              <div className="space-y-3">
                <SwitchBinding
                  value="dark-mode" name="app-features" size=#sm subtext="Switch to dark theme">
                  "Dark mode"
                </SwitchBinding>
                <SwitchBinding
                  value="auto-save"
                  name="app-features"
                  size=#sm
                  subtext="Automatically save changes">
                  "Auto-save"
                </SwitchBinding>
                <SwitchBinding
                  value="offline-mode"
                  name="app-features"
                  size=#sm
                  subtext="Enable offline functionality">
                  "Offline mode"
                </SwitchBinding>
                <SwitchBinding
                  value="beta-features"
                  name="app-features"
                  size=#sm
                  subtext="Access experimental features">
                  "Beta features"
                </SwitchBinding>
              </div>
            </SwitchBinding.Group>
          </div>
          // Notification Preferences (With Slots)
          <div className="mb-6">
            <SwitchBinding.Group
              label="Notification Preferences"
              name="notifications"
              defaultValue=["email", "browser"]
              onChange={values => Js.log2("Notifications changed:", values)}>
              <div className="space-y-4">
                <SwitchBinding
                  value="email"
                  name="notifications"
                  subtext="Get notified via email"
                  slot={<span
                    className="ml-2 px-2 py-1 bg-blue-100 text-blue-800 text-xs rounded font-semibold">
                    {"INSTANT"->React.string}
                  </span>}>
                  "Email notifications"
                </SwitchBinding>
                <SwitchBinding
                  value="browser"
                  name="notifications"
                  subtext="Show browser notifications"
                  slot={<span
                    className="ml-2 px-2 py-1 bg-green-100 text-green-800 text-xs rounded font-semibold">
                    {"REAL-TIME"->React.string}
                  </span>}>
                  "Browser notifications"
                </SwitchBinding>
                <SwitchBinding
                  value="mobile"
                  name="notifications"
                  subtext="Send notifications to mobile app"
                  slot={<span
                    className="ml-2 px-2 py-1 bg-purple-100 text-purple-800 text-xs rounded font-semibold">
                    {"PUSH"->React.string}
                  </span>}>
                  "Mobile notifications"
                </SwitchBinding>
                <SwitchBinding
                  value="slack"
                  name="notifications"
                  subtext="Post notifications to Slack"
                  disabled=true
                  slot={<span
                    className="ml-2 px-2 py-1 bg-gray-100 text-gray-800 text-xs rounded font-semibold">
                    {"PRO"->React.string}
                  </span>}>
                  "Slack integration"
                </SwitchBinding>
              </div>
            </SwitchBinding.Group>
          </div>
        </div>
        // Real-world Examples
        <div className="mb-8">
          <h2 className="text-xl font-semibold mb-4"> {"Real-world Examples"->React.string} </h2>
          <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
            // Security Settings Card
            <div className="p-6 border rounded-lg bg-white">
              <h3 className="text-lg font-semibold mb-4"> {"Security Settings"->React.string} </h3>
              <div className="space-y-4">
                <SwitchBinding
                  defaultChecked=true
                  subtext="Require authentication for sensitive actions"
                  size=#sm>
                  "Two-factor authentication"
                </SwitchBinding>
                <SwitchBinding
                  defaultChecked=false
                  subtext="Log out automatically after period of inactivity"
                  size=#sm>
                  "Auto logout"
                </SwitchBinding>
                <SwitchBinding
                  defaultChecked=true
                  subtext="Get alerts when someone logs into your account"
                  size=#sm>
                  "Login notifications"
                </SwitchBinding>
              </div>
            </div>
            // Accessibility Card
            <div className="p-6 border rounded-lg bg-white">
              <h3 className="text-lg font-semibold mb-4"> {"Accessibility"->React.string} </h3>
              <div className="space-y-4">
                <SwitchBinding
                  defaultChecked=false subtext="Increase text size for better readability" size=#sm>
                  "Large text"
                </SwitchBinding>
                <SwitchBinding defaultChecked=false subtext="Reduce motion and animations" size=#sm>
                  "Reduce motion"
                </SwitchBinding>
                <SwitchBinding defaultChecked=true subtext="Use high contrast colors" size=#sm>
                  "High contrast"
                </SwitchBinding>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  }
}
