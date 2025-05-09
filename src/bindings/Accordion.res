type accordionType = [#border| #noborder ]

type accordionChevronPosition = [#left| #right ]


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

module Root = {
  @module("@vinitjuspay/design-system") @react.component
  external make: (
    ~accordionType: accordionType=?,
    ~defaultValue: string=?,
    ~value: string=?,
    ~isCollapsible: bool=?,
    ~isMultiple: bool=?,
    ~onValueChange: string => unit=?,
    ~title: string,
    ~children: React.element,
  ) => React.element = "Accordion"
}