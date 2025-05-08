// Checkbox component bindings

type checkboxSize = [
  | #sm
  | #md
]

type checkboxPosition = [
  | #left
  | #right
]

// Checkbox component props
type checkboxProps = {
  id?: string,
  value?: string,
  isChecked?: bool,
  defaultChecked?: bool,
  onCheckedChange?: bool => unit,
  isDisabled?: bool,
  required?: bool,
  className?: string,
  indicatorClassName?: string,
  checkIconClassName?: string,
  size?: checkboxSize,
  children?: React.element,
  position?: checkboxPosition,
  subtext?: string,
  rightSlot?: React.element,
}

@module("@vinitjuspay/design-system") @react.component
external make: (
  ~id: string=?,
  ~value: string=?,
  ~isChecked: bool=?,
  ~defaultChecked: bool=?,
  ~onCheckedChange: bool => unit=?,
  ~isDisabled: bool=?,
  ~required: bool=?,
  ~className: string=?,
  ~indicatorClassName: string=?,
  ~checkIconClassName: string=?,
  ~size: checkboxSize=?,
  ~children: React.element=?,
  ~position: checkboxPosition=?,
  ~subtext: string=?,
  ~rightSlot: React.element=?,
) => React.element = "Checkbox"

// CheckboxGroup component - If this exists in the design system
module CheckboxGroup = {
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
  ) => React.element = "CheckboxGroup"
} 