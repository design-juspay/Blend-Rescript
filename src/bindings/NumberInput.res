// ReScript bindings for the NumberInput component
module Types = {
  type stepperDirection = [
    | #up
    | #down
  ]

  // Reuse TextInput types for size and state
  type textInputSize = [
    | #sm
    | #md
    | #lg
  ]

  type textInputState = [
    | #default
    | #hover
    | #focused
    | #filled
    | #error
    | #success
    | #disabled
  ]
}

@module("@vinitjuspay/design-system") @react.component
external make: (
  ~hintText: string=?,
  ~label: string=?,
  ~leftSlot: React.element=?,
  ~mandatory: bool=?,
  ~placeholder: string=?,
  ~rightSlot: React.element=?,
  ~size: [#sm | #md | #lg]=?,
  ~state: [
    | #default
    | #hover
    | #focused
    | #filled
    | #error
    | #success
    | #disabled
  ]=?,
  ~sublabel: string=?,
  ~value: float=?,
  ~infoTooltip: string=?,
  ~successMessage: string=?,
  ~errorMessage: string=?,
  ~min: float=?,
  ~max: float=?,
  ~step: float=?,
  ~onChange: float => unit=?,
  ~onBlur: ReactEvent.Focus.t => unit=?,
  ~onFocus: ReactEvent.Focus.t => unit=?,
  ~className: string=?,
  ~id: string=?,
) => React.element = "NumberInput" 