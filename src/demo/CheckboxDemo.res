open LucideIcons

module CheckboxDemo = {
  @react.component
  let make = () => {
    let (isChecked, setIsChecked) = React.useState(_ => false)
    let (groupValues, setGroupValues) = React.useState(_ => ["option1"])

    <div>
      <h1 className="text-2xl font-bold mb-6 mt-12"> {"Checkbox Demo"->React.string} </h1>
          <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Basic Checkbox"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <Checkbox> {React.string("Default Checkbox")} </Checkbox>
          <Checkbox defaultChecked=true> {React.string("Checked by default")} </Checkbox>
          <Checkbox 
            isChecked
            onCheckedChange={checked => Js.log2("Checkbox changed:", checked)}
          >
            {React.string("Controlled Checkbox")}
          </Checkbox>
        </div>
      </div>


      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Checkbox Sizes"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <Checkbox size=#sm> {React.string("Small Checkbox")} </Checkbox>
          <Checkbox size=#md> {React.string("Medium Checkbox")} </Checkbox>
        </div>
      </div>

      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Checkbox Positions"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <Checkbox position=#left> {React.string("Left Position (Default)")} </Checkbox>
          <Checkbox position=#right> {React.string("Right Position")} </Checkbox>
        </div>
      </div>


      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Checkbox States"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <Checkbox> {React.string("Normal Checkbox")} </Checkbox>
          <Checkbox isDisabled=true> {React.string("Disabled Checkbox")} </Checkbox>
          <Checkbox isDisabled=true defaultChecked=true> {React.string("Disabled Checked Checkbox")} </Checkbox>
          <Checkbox required=true> {React.string("Required Checkbox")} </Checkbox>
        </div>
      </div>


      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Checkbox with Additional Content"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <Checkbox subtext="This is additional information about the checkbox">
            {React.string("Checkbox with subtext")}
          </Checkbox>
          <Checkbox rightSlot={<Check size=18 color="green" />}>
            {React.string("Checkbox with right slot")}
          </Checkbox>
        </div>
      </div>
      

      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Controlled Checkbox"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <Checkbox 
            isChecked={isChecked}
            onCheckedChange={checked => setIsChecked(_ => checked)}
          >
            {React.string(`Checkbox is ${isChecked ? "checked" : "unchecked"}`)}
          </Checkbox>
          <button 
            className="px-4 py-2 bg-blue-500 text-white rounded mt-2"
            onClick={_ => setIsChecked(prev => !prev)}
          >
            {React.string("Toggle Checkbox")}
          </button>
        </div>
      </div>
      

      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Checkbox Group"->React.string} </h2>
        <Checkbox.CheckboxGroup
          label="Select options"
          name="options"
          value={groupValues}
          onChange={e => {
            let values = e["values"]
            setGroupValues(_ => values)
            Js.log2("Selected values:", values)
          }}
        >
          <div className="flex flex-col gap-3">
            <Checkbox value="option1"> {React.string("Option 1")} </Checkbox>
            <Checkbox value="option2"> {React.string("Option 2")} </Checkbox>
            <Checkbox value="option3"> {React.string("Option 3")} </Checkbox>
          </div>
        </Checkbox.CheckboxGroup>
      </div>
      

      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Disabled Checkbox Group"->React.string} </h2>
        <Checkbox.CheckboxGroup
          label="Disabled options group"
          name="disabled-options"
          isDisabled=true
          defaultValue={["option1"]}
        >
          <div className="flex flex-col gap-3">
            <Checkbox value="option1"> {React.string("Option 1")} </Checkbox>
            <Checkbox value="option2"> {React.string("Option 2")} </Checkbox>
          </div>
        </Checkbox.CheckboxGroup>
      </div>
    </div>
  }
} 