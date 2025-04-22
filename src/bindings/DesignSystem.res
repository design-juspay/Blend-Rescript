type buttonProps = {
  variant: [#primary | #secondary | #danger | #success],
  size: option<[#sm | #md | #lg]>,
  disabled: option<bool>,
  text: option<string>,
}

@module("@vinitjuspay/design-system") @react.component
external make: (
  ~buttonType: [#primary | #secondary | #danger | #success]=?,
  ~size: [#sm | #md | #lg]=?,
  ~isDisabled: bool=?,
  ~onClick: ReactEvent.Mouse.t => unit=?,
  ~className: string=?,
  ~text: string=?,
  ~subType: [#default | #iconOnly | #link]=?,
  ~isLoading: bool=?,
  ~children: React.element=?,
  ~leftIcon: React.element=?,
  ~rightIcon: React.element=?,
  ~id: string=?,
  ~name: string=?,
  ~type_: [#button | #submit | #reset]=?,
  ~ariaLabel: string=?,
  ~fullWidth: bool=?,
  ~tabIndex: int=?,
  ~dataTestId: string=?,
) => React.element = "Button"

