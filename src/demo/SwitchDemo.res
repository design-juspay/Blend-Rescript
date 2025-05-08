
open LucideIcons

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
            isChecked=isChecked
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
          <Switch isChecked=true label={React.string("Checked Switch")} />
          <Switch isDisabled=true label={React.string("Disabled Switch")} />
          <Switch isDisabled=true isChecked=true label={React.string("Disabled and Checked Switch")} />
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