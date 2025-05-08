type accordionType = [
  | #border
  | #noborder
]

type accordionChevronPosition = [
  | #left
  | #right
]

type accordionItemProps = {
  value: string,
  title: string,
  subtext: option<string>,
  leftSlot: option<React.element>,
  rightSlot: option<React.element>,
  subtextSlot: option<React.element>,
  children: React.element,
  isDisabled: option<bool>,
  className: option<string>,
  chevronPosition: option<accordionChevronPosition>,
}

type accordionProps = {
  children: React.element,
  accordionType: option<accordionType>,
  defaultValue: option<string>,
  value: option<string>,
  isCollapsible: option<bool>,
  isMultiple: option<bool>,
  onValueChange: option<string => unit>,
  className: option<string>,
}

@module("@vinitjuspay/design-system") @react.component
external make: (
  ~children: React.element,
  ~accordionType: accordionType=?,
  ~defaultValue: string=?,
  ~value: string=?,
  ~isCollapsible: bool=?,
  ~isMultiple: bool=?,
  ~onValueChange: string => unit=?,
  ~className: string=?,
) => React.element = "Accordion"

module Item = {
  @module("@vinitjuspay/design-system") @react.component
  external make: (
    ~value: string,
    ~title: string,
    ~subtext: string=?,
    ~leftSlot: React.element=?,
    ~rightSlot: React.element=?,
    ~subtextSlot: React.element=?,
    ~children: React.element,
    ~isDisabled: bool=?,
    ~className: string=?,
    ~chevronPosition: accordionChevronPosition=?,
  ) => React.element = "AccordionItem"
}
