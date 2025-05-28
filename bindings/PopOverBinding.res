// Type definitions
type popoverSize = [#sm | #md]

// Action type for popover buttons
type popoverActionType = {
  label: string,
  onClick: unit => unit,
  isDisabled?: bool,
  buttonType?: [#primary | #secondary | #success | #danger | #warning | #info],
  buttonSubType?: [#filled | #outlined | #text],
}

// Popover binding for the design system
@module("blend-v1") @react.component
external make: (
  ~heading: string=?,
  ~description: string=?,
  ~trigger: React.element,
  ~children: React.element,
  ~showCloseButton: bool=?,
  ~primaryAction: popoverActionType=?,
  ~secondaryAction: popoverActionType=?,
  ~className: string=?,
  ~size: popoverSize=?,
) => React.element = "Popover"
