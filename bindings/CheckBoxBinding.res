// Type definitions
type checkboxSize = [#sm | #md]
type checkboxState = [#truee | #falsee | #indeterminate]

// Checkbox binding for the design system
@module("blend-v1") @react.component
external make: (
  ~id: string=?,
  ~value: string=?,
  ~checked: checkboxState=?,
  ~defaultChecked: bool=?,
  ~onCheckedChange: checkboxState => unit=?,
  ~disabled: bool=?,
  ~required: bool=?,
  ~error: bool=?,
  ~size: checkboxSize=?,
  ~children: React.element=?,
  ~subtext: string=?,
  ~slot: React.element=?,
  ~className: string=?,
) => React.element = "Checkbox"
