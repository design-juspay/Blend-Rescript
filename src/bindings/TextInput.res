// TextInput component bindings
type textInputSize = [
  | #md
  | #lg
]

type textInputState = [
  | #default
  | #hover
  | #focused
  | #filled
  | #error
  | #disabled
  | #success
]

@module("@vinitjuspay/design-system") @react.component
external make: (
  ~hintText: string=?,
  ~label: string=?,
  ~leftSlot: React.element=?,
  ~mandatory: bool=?,
  ~placeholder: string=?,
  ~rightSlot: React.element=?,
  ~size: textInputSize=?,
  ~state: textInputState=?,
  ~sublabel: string=?,
  ~value: string=?,
  ~infoTooltip: string=?,
  ~successMessage: string=?,
  ~errorMessage: string=?,
  ~onChange: ReactEvent.Form.t => unit=?,
  ~onBlur: ReactEvent.Focus.t => unit=?,
  ~onFocus: ReactEvent.Focus.t => unit=?,
  ~className: string=?,
  ~id: string=?,
  ~name: string=?,
  ~type_: string=?,
  ~ref: ReactDOM.domRef=?,
) => React.element = "TextInput" 