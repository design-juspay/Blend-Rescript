// Switch component bindings

type switchSize = [
  | #sm
  | #md
]

// Switch component props
type switchProps = {
  value?: string,
  checked?: bool,
  onCheckedChange?: bool => unit,
  disabled?: bool,
  size?: switchSize,
  label?: React.element,
  subtext?: string,
  rightSlot?: React.element,
  className?: string,
  name?: string,
  onChange?: ReactEvent.Form.t => unit,
}

// SwitchGroup props
type switchGroupProps = {
  label?: string,
  name: string,
  defaultValue?: array<string>,
  value?: array<string>,
  children: React.element,
  onChange?: {
    "name": string,
    "values": array<string>,
  } => unit,
  className?: string,
  isDisabled?: bool,
}

// Switch component binding
@module("@vinitjuspay/design-system") @react.component
external make: (
  ~value: string=?,
  ~checked: bool=?,
  ~onCheckedChange: bool => unit=?,
  ~disabled: bool=?,
  ~size: switchSize=?,
  ~label: React.element=?,
  ~subtext: string=?,
  ~rightSlot: React.element=?,
  ~className: string=?,
  ~name: string=?,
  ~onChange: ReactEvent.Form.t => unit=?,
) => React.element = "Switch"

// SwitchGroup component binding
module SwitchGroup = {
  @module("@vinitjuspay/design-system") @react.component
  external make: (
    ~label: string=?,
    ~name: string,
    ~defaultValue: array<string>=?,
    ~value: array<string>=?,
    ~children: React.element,
    ~onChange: {
      "name": string,
      "values": array<string>,
    } => unit=?,
    ~className: string=?,
    ~isDisabled: bool=?,
  ) => React.element = "SwitchGroup"
} 