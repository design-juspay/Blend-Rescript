type tagVariant = [#noFill | #attentive | #subtle]
type tagStyle = [#squarical | #rounded]
type tagSize = [#xs | #sm | #md | #lg]
type tagColor = [#neutral | #primary | #success | #error | #warning | #purple]

type tagProps = {
  variant: option<tagVariant>,
  tagStyle: option<tagStyle>,
  size: option<tagSize>,
  color: option<tagColor>,
  label: option<string>,
  leadingSlot: option<React.element>,
  trailingSlot: option<React.element>,
  className: option<string>,
}

type splitTagProps = {
  tagStyle: option<tagStyle>,
  size: option<tagSize>,
  color: option<tagColor>,
  leftLabel: option<string>,
  rightLabel: option<string>,
  leftSlot: option<React.element>,
  rightSlot: option<React.element>,
  className: option<string>,
}

@module("@vinitjuspay/design-system") @react.component
external make: (
  ~variant: tagVariant=?,
  ~tagStyle: tagStyle=?,
  ~size: tagSize=?,
  ~color: tagColor=?,
  ~label: string=?,
  ~leadingSlot: React.element=?,
  ~trailingSlot: React.element=?,
  ~className: string=?,
  ~id: string=?,
  ~dataTestId: string=?,
) => React.element = "Tag"

module Split = {
  @module("@vinitjuspay/design-system") @react.component
  external make: (
    ~tagStyle: tagStyle=?,
    ~size: tagSize=?,
    ~color: tagColor=?,
    ~leftLabel: string=?,
    ~rightLabel: string=?,
    ~leftSlot: React.element=?,
    ~rightSlot: React.element=?,
    ~className: string=?,
    ~id: string=?,
    ~dataTestId: string=?,
  ) => React.element = "SplitTag"
}
