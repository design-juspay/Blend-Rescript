// src/bindings/DataTable.res

// Sort direction enum
module SortDirection = {
  type t = [#asc | #desc | #none]
}

// Column definition type
type columnDefinition<'row> = {
  // Field key in data object
  field: string,
  // Header text to display
  header: string,
  // Optional custom render function for cell content
  renderCell?: (Js.Json.t, 'row) => React.element,
  // Whether column is sortable
  isSortable?: bool,
  // Whether column is initially visible
  isVisible?: bool,
  // Whether column can be hidden by user
  canHide?: bool,
  // Custom classes to apply to the column
  className?: string,
  // Width of the column
  width?: string,
}

// Filter option type
// type filterOption = {
//   // Unique identifier for the filter option
//   id: string,
//   // Display label for the filter
//   label: string,
//   // Optional nested options
//   options?: array<filterOption>,
// }

// Filter type
// type filter = {
//   // Unique identifier for the filter
//   id: string,
//   // Display label for the filter
//   label: string,
//   // Filter options
//   options: array<filterOption>,
//   // Currently selected value(s)
//   selectedValues?: array<string>,
//   // Whether multiple selections are allowed
//   isMultiSelect?: bool,
// }

// Sort configuration
type sortConfig = {
  field: string,
  direction: SortDirection.t,
}

// Pagination configuration
type paginationConfig = {
  currentPage: int,
  pageSize: int,
  totalRows: int,
  pageSizeOptions: array<int>,
  onPageChange?: int => unit,
  onPageSizeChange?: int => unit,
}

// Data summary type
type dataSummary = {
  count: int,
  sum?: float,
  totalCount: int,
}

// DataTable component binding
@module("@vinitjuspay/design-system") @react.component
external make: (
  // Data array from backend
  ~data: array<'row>,
  // Data summary information
  ~summary: dataSummary=?,
  // Column definitions
  ~columns: array<columnDefinition<'row>>,
  // Unique identifier field
  ~idField: string,
  // Optional table title
  ~title: string=?,
  // Optional description
  ~description: string=?,
  // Whether table rows should be striped
  ~isStriped: bool=?,
  // Whether rows should highlight on hover
  ~isHoverable: bool=?,
  // Initial sort configuration
  ~defaultSort: sortConfig=?,
  // Whether to use client-side filtering
  ~enableFiltering: bool=?,
  // Whether to enable column management
  ~enableColumnManager: bool=?,
  // Whether to show the table toolbar
  ~showToolbar: bool=?,
  // Pagination configuration
  ~pagination: paginationConfig=?,
  // Callback when page changes
  ~onPageChange: int => unit=?,
  // Callback when page size changes
  ~onPageSizeChange: int => unit=?,
  // Callback when sorting changes
  ~onSortChange: sortConfig => unit=?,
  // Callback when filters change
  ~onFilterChange: Js.Dict.t<Js.Json.t> => unit=?,
  // Optional additional class name
  ~className: string=?,
) => React.element = "DataTable"