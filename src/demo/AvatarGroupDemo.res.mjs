// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as JsxRuntime from "react/jsx-runtime";
import * as DesignSystem from "@vinitjuspay/design-system";

function AvatarGroupDemo$AvatarGroupDemo(props) {
  var avatarData = [
    {
      id: "1",
      src: "https://i.pravatar.cc/150?img=1",
      alt: "User 1",
      fallback: "U1",
      size: undefined,
      shape: undefined,
      online: true
    },
    {
      id: "2",
      src: "https://i.pravatar.cc/150?img=2",
      alt: "User 2",
      fallback: "U2",
      size: undefined,
      shape: undefined,
      online: false
    },
    {
      id: "3",
      src: "https://i.pravatar.cc/150?img=3",
      alt: "User 3",
      fallback: "U3",
      size: undefined,
      shape: undefined,
      online: true
    },
    {
      id: "4",
      src: undefined,
      alt: "User 4",
      fallback: "U4",
      size: undefined,
      shape: undefined,
      online: undefined
    },
    {
      id: "5",
      src: "https://i.pravatar.cc/150?img=5",
      alt: "User 5",
      fallback: "U5",
      size: undefined,
      shape: undefined,
      online: undefined
    },
    {
      id: "6",
      src: "https://i.pravatar.cc/150?img=6",
      alt: "User 6",
      fallback: "U6",
      size: undefined,
      shape: undefined,
      online: undefined
    }
  ];
  var match = React.useState(function () {
        return [];
      });
  var setSelectedAvatarIds = match[1];
  var selectedAvatarIds = match[0];
  return JsxRuntime.jsxs("div", {
              children: [
                JsxRuntime.jsx("h1", {
                      children: "Avatar Group Demo",
                      className: "text-2xl font-bold mb-6 mt-12"
                    }),
                JsxRuntime.jsxs("div", {
                      children: [
                        JsxRuntime.jsx("h2", {
                              children: "Basic Avatar Group",
                              className: "text-xl font-semibold mb-4"
                            }),
                        JsxRuntime.jsx("div", {
                              children: JsxRuntime.jsx(DesignSystem.AvatarGroup, {
                                    avatars: avatarData
                                  }),
                              className: "flex flex-col gap-6"
                            })
                      ],
                      className: "mb-8"
                    }),
                JsxRuntime.jsxs("div", {
                      children: [
                        JsxRuntime.jsx("h2", {
                              children: "Avatar Group Sizes",
                              className: "text-xl font-semibold mb-4"
                            }),
                        JsxRuntime.jsxs("div", {
                              children: [
                                JsxRuntime.jsxs("div", {
                                      children: [
                                        JsxRuntime.jsx("div", {
                                              children: "Size: small",
                                              className: "mb-2"
                                            }),
                                        JsxRuntime.jsx(DesignSystem.AvatarGroup, {
                                              avatars: avatarData,
                                              size: "sm"
                                            })
                                      ]
                                    }),
                                JsxRuntime.jsxs("div", {
                                      children: [
                                        JsxRuntime.jsx("div", {
                                              children: "Size: regular",
                                              className: "mb-2"
                                            }),
                                        JsxRuntime.jsx(DesignSystem.AvatarGroup, {
                                              avatars: avatarData,
                                              size: "regular"
                                            })
                                      ]
                                    }),
                                JsxRuntime.jsxs("div", {
                                      children: [
                                        JsxRuntime.jsx("div", {
                                              children: "Size: medium",
                                              className: "mb-2"
                                            }),
                                        JsxRuntime.jsx(DesignSystem.AvatarGroup, {
                                              avatars: avatarData,
                                              size: "md"
                                            })
                                      ]
                                    }),
                                JsxRuntime.jsxs("div", {
                                      children: [
                                        JsxRuntime.jsx("div", {
                                              children: "Size: large",
                                              className: "mb-2"
                                            }),
                                        JsxRuntime.jsx(DesignSystem.AvatarGroup, {
                                              avatars: avatarData,
                                              size: "lg"
                                            })
                                      ]
                                    }),
                                JsxRuntime.jsxs("div", {
                                      children: [
                                        JsxRuntime.jsx("div", {
                                              children: "Size: extra large",
                                              className: "mb-2"
                                            }),
                                        JsxRuntime.jsx(DesignSystem.AvatarGroup, {
                                              avatars: avatarData,
                                              size: "xl"
                                            })
                                      ]
                                    })
                              ],
                              className: "flex flex-col gap-6"
                            })
                      ],
                      className: "mb-8"
                    }),
                JsxRuntime.jsxs("div", {
                      children: [
                        JsxRuntime.jsx("h2", {
                              children: "Max Count Variations",
                              className: "text-xl font-semibold mb-4"
                            }),
                        JsxRuntime.jsxs("div", {
                              children: [
                                JsxRuntime.jsxs("div", {
                                      children: [
                                        JsxRuntime.jsx("div", {
                                              children: "Max Count: 3",
                                              className: "mb-2"
                                            }),
                                        JsxRuntime.jsx(DesignSystem.AvatarGroup, {
                                              avatars: avatarData,
                                              maxCount: 3
                                            })
                                      ]
                                    }),
                                JsxRuntime.jsxs("div", {
                                      children: [
                                        JsxRuntime.jsx("div", {
                                              children: "Max Count: 4",
                                              className: "mb-2"
                                            }),
                                        JsxRuntime.jsx(DesignSystem.AvatarGroup, {
                                              avatars: avatarData,
                                              maxCount: 4
                                            })
                                      ]
                                    }),
                                JsxRuntime.jsxs("div", {
                                      children: [
                                        JsxRuntime.jsx("div", {
                                              children: "Max Count: 5",
                                              className: "mb-2"
                                            }),
                                        JsxRuntime.jsx(DesignSystem.AvatarGroup, {
                                              avatars: avatarData,
                                              maxCount: 5
                                            })
                                      ]
                                    })
                              ],
                              className: "flex flex-col gap-6"
                            })
                      ],
                      className: "mb-8"
                    }),
                JsxRuntime.jsxs("div", {
                      children: [
                        JsxRuntime.jsx("h2", {
                              children: "Selection Functionality",
                              className: "text-xl font-semibold mb-4"
                            }),
                        JsxRuntime.jsx("div", {
                              children: JsxRuntime.jsxs("div", {
                                    children: [
                                      JsxRuntime.jsx("div", {
                                            children: "Selectable Avatars",
                                            className: "mb-2"
                                          }),
                                      JsxRuntime.jsx(DesignSystem.AvatarGroup, {
                                            avatars: avatarData,
                                            selectedAvatarIds: selectedAvatarIds,
                                            onSelectionChange: (function (ids) {
                                                setSelectedAvatarIds(function (param) {
                                                      return ids;
                                                    });
                                              })
                                          }),
                                      JsxRuntime.jsx("div", {
                                            children: "Selected IDs: " + selectedAvatarIds.join(", "),
                                            className: "mt-2"
                                          })
                                    ]
                                  }),
                              className: "flex flex-col gap-6"
                            })
                      ],
                      className: "mb-8"
                    }),
                JsxRuntime.jsxs("div", {
                      children: [
                        JsxRuntime.jsx("h2", {
                              children: "Edge Cases",
                              className: "text-xl font-semibold mb-4"
                            }),
                        JsxRuntime.jsxs("div", {
                              children: [
                                JsxRuntime.jsxs("div", {
                                      children: [
                                        JsxRuntime.jsx("div", {
                                              children: "Empty Avatar Array",
                                              className: "mb-2"
                                            }),
                                        JsxRuntime.jsx(DesignSystem.AvatarGroup, {
                                              avatars: []
                                            }),
                                        JsxRuntime.jsx("div", {
                                              children: "No avatars to display",
                                              className: "mt-2 text-gray-500 italic"
                                            })
                                      ]
                                    }),
                                JsxRuntime.jsxs("div", {
                                      children: [
                                        JsxRuntime.jsx("div", {
                                              children: "Avatars with Fallbacks Only",
                                              className: "mb-2"
                                            }),
                                        JsxRuntime.jsx(DesignSystem.AvatarGroup, {
                                              avatars: [
                                                {
                                                  id: "1",
                                                  src: undefined,
                                                  alt: "User 1",
                                                  fallback: "U1",
                                                  size: undefined,
                                                  shape: undefined,
                                                  online: undefined
                                                },
                                                {
                                                  id: "2",
                                                  src: undefined,
                                                  alt: "User 2",
                                                  fallback: "U2",
                                                  size: undefined,
                                                  shape: undefined,
                                                  online: undefined
                                                },
                                                {
                                                  id: "3",
                                                  src: undefined,
                                                  alt: "User 3",
                                                  fallback: "U3",
                                                  size: undefined,
                                                  shape: undefined,
                                                  online: undefined
                                                }
                                              ]
                                            })
                                      ]
                                    })
                              ],
                              className: "flex flex-col gap-6"
                            })
                      ],
                      className: "mb-8"
                    })
              ]
            });
}

var AvatarGroupDemo = {
  make: AvatarGroupDemo$AvatarGroupDemo
};

export {
  AvatarGroupDemo ,
}
/* react Not a pure module */
