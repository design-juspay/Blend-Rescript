module UnitInputDemo = {
  @react.component
  let make = () => {
    let (currencyValue, setCurrencyValue) = React.useState(_ => "")
    let (percentValue, setPercentValue) = React.useState(_ => "")
    let (measurementValue, setMeasurementValue) = React.useState(_ => "")
    let (weightValue, setWeightValue) = React.useState(_ => "")

    let handleCurrencyChange = e => {
      let value = ReactEvent.Form.target(e)["value"]
      setCurrencyValue(_ => value)
      Js.log(`Currency value changed: ${value}`)
    }

    let handlePercentChange = e => {
      let value = ReactEvent.Form.target(e)["value"]
      setPercentValue(_ => value)
      Js.log(`Percent value changed: ${value}`)
    }

    let handleMeasurementChange = e => {
      let value = ReactEvent.Form.target(e)["value"]
      setMeasurementValue(_ => value)
      Js.log(`Measurement value changed: ${value}`)
    }

    let handleWeightChange = e => {
      let value = ReactEvent.Form.target(e)["value"]
      setWeightValue(_ => value)
      Js.log(`Weight value changed: ${value}`)
    }

    <div className="p-4 space-y-8">
      <h1 className="text-2xl font-bold"> {"UnitInput Components"->React.string} </h1>
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Basic UnitInput Examples"->React.string} </h2>
        <div className="space-y-4 max-w-md">
          <UnitInput
            label="Currency Input (Prefix)"
            placeholder="Enter amount"
            unitText="₹"
            unitPosition=#prefix
            value={currencyValue}
            onChange={handleCurrencyChange}
            className="w-full"
          />
          <UnitInput
            label="Percentage Input (Suffix)"
            placeholder="Enter percentage"
            unitText="%"
            unitPosition=#suffix
            value={percentValue}
            onChange={handlePercentChange}
            className="w-full"
          />
          <UnitInput
            label="Measurement Input (Suffix)"
            placeholder="Enter length"
            unitText="cm"
            unitPosition=#suffix
            value={measurementValue}
            onChange={handleMeasurementChange}
            className="w-full"
          />
          <UnitInput
            label="Weight Input (Suffix)"
            placeholder="Enter weight"
            unitText="kg"
            unitPosition=#suffix
            value={weightValue}
            onChange={handleWeightChange}
            className="w-full"
          />
        </div>
      </div>
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"UnitInput States"->React.string} </h2>
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          <UnitInput
            label="Default State"
            placeholder="Default state"
            unitText="$"
            unitPosition=#prefix
            state=#default
          />
          <UnitInput
            label="Hover State"
            placeholder="Hover state"
            unitText="$"
            unitPosition=#prefix
            state=#hover
          />
          <UnitInput
            label="Focused State"
            placeholder="Focused state"
            unitText="$"
            unitPosition=#prefix
            state=#focused
          />
          <UnitInput
            label="Filled State"
            placeholder="Filled state"
            unitText="$"
            unitPosition=#prefix
            state=#filled
            value="100"
          />
          <UnitInput
            label="Error State"
            placeholder="Error state"
            unitText="$"
            unitPosition=#prefix
            state=#error
            errorMessage="This field has an error"
          />
          <UnitInput
            label="Success State"
            placeholder="Success state"
            unitText="$"
            unitPosition=#prefix
            state=#success
            successMessage="This field is valid"
            value="100"
          />
          <UnitInput
            label="Disabled State"
            placeholder="Disabled state"
            unitText="$"
            unitPosition=#prefix
            state=#disabled
          />
        </div>
      </div>
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4">
          {"UnitInput with Different Sizes"->React.string}
        </h2>
        <div className="space-y-4 max-w-md">
          <UnitInput
            label="Small Size"
            placeholder="Small input"
            unitText="$"
            unitPosition=#prefix
            size=#md
            className="w-full"
          />
          <UnitInput
            label="Medium Size"
            placeholder="Medium input"
            unitText="$"
            unitPosition=#prefix
            size=#md
            className="w-full"
          />
          <UnitInput
            label="Large Size"
            placeholder="Large input"
            unitText="$"
            unitPosition=#prefix
            size=#lg
            className="w-full"
          />
        </div>
      </div>
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4">
          {"UnitInput with Additional Elements"->React.string}
        </h2>
        <div className="space-y-4 max-w-md">
          <UnitInput
            label="With Sublabel"
            sublabel="Additional information about this field"
            placeholder="Enter value"
            unitText="$"
            unitPosition=#prefix
            className="w-full"
          />
          <UnitInput
            label="With Hint"
            hintText="This is a hint to help you fill this field"
            placeholder="Enter value"
            unitText="$"
            unitPosition=#prefix
            className="w-full"
          />
          <UnitInput
            label="Mandatory Field"
            mandatory={true}
            placeholder="This field is required"
            unitText="$"
            unitPosition=#prefix
            className="w-full"
          />
          <UnitInput
            label="With Info Tooltip"
            infoTooltip="This tooltip provides additional information about the field"
            placeholder="Hover over the info icon"
            unitText="$"
            unitPosition=#prefix
            className="w-full"
          />
        </div>
      </div>
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"UnitInput Use Cases"->React.string} </h2>
        <div className="space-y-6">
          <div className="border p-4 rounded-lg bg-gray-50">
            <h3 className="text-lg font-medium mb-2"> {"Price Input"->React.string} </h3>
            <div className="grid grid-cols-2 gap-4">
              <UnitInput
                label="Price (USD)"
                placeholder="Enter price"
                unitText="$"
                unitPosition=#prefix
                className="w-full"
                state={currencyValue->Js.String2.length > 0 ? #filled : #default}
                value={currencyValue}
                onChange={handleCurrencyChange}
              />
              <UnitInput
                label="Discount"
                placeholder="Enter discount"
                unitText="%"
                unitPosition=#suffix
                className="w-full"
                state={percentValue->Js.String2.length > 0 ? #filled : #default}
                value={percentValue}
                onChange={handlePercentChange}
              />
            </div>
            <div className="mt-4">
              <button
                className={`px-4 py-2 rounded-md text-white font-medium ${currencyValue->Js.String2.length > 0 &&
                    percentValue->Js.String2.length > 0
                    ? "bg-blue-600 hover:bg-blue-700"
                    : "bg-gray-300 cursor-not-allowed"}`}
                disabled={currencyValue->Js.String2.length === 0 ||
                  percentValue->Js.String2.length === 0}
                onClick={_ => Js.log("Saving price information...")}>
                {"Save Price Information"->React.string}
              </button>
            </div>
          </div>
          <div className="border p-4 rounded-lg bg-gray-50">
            <h3 className="text-lg font-medium mb-2"> {"Product Dimensions"->React.string} </h3>
            <div className="grid grid-cols-2 gap-4">
              <UnitInput
                label="Length"
                placeholder="Enter length"
                unitText="cm"
                unitPosition=#suffix
                className="w-full"
                value={measurementValue}
                onChange={handleMeasurementChange}
              />
              <UnitInput
                label="Weight"
                placeholder="Enter weight"
                unitText="kg"
                unitPosition=#suffix
                className="w-full"
                value={weightValue}
                onChange={handleWeightChange}
              />
            </div>
            <div className="mt-4">
              <button
                className={`px-4 py-2 rounded-md text-white font-medium ${measurementValue->Js.String2.length > 0 &&
                    weightValue->Js.String2.length > 0
                    ? "bg-blue-600 hover:bg-blue-700"
                    : "bg-gray-300 cursor-not-allowed"}`}
                disabled={measurementValue->Js.String2.length === 0 ||
                  weightValue->Js.String2.length === 0}
                onClick={_ => Js.log("Saving product dimensions...")}>
                {"Save Dimensions"->React.string}
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  }
}

// Export the main component
let default = UnitInputDemo.make
