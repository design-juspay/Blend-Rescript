// Import the Button component from our bindings
open TabDemo
open AccordionDemo
open TagDemo
open AlertDemo
open SnackbarDemo
open ButtonDemo
open AvatarDemo
open RadioDemo
open ButtonGroupDemo
open DateRangePickerDemo
open SwitchDemo
open AvatarGroupDemo
open CheckboxDemo
open StatCardDemo

module TooltipDemo2 = {
  @react.component
  let make = () => {
    <div>
      <h1 className="text-2xl font-bold mb-6 mt-12"> {"Tooltip V2 Demo"->React.string} </h1>
      <TooltipV2 content={React.string("This is a basic tooltip")} side=#bottom>
        <button> {React.string("Hover me")} </button>
      </TooltipV2>
    </div>
  }
}

module BreadcrumbDemo = {
  @react.component
  let make = () => {
    <div>
      <h1 className="text-2xl font-bold mb-6 mt-12"> {"Breadcrumb Demo"->React.string} </h1>
      <Breadcrumb
        variant=#default
        items=[
          {label: "Home", href: "/", onClick: () => Js.log("Home clicked")},
          {label: "Products", href: "/products", onClick: () => Js.log("Products clicked")},
          {label: "Categories", href: "/categories", onClick: () => Js.log("Categories clicked")},
        ]
      />
    </div>
  }
}

module Sidebar = {
  type component =
    | Buttons
    | Tags
    | Snackbars
    | TabsComponent
    | Alerts
    | Breadcrumb
    | ButtonGroup
    | Avatar
    | AvatarGroup
    | Radio
    | Switch
    | DateRangePicker
    | TooltipDemo2
    | AccordionDemo
    | CheckboxDemo
    | StatCardDemo
  type componentInfo = {
    variant: component,
    label: string,
  }

  let components: array<componentInfo> = [
    {variant: Buttons, label: "Buttons"},
    {variant: Tags, label: "Tags"},
    {variant: Snackbars, label: "Snackbars"},
    {variant: TabsComponent, label: "Tabs"},
    {variant: Alerts, label: "Alerts"},
    {variant: Breadcrumb, label: "Breadcrumb"},
    {variant: ButtonGroup, label: "ButtonGroup"},
    {variant: Avatar, label: "Avatar"},
    {variant: AvatarGroup, label: "AvatarGroup"},
    {variant: Radio, label: "Radio"},
    {variant: Switch, label: "Switch"},
    {variant: DateRangePicker, label: "DateRangePicker"},
    {variant: TooltipDemo2, label: "TooltipDemo2"},
    {variant: AccordionDemo, label: "AccordionDemo"},
    {variant: CheckboxDemo, label: "CheckboxDemo"},
    {variant: StatCardDemo, label: "StatCardDemo"},
  ]

  @react.component
  let make = (~onSelect, ~activeComponent) => {
    let getItemClass = component => {
      let baseClass = "px-4 py-2 w-full text-left transition-colors duration-200"
      let activeClass = baseClass ++ " bg-blue-500 text-white"
      let inactiveClass = baseClass ++ " hover:bg-gray-100"

      activeComponent === component ? activeClass : inactiveClass
    }

    <div
      className="w-64 h-screen bg-white border-r border-gray-200 fixed left-0 top-0 overflow-y-auto">
      <div className="p-4 border-b border-gray-200">
        <h2 className="text-xl font-bold"> {"Components"->React.string} </h2>
      </div>
      <nav className="py-2">
        {components
        ->Belt.Array.map(({variant, label}) =>
          <button key={label} className={getItemClass(variant)} onClick={_ => onSelect(variant)}>
            {label->React.string}
          </button>
        )
        ->React.array}
      </nav>
    </div>
  }
}

@react.component
let make = () => {
  let (activeComponent, setActiveComponent) = React.useState(_ => Sidebar.Buttons)

  <div className="flex">
    <Sidebar activeComponent onSelect={component => setActiveComponent(_ => component)} />
    <div className="ml-64 flex-1 p-6">
      <h1 className="text-3xl font-bold mb-8 text-center">
        {"Design System Components"->React.string}
      </h1>
      {switch activeComponent {
      | Buttons => <ButtonDemo />
      | Tags => <TagDemo />
      | Snackbars => <SnackbarDemo />
      | TabsComponent => <TabsPreviewDemo />
      | Alerts => <AlertDemo />
      | Breadcrumb => <BreadcrumbDemo />
      | ButtonGroup => <ButtonGroupDemo />
      | Avatar => <AvatarDemo />
      | AvatarGroup => <AvatarGroupDemo />
      | Radio => <RadioDemo />
      | Switch => <SwitchDemo />
      | DateRangePicker => <DateRangePickerDemo />
      | TooltipDemo2 => <TooltipDemo2 />
      | AccordionDemo => <AccordionDemo />
      | CheckboxDemo => <CheckboxDemo />
      | StatCardDemo => <StatCardDemo />
      }}
    </div>
  </div>
}
