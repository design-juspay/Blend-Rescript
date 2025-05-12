// ReScript bindings for the TextArea component
module Types = {
  type textAreaSize = [
    | #default
  ]

  // Reuse TextInput types for state
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
  ~mandatory: bool=?,
  ~placeholder: string=?,
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
  ~value: string=?,
  ~onChange: ReactEvent.Form.t => unit=?,
  ~onBlur: ReactEvent.Focus.t => unit=?,
  ~onFocus: ReactEvent.Focus.t => unit=?,
  ~infoTooltip: string=?,
  ~rows: int=?,
  ~successMessage: string=?,
  ~errorMessage: string=?,
  ~className: string=?,
  ~id: string=?,
) => React.element = "TextArea" 