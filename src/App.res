// Import the Button component from our bindings
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
open ModalDemo
open TextInputDemo
open NumberInputDemo
open OTPInputDemo
open TextAreaDemo
open UnitInputDemo
open DropdownInputDemo
open PopoverDemo
open TabDemo

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
    | ModalComponent
    | TextInputComponent
    | NumberInputComponent
    | OTPInputComponent
    | TextAreaComponent
    | UnitInputComponent
    | DropdownInputComponent
    | PopoverComponent

  type componentInfo = {
    variant: component,
    label: string,
    category: string,
  }

  let components: array<componentInfo> = [
    {variant: Buttons, label: "Buttons", category: "Basic UI"},
    {variant: ButtonGroup, label: "Button Group", category: "Basic UI"},
    {variant: Tags, label: "Tags", category: "Basic UI"},
    {variant: Alerts, label: "Alerts", category: "Basic UI"},
    {variant: Avatar, label: "Avatar", category: "Basic UI"},
    {variant: AvatarGroup, label: "Avatar Group", category: "Basic UI"},
    {variant: StatCardDemo, label: "Stat Card", category: "Basic UI"},
    {variant: Breadcrumb, label: "Breadcrumb", category: "Basic UI"},
    {variant: TextInputComponent, label: "Text Input", category: "Form Components"},
    {variant: NumberInputComponent, label: "Number Input", category: "Form Components"},
    {variant: TextAreaComponent, label: "Text Area", category: "Form Components"},
    {variant: UnitInputComponent, label: "Unit Input", category: "Form Components"},
    {variant: DropdownInputComponent, label: "Dropdown Input", category: "Form Components"},
    {variant: OTPInputComponent, label: "OTP Input", category: "Form Components"},
    {variant: CheckboxDemo, label: "Checkbox", category: "Form Components"},
    {variant: Radio, label: "Radio", category: "Form Components"},
    {variant: Switch, label: "Switch", category: "Form Components"},
    {variant: DateRangePicker, label: "Date Range Picker", category: "Form Components"},
    {variant: TabsComponent, label: "Tabs", category: "Navigation & Menus"},
    {variant: ModalComponent, label: "Modal", category: "Overlays & Notifications"},
    {variant: PopoverComponent, label: "Popover", category: "Overlays & Notifications"},
    {variant: TooltipDemo2, label: "Tooltip", category: "Overlays & Notifications"},
    {variant: Snackbars, label: "Snackbars", category: "Overlays & Notifications"},
    {variant: AccordionDemo, label: "Accordion", category: "Expandable Content"},
  ]

  @react.component
  let make = (~onSelect, ~activeComponent) => {
    let getItemClass = component => {
      let baseClass = "px-4 py-2 w-full text-left transition-colors duration-200"
      let activeClass = baseClass ++ " bg-blue-500 text-white"
      let inactiveClass = baseClass ++ " hover:bg-gray-100"

      activeComponent === component ? activeClass : inactiveClass
    }

    let categories = components
      ->Belt.Array.reduce([], (acc, {category}) => {
        if (acc->Belt.Array.some(c => c === category)) {
          acc
        } else {
          Belt.Array.concat(acc, [category])
        }
      })

    <div className="w-64 h-screen bg-white border-r border-gray-200 fixed left-0 top-0 overflow-y-auto">
      <div className="p-4 border-b border-gray-200">
        <h2 className="text-xl font-bold"> {"Components"->React.string} </h2>
      </div>
      <nav className="py-2">
        {categories
          ->Belt.Array.map(category => {
            let categoryComponents = components->Belt.Array.keep(({category: cat}) => cat === category)
            <div key={category}>
              <div className="px-4 py-2 font-semibold text-sm text-gray-500 uppercase">
                {category->React.string}
              </div>
              {categoryComponents
                ->Belt.Array.map(({variant, label}) =>
                  <button key={label} className={getItemClass(variant)} onClick={_ => onSelect(variant)}>
                    {label->React.string}
                  </button>
                )
                ->React.array}
              <div className="my-2 border-b border-gray-100"></div>
            </div>
          })
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
      | ModalComponent => <ModalDemo />
      | TextInputComponent => <TextInputDemo />
      | NumberInputComponent => <NumberInputDemo />
      | OTPInputComponent => <OTPInputDemo />
      | TextAreaComponent => <TextAreaDemo />
      | UnitInputComponent => <UnitInputDemo />
      | DropdownInputComponent => <DropdownInputDemo />
      | PopoverComponent => <PopoverDemo />
      }}
    </div>
  </div>
}
