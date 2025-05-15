open DataTable

module DataTableDemo = {
  type user = {
    id?: int,
    name?: string,
    joinDate?: string,
    number?: string,
    gateway?: string,
    contact?: string,
    status?: string,
    email?: string,
    role?: string,
  }

  let generateData = () => {
    let names = [
      "Jesse Leos", "Jane Smith", "Robert Johnson", "Lisa Brown", "David Miller",
      "Emma Wilson", "Michael Clark", "Sarah Davis", "James Taylor", "Anna White"
    ]
    
    let joinDates = [
      "August 2014", "September 2015", "March 2016", "November 2017", "July 2018",
      "February 2019", "October 2020", "January 2021", "April 2022", "June 2023"
    ]
    
    let statuses = ["Active", "Inactive", "Pending", "Suspended"]
    
    let roles = ["Admin", "User", "Editor", "Viewer", "Manager"]
    
    Belt.Array.makeBy(50, index => {
      let nameIndex = mod(index, Belt.Array.length(names))
      let dateIndex = mod(index, Belt.Array.length(joinDates))
      let statusIndex = mod(index, Belt.Array.length(statuses))
      let roleIndex = mod(index, Belt.Array.length(roles))
      
      {
        id: index + 1,
        name: Belt.Array.getExn(names, nameIndex),
        joinDate: Belt.Array.getExn(joinDates, dateIndex),
        status: Belt.Array.getExn(statuses, statusIndex),
        role: Belt.Array.getExn(roles, roleIndex),
      }
    })
  }

  @react.component
  let make = () => {
    let data = generateData()
    
    let columns = [
      {
        field: "id",
        header: "ID",
        isSortable: true,
      },
      {
        field: "name",
        header: "Name",
        isSortable: true,
      },
      {
        field: "joinDate",
        header: "Join Date",
        isSortable: true,
      },
      {
        field: "status",
        header: "Status",
        isSortable: true,
        renderCell: (value, row) => {
          let status = Js.Json.decodeString(value)->Belt.Option.getWithDefault("")
          let bgColor = switch status {
          | "Active" => "bg-green-100 text-green-800"
          | "Inactive" => "bg-gray-100 text-gray-800"
          | "Pending" => "bg-yellow-100 text-yellow-800"
          | "Suspended" => "bg-red-100 text-red-800"
          | _ => "bg-gray-100 text-gray-800"
          }
          
          <span className={`px-2 py-1 rounded-full text-xs font-medium ${bgColor}`}>
            {React.string(status)}
          </span>
        }
      },
      {
        field: "role",
        header: "Role",
        isSortable: true,
      },
    ]
    
    let pagination = {
      currentPage: 1,
      pageSize: 10,
      totalRows: Belt.Array.length(data),
      pageSizeOptions: [5, 10, 20, 50],
    }
    
    <div>
      <h1 className="text-2xl font-bold mb-6"> {React.string("DataTable Demo")} </h1>
      
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {React.string("Basic DataTable")} </h2>
        <DataTable
          data
          columns
          idField="id"
          title="Users"
          description="A list of all users in the system"
          isStriped=true
          isHoverable=true
          enableFiltering=true
          enableColumnManager=true
          showToolbar=true
          pagination
        />
      </div>
    </div>
  }
}