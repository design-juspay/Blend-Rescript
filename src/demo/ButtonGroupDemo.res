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