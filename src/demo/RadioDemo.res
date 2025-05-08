
open LucideIcons

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
          <Radio value="checked" isChecked=true> {React.string("Checked Radio")} </Radio>
          <Radio value="disabled" isDisabled=true> {React.string("Disabled Radio")} </Radio>
          <Radio value="disabled_checked" isDisabled=true isChecked=true>
          // <Radio value="basic" isDisabled isChecked={true}>Basic Plan</Radio>
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