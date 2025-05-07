
type tooltipSize = [
  | #sm
  | #lg
]
type tooltipSide = [
  | #top
  | #right
  | #left
  | #bottom
]
type tooltipAlign = [
  | #start
  | #end
  | #center
]
type tooltipSlotDirection = [
  | #left
  | #right
]
@module("@vinitjuspay/design-system") @react.component
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
  // ~ref: ReactDOM.domRef=?,
) => React.element = "TooltipV2" 