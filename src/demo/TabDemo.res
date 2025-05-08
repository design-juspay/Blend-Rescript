open LucideIcons

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