type tagVariant = [#noFill | #attentive | #subtle]
type tagStatus = [#primary | #secondary | #success | #error | #warning]
type tagSize = [#xs | #sm | #md | #lg]
type tagShape = [#squarical | #rounded]

type tagConfig = {
  text: string,
  variant?: tagVariant,
  status?: tagStatus,
  onClick?: ReactEvent.Mouse.t => unit,
}

@module("blend-v1") @react.component
external make: (
  ~primaryTag: tagConfig,
  ~secondaryTag: tagConfig=?,
  ~size: tagSize=?,
  ~shape: tagShape=?,
  ~leadingSlot: React.element=?,
  ~trailingSlot: React.element=?,
  ~testId: string=?,
) => React.element = "SplitTag"
