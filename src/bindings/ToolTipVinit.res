// module TooltipSize = {  type t = [#sm | #lg]
  
//   let toString = (size: t) => {
//     switch size {
//     | #sm => "sm"
//     | #lg => "lg"
//     }
//   }
// }


type tooltipSize = [
  | #sm
  | #lg
]

// module TooltipSide = {
//   type t = [#top | #right | #left | #bottom]
  
//   let toString = (side: t) => {
//     switch side {
//     | #top => "top"
//     | #right => "right"
//     | #left => "left"
//     | #bottom => "bottom"
//     }
//   }
// }

type tooltipSide = [
  | #top
  | #right
  | #left
  | #bottom
]


// module TooltipAlign = {
//   type t = [#start | #end | #center]
  
//   let toString = (align: t) => {
//     switch align {
//     | #start => "start" 
//     | #end => "end"
//     | #center => "center"
//     }
//   }
// }


type tooltipAlign = [
  | #start
  | #end
  | #center
]

// type tooltipSlotDirection = [
//   | #left
//   | #right
  
//   let toString = (direction: t) => {
//     switch direction {
//     | #left => "left"
//     | #right => "right"
//     }
//   }

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
) => React.element = "Tooltip" 



/*
 module ToolTipVinit = {
  type tooltipArrow = [
    | #default
    | #right
    | #left
    | #bottomCenter
    | #bottomLeft
    | #bottomRight
    | #topCenter
    | #topLeft
    | #topRight
    | #none
  ]
  type slotDirection = [#left | #right]
  type tooltipSize = [#sm | #lg]

  @module("@vinitjuspay/design-system")
  external make: (
    ~children: React.element,
    ~content: React.element,
    ~size: tooltipSize,
    ~arrow: tooltipArrow,
    ~slotDirection: slotDirection,
    ~slot: React.element,
  ) => React.element = "Tooltip"
}
 */


// module ToolTipVinit = { 
//   type slotDirection = [
//     | #left
//     | #right
//   ]

//   type tooltipSide = [
//     | #top
//     | #right
//     | #left
//     | #bottom
//   ]
  
//   type tooltipAlign = [
//     | #start
//     | #end
//     | #center
//   ] 

//   type tooltipSize = [
//     | #sm
//     | #lg
//   ] 

//   @module("@vinitjuspay/design-system")
//   external make: (  
//     ~children: React.element,
//     ~content: React.element,
//     ~open_: bool=?,
//     ~side: tooltipSide=?,
//     ~align: tooltipAlign=?,
//     ~showArrow: bool=?,
//     ~size: tooltipSize=?,
//     ~slot: React.element=?,
//     ~slotDirection: slotDirection=?,
//     ~delayDuration: int=?,
//     ~offset: int=?,
//   ) => React.element = "ToolTipVinit"
// }