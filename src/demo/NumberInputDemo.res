open LucideIcons

module NumberInputDemo = {
  @react.component
  let make = () => {
    let (basicValue, setBasicValue) = React.useState(_ => 0.0)
    let (currencyValue, setCurrencyValue) = React.useState(_ => 100.0)
    let (percentValue, setPercentValue) = React.useState(_ => 50.0)

    let handleBasicChange = value => {
      setBasicValue(_ => value)
      Js.log(`Basic value changed: ${Belt.Float.toString(value)}`)
    }

    let handleCurrencyChange = value => {
      setCurrencyValue(_ => value)
      Js.log(`Currency value changed: ${Belt.Float.toString(value)}`)
    }

    let handlePercentChange = value => {
      setPercentValue(_ => value)
      Js.log(`Percent value changed: ${Belt.Float.toString(value)}`)
    }

    <div className="p-4 space-y-8">
      <h1 className="text-2xl font-bold"> {"NumberInput Components"->React.string} </h1>
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Basic NumberInput"->React.string} </h2>
        <div className="space-y-4 max-w-md">
          <NumberInput
            label="Basic Number Input"
            placeholder="Enter a number"
            value={basicValue}
            onChange={handleBasicChange}
            className="w-full"
          />
          <div className="text-sm text-gray-600">
            {`Current value: ${Belt.Float.toString(basicValue)}`->React.string}
          </div>
        </div>
      </div>
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"NumberInput Sizes"->React.string} </h2>
        <div className="space-y-4 max-w-md">
          <NumberInput label="Small Size" placeholder="Small input" size=#sm className="w-full" />
          <NumberInput
            label="Medium Size (Default)" placeholder="Medium input" size=#md className="w-full"
          />
          <NumberInput label="Large Size" placeholder="Large input" size=#lg className="w-full" />
        </div>
      </div>
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"NumberInput States"->React.string} </h2>
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          <NumberInput label="Default State" placeholder="Default state" state=#default />
          <NumberInput label="Hover State" placeholder="Hover state" state=#hover />
          <NumberInput label="Focused State" placeholder="Focused state" state=#focused />
          <NumberInput label="Filled State" placeholder="Filled state" state=#filled value={42.0} />
          <NumberInput
            label="Error State"
            placeholder="Error state"
            state=#error
            errorMessage="This field has an error"
          />
          <NumberInput
            label="Success State"
            placeholder="Success state"
            state=#success
            successMessage="This field is valid"
          />
          <NumberInput label="Disabled State" placeholder="Disabled state" state=#disabled />
        </div>
      </div>
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4">
          {"NumberInput with Min, Max, Step"->React.string}
        </h2>
        <div className="space-y-4 max-w-md">
          <NumberInput
            label="With Min and Max"
            placeholder="Enter value between 0 and 100"
            min={0.0}
            max={100.0}
            value={basicValue}
            onChange={handleBasicChange}
            className="w-full"
            hintText="Value must be between 0 and 100"
          />
          <NumberInput
            label="With Custom Step"
            placeholder="Step by 0.5"
            min={0.0}
            max={10.0}
            step={0.5}
            value={basicValue}
            onChange={handleBasicChange}
            className="w-full"
            hintText="Increments/decrements by 0.5"
          />
        </div>
      </div>
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"NumberInput with Icons"->React.string} </h2>
        <div className="space-y-4 max-w-md">
          <NumberInput
            label="Currency Input"
            placeholder="Enter amount"
            leftSlot={<DollarSign className="text-gray-400" size=18 />}
            value={currencyValue}
            onChange={handleCurrencyChange}
            className="w-full"
            min={0.0}
            step={0.01}
          />
          <div className="text-sm text-gray-600">
            {`Amount: $${Belt.Float.toString(currencyValue)}`->React.string}
          </div>
          <NumberInput
            label="Percentage Input"
            placeholder="Enter percentage"
            rightSlot={<Percent className="text-gray-400" size=18 />}
            value={percentValue}
            onChange={handlePercentChange}
            className="w-full"
            min={0.0}
            max={100.0}
          />
          <div className="text-sm text-gray-600">
            {`Percentage: ${Belt.Float.toString(percentValue)}%`->React.string}
          </div>
        </div>
      </div>
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4">
          {"NumberInput with Custom Steppers"->React.string}
        </h2>
        <div className="space-y-4 max-w-md">
          <NumberInput
            label="Custom Stepper Icons"
            placeholder="Try the steppers"
            value={basicValue}
            onChange={handleBasicChange}
            className="w-full"
            rightSlot={<div className="flex flex-col">
              <button
                className="text-gray-500 hover:text-blue-500 focus:outline-none"
                onClick={_ => setBasicValue(prev => prev +. 1.0)}>
                <Plus size=14 />
              </button>
              <button
                className="text-gray-500 hover:text-blue-500 focus:outline-none"
                onClick={_ => setBasicValue(prev => max(0.0, prev -. 1.0))}>
                <Minus size=14 />
              </button>
            </div>}
          />
        </div>
      </div>
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"NumberInput with Labels"->React.string} </h2>
        <div className="space-y-4 max-w-md">
          <NumberInput
            label="With Sublabel"
            sublabel="Additional information about this field"
            placeholder="With sublabel"
            className="w-full"
          />
          <NumberInput
            label="With Hint"
            hintText="This is a hint to help you fill this field"
            placeholder="With hint text"
            className="w-full"
          />
          <NumberInput
            label="Mandatory Field"
            mandatory={true}
            placeholder="This field is required"
            className="w-full"
          />
          <NumberInput
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

// Export the main component
let default = NumberInputDemo.make
