// Type definitions
type tooltipSlotDirection = [#left | #right]
type tooltipSide = [#top | #right | #left | #bottom]
type tooltipAlign = [#start | #end | #center]
type tooltipSize = [#sm | #lg]

// Tooltip binding for the design system
@module("blend-v1") @react.component
external make: (
  ~children: React.element,
  ~content: React.element,
  ~open_: bool=?,
  ~side: tooltipSide=?,
  ~align: tooltipAlign=?,
  ~showArrow: bool=?,
  ~size: tooltipSize=?,
  ~slot: React.element=?,
  ~slotDirection: tooltipSlotDirection=?,
  ~delayDuration: int=?,
  ~offset: int=?,
  ~className: string=?,
) => React.element = "Tooltip"
