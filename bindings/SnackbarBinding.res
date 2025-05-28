type snackbarVariant = [#info | #success | #warning | #error]

type actionButton = {
  label: string,
  onClick: unit => unit,
}

type addToastOptions = {
  header: string,
  description?: string,
  variant: snackbarVariant,
  onClose?: unit => unit,
  actionButton?: actionButton,
}

@module("blend-v1") @react.component
external make: (
  ~position: string=?,
  ~expand: bool=?,
  ~richColors: bool=?,
  ~closeButton: bool=?,
  ~className: string=?,
) => React.element = "default"

@module("blend-v1")
external addSnackbar: addToastOptions => string = "addSnackbar"