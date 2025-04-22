type snackbarType = [#info | #warning | #error | #success]

type snackbarPosition = [#topRight | #topLeft | #bottomRight | #bottomLeft]

@module("@vinitjuspay/design-system") @react.component
external make: (
  ~type_: snackbarType,
  ~heading: string=?,
  ~message: string=?,
  ~alertMessage: string=?,
  ~showIcon: bool=?,
  ~autoClose: bool=?,
  ~position: snackbarPosition=?,
  ~onClose: unit => unit=?,
  ~className: string=?,
) => React.element = "Snackbar"
