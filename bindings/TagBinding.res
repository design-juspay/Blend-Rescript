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
  text: option<string>,
}

@module("blend-v1") @react.component
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
  ~text: string=?,
) => React.element = "Tag"
