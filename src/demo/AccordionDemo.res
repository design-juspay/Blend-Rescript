open LucideIcons

module AccordionDemo = {
  @react.component
  let make = () => {
    let (expandedValue, setExpandedValue) = React.useState(_ => "item-1")

    <div>
      <h1 className="text-2xl font-bold mb-6 mt-12"> {"Accordion Demo"->React.string} </h1>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Basic Accordion"->React.string} </h2>
        <Accordion>
          <Accordion.Item value="item-1" title="Accordion Item 1">
            <div> {"Basic accordion content"->React.string} </div>
          </Accordion.Item>
          <Accordion.Item value="item-2" title="Accordion Item 2">
            <div> {"Another accordion item"->React.string} </div>
          </Accordion.Item>
        </Accordion>


      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Accordion Types"->React.string} </h2>
        <div className="flex flex-col gap-6">
          <div>
            <div className="mb-2"> {"Border Type"->React.string} </div>
            <Accordion defaultValue="item-1" accordionType=#border>
              <Accordion.Item value="border-1" title="Border Style Item">
                <div> {"Content with border style"->React.string} </div>
              </Accordion.Item>
            </Accordion>
          </div>
          <div>
            <div className="mb-2"> {"No Border Type"->React.string} </div>
            <Accordion accordionType=#noborder>
              <Accordion.Item value="noborder-1" title="No Border Style Item">
                <div> {"Content without border"->React.string} </div>
              </Accordion.Item>
            </Accordion>
          </div>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Accordion with Subtext"->React.string} </h2>
        <Accordion>
          <Accordion.Item
            value="subtext-1"
            title="Item with Subtext"
            subtext="This is additional information about this item">
            <div> {"Content with subtext"->React.string} </div>
          </Accordion.Item>
        </Accordion>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Accordion with Slots"->React.string} </h2>
        <Accordion>
          <Accordion.Item
            value="slots-1" title="Item with Left Slot" leftSlot={<Check size=16 color="green" />}>
            <div> {"Content with left slot"->React.string} </div>
          </Accordion.Item>
          <Accordion.Item
            value="slots-2"
            title="Item with Right Slot"
            rightSlot={<Tag variant=#attentive label="New" color=#primary />}>
            <div> {"Content with right slot"->React.string} </div>
          </Accordion.Item>
        </Accordion>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Controlled Accordion"->React.string} </h2>
        <Accordion value=expandedValue onValueChange={value => setExpandedValue(_ => value)}>
          <Accordion.Item value="controlled-1" title="Controlled Item 1">
            <div> {"First controlled item"->React.string} </div>
          </Accordion.Item>
          <Accordion.Item value="controlled-2" title="Controlled Item 2">
            <div> {"Second controlled item"->React.string} </div>
          </Accordion.Item>
        </Accordion>
        <div className="mt-2 text-sm text-gray-600">
          {`Currently expanded: ${expandedValue}`->React.string}
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Disabled Accordion Items"->React.string} </h2>
        <Accordion>
          <Accordion.Item value="disabled-1" title="Disabled Item" isDisabled=true>
            <div> {"This content won't be visible"->React.string} </div>
          </Accordion.Item>
          <Accordion.Item value="disabled-2" title="Enabled Item">
            <div> {"This content is accessible"->React.string} </div>
          </Accordion.Item>
        </Accordion>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Chevron Positions"->React.string} </h2>
        <div className="flex flex-col gap-6">
          <div>
            <div className="mb-2"> {"Left Chevron"->React.string} </div>
            <Accordion>
              <Accordion.Item value="chevron-left" title="Left Chevron Item" chevronPosition=#left>
                <div> {"Content with left chevron"->React.string} </div>
              </Accordion.Item>
            </Accordion>
          </div>
          <div>
            <div className="mb-2"> {"Right Chevron"->React.string} </div>
            <Accordion>
              <Accordion.Item
                value="chevron-right" title="Right Chevron Item" chevronPosition=#right>
                <div> {"Content with right chevron"->React.string} </div>
              </Accordion.Item>
            </Accordion>
          </div>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Collapsible Accordion"->React.string} </h2>
        <Accordion isCollapsible=true>
          <Accordion.Item value="collapsible-1" title="Collapsible Item 1">
            <div> {"First collapsible item"->React.string} </div>
          </Accordion.Item>
          <Accordion.Item value="collapsible-2" title="Collapsible Item 2">
            <div> {"Second collapsible item"->React.string} </div>
          </Accordion.Item>
        </Accordion>
      </div>
    </div>
  }
}