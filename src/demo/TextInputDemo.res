open LucideIcons

module TextInputDemo = {
  @react.component
  let make = () => {
    let (inputValue, setInputValue) = React.useState(_ => "")
    let (passwordValue, setPasswordValue) = React.useState(_ => "")
    let (numberValue, setNumberValue) = React.useState(_ => "")
    let (emailValue, setEmailValue) = React.useState(_ => "")

    <div className="p-4 space-y-8">
      <h1 className="text-2xl font-bold"> {"TextInput Components"->React.string} </h1>
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Basic TextInput"->React.string} </h2>
        <div className="space-y-4 max-w-md">
          <TextInput
            label="Basic Input"
            placeholder="Enter some text"
            value={inputValue}
            onChange={e => setInputValue(_ => ReactEvent.Form.target(e)["value"])}
            className="w-full"
          />
        </div>
      </div>
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"TextInput Sizes"->React.string} </h2>
        <div className="space-y-4 max-w-md">
          <TextInput
            label="Medium Size (Default)" placeholder="Medium input" size=#md className="w-full"
          />
          <TextInput label="Large Size" placeholder="Large input" size=#lg className="w-full" />
        </div>
      </div>
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"TextInput States"->React.string} </h2>
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          <TextInput label="Default State" placeholder="Default state" state=#default />
          <TextInput label="Hover State" placeholder="Hover state" state=#hover />
          <TextInput label="Focused State" placeholder="Focused state" state=#focused />
          <TextInput
            label="Filled State"
            placeholder="Filled state"
            state=#filled
            value="This input is filled"
          />
          <TextInput
            label="Error State"
            placeholder="Error state"
            state=#error
            errorMessage="This field has an error"
          />
          <TextInput
            label="Success State"
            placeholder="Success state"
            state=#success
            successMessage="This field is valid"
          />
          <TextInput label="Disabled State" placeholder="Disabled state" state=#disabled />
        </div>
      </div>
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"TextInput with Icons"->React.string} </h2>
        <div className="space-y-4 max-w-md">
          <TextInput
            label="With Left Icon"
            placeholder="Search..."
            leftSlot={<Search className="text-gray-400" size=18 />}
            className="w-full"
          />
          <TextInput
            label="With Right Icon"
            placeholder="Enter email"
            rightSlot={<Mail className="text-gray-400" size=18 />}
            className="w-full"
          />
          <TextInput
            label="With Both Icons"
            placeholder="Search location"
            leftSlot={<Search className="text-gray-400" size=18 />}
            rightSlot={<MapPin className="text-gray-400" size=18 />}
            className="w-full"
          />
        </div>
      </div>
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"TextInput Types"->React.string} </h2>
        <div className="space-y-4 max-w-md">
          <TextInput label="Text Input" placeholder="Enter text" type_="text" className="w-full" />
          <TextInput
            label="Password Input"
            placeholder="Enter password"
            type_="password"
            value={passwordValue}
            onChange={e => setPasswordValue(_ => ReactEvent.Form.target(e)["value"])}
            rightSlot={<Lock className="text-gray-400" size=18 />}
            className="w-full"
          />
          <TextInput
            label="Number Input"
            placeholder="Enter number"
            type_="number"
            value={numberValue}
            onChange={e => setNumberValue(_ => ReactEvent.Form.target(e)["value"])}
            className="w-full"
          />
          <TextInput
            label="Email Input"
            placeholder="Enter email"
            type_="email"
            value={emailValue}
            onChange={e => setEmailValue(_ => ReactEvent.Form.target(e)["value"])}
            className="w-full"
          />
        </div>
      </div>
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"TextInput with Labels"->React.string} </h2>
        <div className="space-y-4 max-w-md">
          <TextInput label="Main Label" placeholder="With main label" className="w-full" />
          <TextInput
            label="With Sublabel"
            sublabel="Additional information about this field"
            placeholder="With sublabel"
            className="w-full"
          />
          <TextInput
            label="With Hint"
            hintText="This is a hint to help you fill this field"
            placeholder="With hint text"
            className="w-full"
          />
          <TextInput
            label="Mandatory Field"
            mandatory={true}
            placeholder="This field is required"
            className="w-full"
          />
          <TextInput
            label="With Info Tooltip"
            infoTooltip="This tooltip provides additional information about the field"
            placeholder="Hover over the info icon"
            className="w-full"
          />
        </div>
      </div>
    </div>
  }
}
