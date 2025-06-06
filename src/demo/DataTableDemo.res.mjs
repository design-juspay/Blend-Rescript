// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Belt_Array from "rescript/lib/es6/belt_Array.js";
import * as Caml_int32 from "rescript/lib/es6/caml_int32.js";
import * as JsxRuntime from "react/jsx-runtime";
import * as DesignSystem from "@vinitjuspay/design-system";

function generateData() {
  var names = [
    "Jesse Leos",
    "Jane Smith",
    "Robert Johnson",
    "Lisa Brown",
    "David Miller",
    "Emma Wilson",
    "Michael Clark",
    "Sarah Davis",
    "James Taylor",
    "Anna White"
  ];
  var joinDates = [
    "August 2014",
    "September 2015",
    "March 2016",
    "November 2017",
    "July 2018",
    "February 2019",
    "October 2020",
    "January 2021",
    "April 2022",
    "June 2023"
  ];
  var statuses = [
    "Active",
    "Inactive",
    "Pending",
    "Suspended"
  ];
  var roles = [
    "Admin",
    "User",
    "Editor",
    "Viewer",
    "Manager"
  ];
  return Belt_Array.makeBy(50, (function (index) {
                var nameIndex = Caml_int32.mod_(index, names.length);
                var dateIndex = Caml_int32.mod_(index, joinDates.length);
                var statusIndex = Caml_int32.mod_(index, statuses.length);
                var roleIndex = Caml_int32.mod_(index, roles.length);
                return {
                        id: index + 1 | 0,
                        name: Belt_Array.getExn(names, nameIndex),
                        joinDate: Belt_Array.getExn(joinDates, dateIndex),
                        status: Belt_Array.getExn(statuses, statusIndex),
                        role: Belt_Array.getExn(roles, roleIndex)
                      };
              }));
}

function DataTableDemo$DataTableDemo(props) {
  var data = generateData();
  var columns = [
    {
      field: "id",
      header: "ID",
      isSortable: true
    },
    {
      field: "name",
      header: "Name",
      isSortable: true
    },
    {
      field: "joinDate",
      header: "Join Date",
      isSortable: true
    },
    {
      field: "status",
      header: "Status",
      isSortable: true
    },
    {
      field: "role",
      header: "Role",
      isSortable: true
    }
  ];
  var pagination_totalRows = data.length;
  var pagination_pageSizeOptions = [
    5,
    10,
    20,
    50
  ];
  var pagination = {
    currentPage: 1,
    pageSize: 10,
    totalRows: pagination_totalRows,
    pageSizeOptions: pagination_pageSizeOptions
  };
  return JsxRuntime.jsxs("div", {
              children: [
                JsxRuntime.jsx("h1", {
                      children: "DataTable Demo",
                      className: "text-2xl font-bold mb-6"
                    }),
                JsxRuntime.jsxs("div", {
                      children: [
                        JsxRuntime.jsx("h2", {
                              children: "Basic DataTable",
                              className: "text-xl font-semibold mb-4"
                            }),
                        JsxRuntime.jsx(DesignSystem.DataTable, {
                              data: data,
                              columns: columns,
                              idField: "id",
                              title: "Users",
                              description: "A list of all users in the system",
                              isStriped: true,
                              isHoverable: true,
                              enableFiltering: true,
                              enableColumnManager: true,
                              showToolbar: true,
                              pagination: pagination
                            })
                      ],
                      className: "mb-8"
                    })
              ]
            });
}

var DataTableDemo = {
  generateData: generateData,
  make: DataTableDemo$DataTableDemo
};

export {
  DataTableDemo ,
}
/* react/jsx-runtime Not a pure module */
