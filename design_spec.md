# Design Export Context

- Generated at: `2026-03-27T18:36:08.664Z`
- Document ID: `2db3111c-5178-4d8d-b09b-4b494d9ad253`
- Page count: 5

## Original Prompt

```text
Design a modern automotive diagnostic app. Create screens for an OBD2 assistant: a main screen with a text input for DTC code (e.g., P0301) with a code icon, a second input for car model (e.g., Renault Clio) with a car icon, and a blue 'Analyze' button. Include a result screen with three cards titled 'Interpretation', 'Possible Causes', and 'Troubleshooting Steps'. Use a clean glassmorphism style with blue gradients and rounded corners.
```

## Theme (JSON)

```json
{
  "fonts": {
    "primary": "google:Inter",
    "secondary": "google:Inter"
  },
  "colors": {
    "light": {
      "primary": "#2563EB",
      "on_primary": "#FFFFFF",
      "secondary": "#64748B",
      "on_secondary": "#FFFFFF",
      "accent": "#38BDF8",
      "background": "#F8FAFC",
      "surface": "#FFFFFFCC",
      "on_surface": "#0F172A",
      "primary_text": "#1E293B",
      "secondary_text": "#64748B",
      "hint": "#94A3B8",
      "error": "#EF4444",
      "on_error": "#FFFFFF",
      "success": "#22C55E",
      "divider": "#E2E8F0",
      "transparent": "#00000000"
    },
    "dark": {
      "primary": "#3B82F6",
      "on_primary": "#FFFFFF",
      "secondary": "#94A3B8",
      "on_secondary": "#0F172A",
      "accent": "#0EA5E9",
      "background": "#020617",
      "surface": "#1E293B99",
      "on_surface": "#F1F5F9",
      "primary_text": "#F8FAFC",
      "secondary_text": "#94A3B8",
      "hint": "#475569",
      "error": "#F87171",
      "on_error": "#FFFFFF",
      "success": "#4ADE80",
      "divider": "#334155",
      "transparent": "#00000000"
    }
  },
  "text_styles": {
    "headline_large": {
      "font": "primary",
      "size": 32,
      "weight": 700,
      "height": 1.2
    },
    "headline_medium": {
      "font": "primary",
      "size": 26,
      "weight": 600,
      "height": 1.25
    },
    "title_large": {
      "font": "primary",
      "size": 22,
      "weight": 600,
      "height": 1.3
    },
    "title_medium": {
      "font": "primary",
      "size": 17,
      "weight": 600,
      "height": 1.4
    },
    "body_large": {
      "font": "secondary",
      "size": 16,
      "weight": 400,
      "height": 1.5
    },
    "body_medium": {
      "font": "secondary",
      "size": 14,
      "weight": 400,
      "height": 1.5
    },
    "body_small": {
      "font": "secondary",
      "size": 12,
      "weight": 400,
      "height": 1.4
    },
    "label_large": {
      "font": "secondary",
      "size": 14,
      "weight": 600,
      "height": 1.3
    },
    "label_medium": {
      "font": "secondary",
      "size": 12,
      "weight": 600,
      "height": 1.3
    },
    "label_small": {
      "font": "secondary",
      "size": 10,
      "weight": 600,
      "height": 1.2
    }
  },
  "spacing": {
    "xs": 4,
    "sm": 8,
    "md": 16,
    "lg": 24,
    "xl": 32
  },
  "radii": {
    "sm": 8,
    "md": 12,
    "lg": 24,
    "full": 9999
  },
  "shadows": {
    "sm": {
      "color": "#0000000D",
      "dx": 0,
      "dy": 1,
      "blur": 2,
      "spread": 0
    },
    "md": {
      "color": "#0000001A",
      "dx": 0,
      "dy": 4,
      "blur": 6,
      "spread": 0
    },
    "lg": {
      "color": "#00000026",
      "dx": 0,
      "dy": 10,
      "blur": 15,
      "spread": -3
    },
    "xl": {
      "color": "#0000004D",
      "dx": 0,
      "dy": 20,
      "blur": 25,
      "spread": -5
    }
  }
}
```

## Pages

### 1. Onboarding

- Frame ID: `012847ef-d4b0-465a-94dc-3613e1b76301`
- Original page prompt: "A welcome page introducing the OBD2 diagnostic capabilities"
- Follow-up prompts: _None_

#### DslDocument (JSON)

```json
{
  "root": {
    "type": "scaffold",
    "properties": {
      "bg": {
        "color": {
          "color": "background"
        }
      },
      "safe_area": {
        "boolVal": {
          "value": true
        }
      }
    },
    "children": [
      {
        "type": "stack",
        "children": [
          {
            "type": "container",
            "properties": {
              "align": {
                "align": {
                  "named": "top_right"
                }
              },
              "width": {
                "px": {
                  "value": 300,
                  "isInfinity": false
                }
              },
              "height": {
                "px": {
                  "value": 300,
                  "isInfinity": false
                }
              },
              "gradient": {
                "gradient": {
                  "type": "GRADIENT_TYPE_RADIAL",
                  "direction": "center",
                  "stops": [
                    {
                      "color": "primary"
                    },
                    {
                      "color": "transparent"
                    }
                  ]
                }
              },
              "opacity": {
                "numberVal": {
                  "value": 0.12
                }
              },
              "transform_rotate": {
                "numberVal": {
                  "value": 15
                }
              }
            },
            "editorId": "68e6ad9e-8d13-409c-b8f9-8f653abfc4c7"
          },
          {
            "type": "container",
            "properties": {
              "align": {
                "align": {
                  "named": "bottom_left"
                }
              },
              "width": {
                "px": {
                  "value": 250,
                  "isInfinity": false
                }
              },
              "height": {
                "px": {
                  "value": 250,
                  "isInfinity": false
                }
              },
              "gradient": {
                "gradient": {
                  "type": "GRADIENT_TYPE_RADIAL",
                  "direction": "center",
                  "stops": [
                    {
                      "color": "accent"
                    },
                    {
                      "color": "transparent"
                    }
                  ]
                }
              },
              "opacity": {
                "numberVal": {
                  "value": 0.08
                }
              }
            },
            "editorId": "f1e956b4-3b16-40b9-ad1a-5d1877c75f94"
          },
          {
            "type": "column",
            "properties": {
              "scroll": {
                "boolVal": {
                  "value": true
                }
              },
              "padding": {
                "edgeInsets": {
                  "top": 0,
                  "right": 0,
                  "bottom": 120,
                  "left": 0
                }
              }
            },
            "children": [
              {
                "type": "container",
                "properties": {
                  "height": {
                    "px": {
                      "value": 400,
                      "isInfinity": false
                    }
                  },
                  "width": {
                    "px": {
                      "value": "Infinity",
                      "isInfinity": true
                    }
                  },
                  "clip": {
                    "boolVal": {
                      "value": true
                    }
                  }
                },
                "children": [
                  {
                    "type": "stack",
                    "children": [
                      {
                        "type": "image",
                        "properties": {
                          "source_desc": {
                            "imageSource": {
                              "type": "IMAGE_SOURCE_TYPE_URL",
                              "value": "https://dimg.dreamflow.cloud/v1/image/modern+car+dashboard+with+digital+diagnostic+interface+blue+glowing+lights"
                            }
                          },
                          "fit": {
                            "stringVal": {
                              "value": "cover"
                            }
                          },
                          "width": {
                            "px": {
                              "value": "Infinity",
                              "isInfinity": true
                            }
                          },
                          "height": {
                            "px": {
                              "value": 400,
                              "isInfinity": false
                            }
                          }
                        },
                        "editorId": "f3b6e32a-f5d2-43b0-a17f-75b1bcef3554"
                      },
                      {
                        "type": "container",
                        "properties": {
                          "gradient": {
                            "gradient": {
                              "type": "GRADIENT_TYPE_LINEAR",
                              "direction": "to_bottom",
                              "stops": [
                                {
                                  "color": "transparent",
                                  "position": 0
                                },
                                {
                                  "color": "background",
                                  "position": 100
                                }
                              ]
                            }
                          },
                          "width": {
                            "px": {
                              "value": "Infinity",
                              "isInfinity": true
                            }
                          },
                          "height": {
                            "px": {
                              "value": 400,
                              "isInfinity": false
                            }
                          }
                        },
                        "editorId": "d471c36e-721d-46a3-ad1d-2d3e93858235"
                      },
                      {
                        "type": "container",
                        "properties": {
                          "align": {
                            "align": {
                              "named": "bottom_center"
                            }
                          },
                          "padding": {
                            "edgeInsets": {
                              "top": 0,
                              "right": 0,
                              "bottom": 0,
                              "left": 0,
                              "token": "lg"
                            }
                          }
                        },
                        "children": [
                          {
                            "type": "column",
                            "properties": {
                              "spacing": {
                                "stringVal": {
                                  "value": "sm"
                                }
                              }
                            },
                            "children": [
                              {
                                "type": "text",
                                "properties": {
                                  "content": {
                                    "stringVal": {
                                      "value": "AutoScan Pro"
                                    }
                                  },
                                  "style": {
                                    "textStyle": {
                                      "styleName": "label_large"
                                    }
                                  },
                                  "color": {
                                    "color": {
                                      "color": "primary"
                                    }
                                  },
                                  "font_weight": {
                                    "numberVal": {
                                      "value": 700
                                    }
                                  }
                                },
                                "editorId": "9f2a15e0-5f5f-483c-a373-fe903ba4604a"
                              },
                              {
                                "type": "text",
                                "properties": {
                                  "content": {
                                    "stringVal": {
                                      "value": "Your AI-Powered OBD2 Assistant"
                                    }
                                  },
                                  "style": {
                                    "textStyle": {
                                      "styleName": "headline_medium"
                                    }
                                  },
                                  "color": {
                                    "color": {
                                      "color": "primary_text"
                                    }
                                  },
                                  "text_align": {
                                    "align": {
                                      "named": "center"
                                    }
                                  },
                                  "font_weight": {
                                    "numberVal": {
                                      "value": 800
                                    }
                                  }
                                },
                                "editorId": "714824f6-696c-4abb-8fda-f7b178a15f7e"
                              }
                            ],
                            "editorId": "9a496082-ef22-41b8-8b75-12e9e80faca4"
                          }
                        ],
                        "editorId": "c22c0aeb-ef1a-4870-b24f-a980596a3db3"
                      }
                    ],
                    "editorId": "435ef6d8-86c2-4a0f-a6b7-7cd699ebc942"
                  }
                ],
                "editorId": "f1990074-f960-4c30-bcf4-bfe9bf4bda60"
              },
              {
                "type": "column",
                "properties": {
                  "padding": {
                    "edgeInsets": {
                      "top": 0,
                      "right": 0,
                      "bottom": 0,
                      "left": 0,
                      "token": "lg"
                    }
                  },
                  "spacing": {
                    "stringVal": {
                      "value": "xl"
                    }
                  },
                  "cross_align": {
                    "align": {
                      "named": "stretch"
                    }
                  }
                },
                "children": [
                  {
                    "type": "column",
                    "properties": {
                      "spacing": {
                        "stringVal": {
                          "value": "lg"
                        }
                      }
                    },
                    "children": [
                      {
                        "type": "@onboarding_feature",
                        "properties": {
                          "icon": {
                            "stringVal": {
                              "value": "qr_code_scanner_rounded"
                            }
                          },
                          "title": {
                            "stringVal": {
                              "value": "Instant DTC Analysis"
                            }
                          },
                          "description": {
                            "stringVal": {
                              "value": "Scan or enter trouble codes to get human-readable interpretations instantly."
                            }
                          }
                        },
                        "editorId": "66b95351-4cc0-46df-8c60-36bbdbb278fd"
                      },
                      {
                        "type": "@onboarding_feature",
                        "properties": {
                          "icon": {
                            "stringVal": {
                              "value": "settings_input_component_rounded"
                            }
                          },
                          "title": {
                            "stringVal": {
                              "value": "Smart Troubleshooting"
                            }
                          },
                          "description": {
                            "stringVal": {
                              "value": "Step-by-step repair guides tailored to your specific vehicle model."
                            }
                          }
                        },
                        "editorId": "f4c17fbd-5972-4a1a-91e8-150c717a7659"
                      },
                      {
                        "type": "@onboarding_feature",
                        "properties": {
                          "icon": {
                            "stringVal": {
                              "value": "analytics_rounded"
                            }
                          },
                          "title": {
                            "stringVal": {
                              "value": "Real-time Monitoring"
                            }
                          },
                          "description": {
                            "stringVal": {
                              "value": "Track engine performance and sensor data via live Bluetooth connection."
                            }
                          }
                        },
                        "editorId": "e9dfcd1d-d55c-4f84-a58c-dfbc227b05aa"
                      }
                    ],
                    "editorId": "776b2acf-ca34-49cd-b70e-b7f14cb74efe"
                  },
                  {
                    "type": "container",
                    "properties": {
                      "bg": {
                        "color": {
                          "color": "surface"
                        }
                      },
                      "backdrop_blur": {
                        "numberVal": {
                          "value": 15
                        }
                      },
                      "radius": {
                        "radius": {
                          "topLeft": 0,
                          "topRight": 0,
                          "bottomLeft": 0,
                          "bottomRight": 0,
                          "token": "lg"
                        }
                      },
                      "border": {
                        "border": {
                          "width": 1,
                          "color": "divider"
                        }
                      },
                      "padding": {
                        "edgeInsets": {
                          "top": 0,
                          "right": 0,
                          "bottom": 0,
                          "left": 0,
                          "token": "lg"
                        }
                      },
                      "shadow": {
                        "stringVal": {
                          "value": "sm"
                        }
                      }
                    },
                    "children": [
                      {
                        "type": "row",
                        "properties": {
                          "spacing": {
                            "stringVal": {
                              "value": "md"
                            }
                          }
                        },
                        "children": [
                          {
                            "type": "icon",
                            "properties": {
                              "name": {
                                "icon": {
                                  "name": "verified_user_rounded"
                                }
                              },
                              "color": {
                                "color": {
                                  "color": "on_surface"
                                }
                              },
                              "size": {
                                "numberVal": {
                                  "value": 32
                                }
                              }
                            },
                            "editorId": "8dfa2cdc-563c-4d7e-b7cc-42afdd13b145"
                          },
                          {
                            "type": "expanded",
                            "children": [
                              {
                                "type": "column",
                                "properties": {
                                  "cross_align": {
                                    "align": {
                                      "named": "start"
                                    }
                                  },
                                  "spacing": {
                                    "stringVal": {
                                      "value": "xs"
                                    }
                                  }
                                },
                                "children": [
                                  {
                                    "type": "text",
                                    "properties": {
                                      "content": {
                                        "stringVal": {
                                          "value": "Professional Grade"
                                        }
                                      },
                                      "style": {
                                        "textStyle": {
                                          "styleName": "title_small"
                                        }
                                      },
                                      "color": {
                                        "color": {
                                          "color": "primary_text"
                                        }
                                      }
                                    },
                                    "editorId": "6e073684-d58a-4351-adfd-22aa28861f06"
                                  },
                                  {
                                    "type": "text",
                                    "properties": {
                                      "content": {
                                        "stringVal": {
                                          "value": "Supports over 20,000+ manufacturer specific codes and standard OBD2 protocols."
                                        }
                                      },
                                      "style": {
                                        "textStyle": {
                                          "styleName": "body_small"
                                        }
                                      },
                                      "color": {
                                        "color": {
                                          "color": "secondary_text"
                                        }
                                      }
                                    },
                                    "editorId": "72997c5e-a492-4861-9fd1-35529bcfe89c"
                                  }
                                ],
                                "editorId": "b508a6ef-fbe9-410c-88ef-fd3e6b583654"
                              }
                            ],
                            "editorId": "66ae9b9b-1122-42e4-b2f7-09ecbdbd6740"
                          }
                        ],
                        "editorId": "8f639314-b21d-4bb4-8fd4-cbabfa77c90a"
                      }
                    ],
                    "editorId": "4a62648d-cdbb-407b-bceb-a22dd7aa2ddc"
                  }
                ],
                "editorId": "21db0585-21ce-4f7b-b0c1-c23b216e830c"
              }
            ],
            "editorId": "7260dcba-45d8-473c-b050-03dba7775e24"
          },
          {
            "type": "container",
            "properties": {
              "align": {
                "align": {
                  "named": "bottom_center"
                }
              },
              "height": {
                "px": {
                  "value": 160,
                  "isInfinity": false
                }
              },
              "gradient": {
                "gradient": {
                  "type": "GRADIENT_TYPE_LINEAR",
                  "direction": "to_top",
                  "stops": [
                    {
                      "color": "background",
                      "position": 80
                    },
                    {
                      "color": "transparent",
                      "position": 0
                    }
                  ]
                }
              },
              "padding": {
                "edgeInsets": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0,
                  "token": "lg"
                }
              }
            },
            "children": [
              {
                "type": "column",
                "properties": {
                  "main_size": {
                    "stringVal": {
                      "value": "min"
                    }
                  },
                  "spacing": {
                    "stringVal": {
                      "value": "lg"
                    }
                  }
                },
                "children": [
                  {
                    "type": "row",
                    "properties": {
                      "align": {
                        "align": {
                          "named": "center"
                        }
                      }
                    },
                    "children": [
                      {
                        "type": "@indicator_dot",
                        "properties": {
                          "active": {
                            "boolVal": {
                              "value": true
                            }
                          }
                        },
                        "editorId": "717e1db3-6884-4401-a120-15a55bf390f0"
                      },
                      {
                        "type": "@indicator_dot",
                        "properties": {
                          "active": {
                            "boolVal": {
                              "value": false
                            }
                          }
                        },
                        "editorId": "92f58a5a-e48b-4dfb-93ec-387003ab681e"
                      },
                      {
                        "type": "@indicator_dot",
                        "properties": {
                          "active": {
                            "boolVal": {
                              "value": false
                            }
                          }
                        },
                        "editorId": "577ef078-41eb-4ad4-9992-7107998022a3"
                      }
                    ],
                    "editorId": "1aa33bd8-5a0d-4864-aa18-c0c64071399b"
                  },
                  {
                    "type": "row",
                    "properties": {
                      "spacing": {
                        "stringVal": {
                          "value": "md"
                        }
                      }
                    },
                    "children": [
                      {
                        "type": "expanded",
                        "children": [
                          {
                            "type": "@std.button",
                            "properties": {
                              "content": {
                                "stringVal": {
                                  "value": "Get Started"
                                }
                              },
                              "variant": {
                                "stringVal": {
                                  "value": "primary"
                                }
                              },
                              "size": {
                                "stringVal": {
                                  "value": "large"
                                }
                              },
                              "full_width": {
                                "boolVal": {
                                  "value": true
                                }
                              }
                            },
                            "editorId": "0cf9c45b-4aa1-482e-9f82-d6f9a4f0d7b4"
                          }
                        ],
                        "editorId": "831837c2-97d4-4d2e-9146-b06f8ff4ec3a"
                      },
                      {
                        "type": "container",
                        "properties": {
                          "width": {
                            "px": {
                              "value": 64,
                              "isInfinity": false
                            }
                          },
                          "height": {
                            "px": {
                              "value": 56,
                              "isInfinity": false
                            }
                          },
                          "radius": {
                            "radius": {
                              "topLeft": 0,
                              "topRight": 0,
                              "bottomLeft": 0,
                              "bottomRight": 0,
                              "token": "lg"
                            }
                          },
                          "border": {
                            "border": {
                              "width": 1,
                              "color": "divider"
                            }
                          },
                          "bg": {
                            "color": {
                              "color": "surface"
                            }
                          },
                          "align_child": {
                            "align": {
                              "named": "center"
                            }
                          }
                        },
                        "children": [
                          {
                            "type": "icon",
                            "properties": {
                              "name": {
                                "icon": {
                                  "name": "arrow_forward_rounded"
                                }
                              },
                              "color": {
                                "color": {
                                  "color": "primary_text"
                                }
                              }
                            },
                            "editorId": "3ce0a52d-c222-49da-ab01-56a94b9c81d5"
                          }
                        ],
                        "editorId": "5dfe31de-f01a-4dfc-a6a4-3a3c6543fd25"
                      }
                    ],
                    "editorId": "783b8060-833d-4962-b943-149690f61596"
                  }
                ],
                "editorId": "468017f5-f4cb-4577-9b46-bf6a264eb479"
              }
            ],
            "editorId": "e9a55871-f549-49e9-b9f6-272e6dac27fb"
          }
        ],
        "editorId": "d9895b67-adfe-4f2a-a83b-22a7244da8e3"
      }
    ],
    "editorId": "d64b69e9-7812-40f6-911e-82f96a0f7b60"
  }
}
```

### 2. DTC Input Screen

- Frame ID: `e360882b-3145-4e78-9c62-ec9e9a0f0eb4`
- Original page prompt: "Main screen with text inputs for DTC code and car model with icons and a blue analyze button"
- Follow-up prompts: _None_

#### DslDocument (JSON)

```json
{
  "root": {
    "type": "scaffold",
    "properties": {
      "bg": {
        "color": {
          "color": "background"
        }
      },
      "safe_area": {
        "boolVal": {
          "value": true
        }
      }
    },
    "children": [
      {
        "type": "stack",
        "children": [
          {
            "type": "container",
            "properties": {
              "align": {
                "align": {
                  "named": "top_right"
                }
              },
              "width": {
                "px": {
                  "value": 300,
                  "isInfinity": false
                }
              },
              "height": {
                "px": {
                  "value": 300,
                  "isInfinity": false
                }
              },
              "gradient": {
                "gradient": {
                  "type": "GRADIENT_TYPE_RADIAL",
                  "direction": "center",
                  "stops": [
                    {
                      "color": "primary"
                    },
                    {
                      "color": "transparent"
                    }
                  ]
                }
              },
              "opacity": {
                "numberVal": {
                  "value": 0.15
                }
              },
              "transform_rotate": {
                "numberVal": {
                  "value": 15
                }
              }
            },
            "editorId": "b956d5fd-9fc7-4c95-892a-8126dfebad8c"
          },
          {
            "type": "container",
            "properties": {
              "align": {
                "align": {
                  "named": "bottom_left"
                }
              },
              "width": {
                "px": {
                  "value": 250,
                  "isInfinity": false
                }
              },
              "height": {
                "px": {
                  "value": 250,
                  "isInfinity": false
                }
              },
              "gradient": {
                "gradient": {
                  "type": "GRADIENT_TYPE_RADIAL",
                  "direction": "center",
                  "stops": [
                    {
                      "color": "accent"
                    },
                    {
                      "color": "transparent"
                    }
                  ]
                }
              },
              "opacity": {
                "numberVal": {
                  "value": 0.1
                }
              }
            },
            "editorId": "bdabbe25-1a19-4eeb-9b40-ea932dff3fd7"
          },
          {
            "type": "column",
            "properties": {
              "scroll": {
                "boolVal": {
                  "value": true
                }
              },
              "padding": {
                "edgeInsets": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0,
                  "token": "lg"
                }
              },
              "spacing": {
                "stringVal": {
                  "value": "xl"
                }
              }
            },
            "children": [
              {
                "type": "column",
                "properties": {
                  "cross_align": {
                    "align": {
                      "named": "start"
                    }
                  },
                  "spacing": {
                    "stringVal": {
                      "value": "xs"
                    }
                  }
                },
                "children": [
                  {
                    "type": "row",
                    "properties": {
                      "spacing": {
                        "stringVal": {
                          "value": "sm"
                        }
                      }
                    },
                    "children": [
                      {
                        "type": "icon",
                        "properties": {
                          "name": {
                            "icon": {
                              "name": "directions_car_filled_rounded"
                            }
                          },
                          "color": {
                            "color": {
                              "color": "primary"
                            }
                          },
                          "size": {
                            "numberVal": {
                              "value": 32
                            }
                          }
                        },
                        "editorId": "a69c210d-ee9f-4a59-80c9-9556251a49b0"
                      },
                      {
                        "type": "text",
                        "properties": {
                          "content": {
                            "stringVal": {
                              "value": "AutoScan Pro"
                            }
                          },
                          "style": {
                            "textStyle": {
                              "styleName": "headline_medium"
                            }
                          },
                          "color": {
                            "color": {
                              "color": "primary_text"
                            }
                          }
                        },
                        "editorId": "7199364f-cc30-4233-b45d-5f1e14edda9f"
                      }
                    ],
                    "editorId": "41dd8ce6-3895-484f-a120-6513fd66e525"
                  },
                  {
                    "type": "text",
                    "properties": {
                      "content": {
                        "stringVal": {
                          "value": "Intelligent OBD2 Diagnostics"
                        }
                      },
                      "style": {
                        "textStyle": {
                          "styleName": "body_medium"
                        }
                      },
                      "color": {
                        "color": {
                          "color": "secondary_text"
                        }
                      }
                    },
                    "editorId": "7c90488b-d619-4050-93ec-9648747c53c7"
                  }
                ],
                "editorId": "6af48053-c295-4f6b-af7c-629470bf0057"
              },
              {
                "type": "@glass_card",
                "properties": {
                  "padding": {
                    "stringVal": {
                      "value": "lg"
                    }
                  },
                  "margin": {
                    "numberVal": {
                      "value": 0
                    }
                  }
                },
                "children": [
                  {
                    "type": "column",
                    "properties": {
                      "spacing": {
                        "stringVal": {
                          "value": "lg"
                        }
                      },
                      "cross_align": {
                        "align": {
                          "named": "stretch"
                        }
                      }
                    },
                    "children": [
                      {
                        "type": "text",
                        "properties": {
                          "content": {
                            "stringVal": {
                              "value": "New Analysis"
                            }
                          },
                          "style": {
                            "textStyle": {
                              "styleName": "title_large"
                            }
                          },
                          "color": {
                            "color": {
                              "color": "primary_text"
                            }
                          }
                        },
                        "editorId": "4a6dbf1b-2811-4af6-beff-16a8193caf44"
                      },
                      {
                        "type": "column",
                        "properties": {
                          "spacing": {
                            "stringVal": {
                              "value": "md"
                            }
                          }
                        },
                        "children": [
                          {
                            "type": "@std.textfield",
                            "properties": {
                              "label": {
                                "stringVal": {
                                  "value": "DTC Error Code"
                                }
                              },
                              "hint": {
                                "stringVal": {
                                  "value": "e.g. P0301"
                                }
                              },
                              "leading_icon": {
                                "stringVal": {
                                  "value": "qr_code_scanner_rounded"
                                }
                              },
                              "variant": {
                                "stringVal": {
                                  "value": "filled"
                                }
                              }
                            },
                            "editorId": "85bcea51-df95-4a14-aa78-cfd2c93b0a06"
                          },
                          {
                            "type": "@std.textfield",
                            "properties": {
                              "label": {
                                "stringVal": {
                                  "value": "Vehicle Model"
                                }
                              },
                              "hint": {
                                "stringVal": {
                                  "value": "e.g. Renault Clio"
                                }
                              },
                              "leading_icon": {
                                "stringVal": {
                                  "value": "car_repair_rounded"
                                }
                              },
                              "variant": {
                                "stringVal": {
                                  "value": "filled"
                                }
                              }
                            },
                            "editorId": "e5616fba-ea38-4ba1-a631-3e9d5205e198"
                          }
                        ],
                        "editorId": "5140b27c-531b-47b9-a542-9bfb9bf9a184"
                      },
                      {
                        "type": "@std.button",
                        "properties": {
                          "content": {
                            "stringVal": {
                              "value": "Analyze Vehicle"
                            }
                          },
                          "icon": {
                            "stringVal": {
                              "value": "search_rounded"
                            }
                          },
                          "variant": {
                            "stringVal": {
                              "value": "primary"
                            }
                          },
                          "size": {
                            "stringVal": {
                              "value": "large"
                            }
                          }
                        },
                        "editorId": "fa5b4a8a-ee04-4efe-b0c8-d67d206d9e77"
                      }
                    ],
                    "editorId": "23a53e89-aa27-49cc-8f1d-93ed77e22625"
                  }
                ],
                "editorId": "790dfec6-1870-4e5d-9f5a-947c64a37ebb"
              },
              {
                "type": "column",
                "properties": {
                  "cross_align": {
                    "align": {
                      "named": "stretch"
                    }
                  },
                  "spacing": {
                    "stringVal": {
                      "value": "md"
                    }
                  }
                },
                "children": [
                  {
                    "type": "row",
                    "properties": {
                      "align": {
                        "align": {
                          "named": "space_between"
                        }
                      }
                    },
                    "children": [
                      {
                        "type": "text",
                        "properties": {
                          "content": {
                            "stringVal": {
                              "value": "Diagnostic Results"
                            }
                          },
                          "style": {
                            "textStyle": {
                              "styleName": "title_medium"
                            }
                          },
                          "color": {
                            "color": {
                              "color": "primary_text"
                            }
                          }
                        },
                        "editorId": "b5d076ce-cfa8-4d84-823e-f91fefc7438a"
                      },
                      {
                        "type": "chip",
                        "properties": {
                          "content": {
                            "stringVal": {
                              "value": "P0301 Detected"
                            }
                          },
                          "bg": {
                            "color": {
                              "color": "#EF444422"
                            }
                          },
                          "color": {
                            "color": {
                              "color": "error"
                            }
                          },
                          "radius": {
                            "radius": {
                              "topLeft": 0,
                              "topRight": 0,
                              "bottomLeft": 0,
                              "bottomRight": 0,
                              "token": "md"
                            }
                          }
                        },
                        "editorId": "fa8f1c44-592a-4f5c-935d-71591581610c"
                      }
                    ],
                    "editorId": "6afc8160-e249-47c7-99da-17ff2d5177f8"
                  },
                  {
                    "type": "@diagnostic_result",
                    "properties": {
                      "icon": {
                        "stringVal": {
                          "value": "info_outline"
                        }
                      },
                      "title": {
                        "stringVal": {
                          "value": "Interpretation"
                        }
                      },
                      "description": {
                        "stringVal": {
                          "value": "Cylinder 1 Misfire Detected. This indicates that the engine's computer has detected that the number one cylinder is not firing properly."
                        }
                      },
                      "margin": {
                        "numberVal": {
                          "value": 0
                        }
                      }
                    },
                    "editorId": "71dbc3dc-4c1a-404d-8813-97f17d48da17"
                  },
                  {
                    "type": "@diagnostic_result",
                    "properties": {
                      "icon": {
                        "stringVal": {
                          "value": "list_alt_rounded"
                        }
                      },
                      "title": {
                        "stringVal": {
                          "value": "Possible Causes"
                        }
                      },
                      "description": {
                        "stringVal": {
                          "value": "• Faulty spark plug or ignition coil\n• Vacuum leak\n• Low engine compression\n• Defective fuel injector"
                        }
                      },
                      "margin": {
                        "numberVal": {
                          "value": 0
                        }
                      }
                    },
                    "editorId": "4976bae9-92e7-4216-91d3-34564ae92fc0"
                  },
                  {
                    "type": "@diagnostic_result",
                    "properties": {
                      "icon": {
                        "stringVal": {
                          "value": "build_circle_rounded"
                        }
                      },
                      "title": {
                        "stringVal": {
                          "value": "Troubleshooting Steps"
                        }
                      },
                      "description": {
                        "stringVal": {
                          "value": "1. Inspect ignition coil wiring\n2. Swap coil with cylinder 2 to test\n3. Check spark plug gap and condition\n4. Perform a compression test if misfire persists"
                        }
                      },
                      "margin": {
                        "numberVal": {
                          "value": 0
                        }
                      }
                    },
                    "editorId": "526cd4e4-7d80-4625-8adc-597a9c073000"
                  }
                ],
                "editorId": "62d3d8cf-f877-48ec-9677-88aa8b549b31"
              },
              {
                "type": "row",
                "properties": {
                  "spacing": {
                    "stringVal": {
                      "value": "md"
                    }
                  }
                },
                "children": [
                  {
                    "type": "expanded",
                    "children": [
                      {
                        "type": "@glass_card",
                        "properties": {
                          "padding": {
                            "stringVal": {
                              "value": "md"
                            }
                          },
                          "margin": {
                            "numberVal": {
                              "value": 0
                            }
                          }
                        },
                        "children": [
                          {
                            "type": "column",
                            "properties": {
                              "spacing": {
                                "stringVal": {
                                  "value": "xs"
                                }
                              }
                            },
                            "children": [
                              {
                                "type": "icon",
                                "properties": {
                                  "name": {
                                    "icon": {
                                      "name": "history_rounded"
                                    }
                                  },
                                  "color": {
                                    "color": {
                                      "color": "secondary"
                                    }
                                  },
                                  "size": {
                                    "numberVal": {
                                      "value": 20
                                    }
                                  }
                                },
                                "editorId": "86634fa4-2e18-4da4-89e8-143e66b788b8"
                              },
                              {
                                "type": "text",
                                "properties": {
                                  "content": {
                                    "stringVal": {
                                      "value": "History"
                                    }
                                  },
                                  "style": {
                                    "textStyle": {
                                      "styleName": "label_medium"
                                    }
                                  },
                                  "color": {
                                    "color": {
                                      "color": "primary_text"
                                    }
                                  }
                                },
                                "editorId": "7f6280c9-af2e-4f7a-b954-7797b7267886"
                              }
                            ],
                            "editorId": "08ad5b5e-7f50-4a6b-8e53-ba87db6460d8"
                          }
                        ],
                        "editorId": "9ed43440-38fa-4905-a79f-ad17e71a687d"
                      }
                    ],
                    "editorId": "7a7e100e-7bb8-44be-9a8f-c91adff18a2b"
                  },
                  {
                    "type": "expanded",
                    "children": [
                      {
                        "type": "@glass_card",
                        "properties": {
                          "padding": {
                            "stringVal": {
                              "value": "md"
                            }
                          },
                          "margin": {
                            "numberVal": {
                              "value": 0
                            }
                          }
                        },
                        "children": [
                          {
                            "type": "column",
                            "properties": {
                              "spacing": {
                                "stringVal": {
                                  "value": "xs"
                                }
                              }
                            },
                            "children": [
                              {
                                "type": "icon",
                                "properties": {
                                  "name": {
                                    "icon": {
                                      "name": "bluetooth_searching_rounded"
                                    }
                                  },
                                  "color": {
                                    "color": {
                                      "color": "on_surface"
                                    }
                                  },
                                  "size": {
                                    "numberVal": {
                                      "value": 20
                                    }
                                  }
                                },
                                "editorId": "10adfb8e-6718-4d40-9565-5b5d00a39856"
                              },
                              {
                                "type": "text",
                                "properties": {
                                  "content": {
                                    "stringVal": {
                                      "value": "OBD2 Link"
                                    }
                                  },
                                  "style": {
                                    "textStyle": {
                                      "styleName": "label_medium"
                                    }
                                  },
                                  "color": {
                                    "color": {
                                      "color": "primary_text"
                                    }
                                  }
                                },
                                "editorId": "18d3c11d-5cf8-4f00-a525-1e50549a1c04"
                              }
                            ],
                            "editorId": "35895729-72e4-4fa3-ae81-4e57a5ec7b67"
                          }
                        ],
                        "editorId": "71c29cdf-8cde-4482-9dc6-363cada93bca"
                      }
                    ],
                    "editorId": "cd9985fd-1dc0-467e-acda-3a430fb9ea70"
                  },
                  {
                    "type": "expanded",
                    "children": [
                      {
                        "type": "@glass_card",
                        "properties": {
                          "padding": {
                            "stringVal": {
                              "value": "md"
                            }
                          },
                          "margin": {
                            "numberVal": {
                              "value": 0
                            }
                          }
                        },
                        "children": [
                          {
                            "type": "column",
                            "properties": {
                              "spacing": {
                                "stringVal": {
                                  "value": "xs"
                                }
                              }
                            },
                            "children": [
                              {
                                "type": "icon",
                                "properties": {
                                  "name": {
                                    "icon": {
                                      "name": "share_rounded"
                                    }
                                  },
                                  "color": {
                                    "color": {
                                      "color": "primary"
                                    }
                                  },
                                  "size": {
                                    "numberVal": {
                                      "value": 20
                                    }
                                  }
                                },
                                "editorId": "0aa4bb33-298f-4c2d-ad0d-bd01e11ab400"
                              },
                              {
                                "type": "text",
                                "properties": {
                                  "content": {
                                    "stringVal": {
                                      "value": "Report"
                                    }
                                  },
                                  "style": {
                                    "textStyle": {
                                      "styleName": "label_medium"
                                    }
                                  },
                                  "color": {
                                    "color": {
                                      "color": "primary_text"
                                    }
                                  }
                                },
                                "editorId": "dfb07968-2040-4982-b127-75c1e5791653"
                              }
                            ],
                            "editorId": "e443bdf1-8015-4002-8ae9-fbfcda22ea02"
                          }
                        ],
                        "editorId": "c7170dc4-ea32-4e29-85f9-de9ef95cbba0"
                      }
                    ],
                    "editorId": "e8b5e754-3ec8-4c81-9e22-fc66d6d84113"
                  }
                ],
                "editorId": "2d15086a-8ee4-4b75-b58e-b1a5007e0ffe"
              },
              {
                "type": "sizedbox",
                "properties": {
                  "height": {
                    "stringVal": {
                      "value": "lg"
                    }
                  }
                },
                "editorId": "ac10997f-2285-422e-8da1-9673abbee815"
              }
            ],
            "editorId": "3f2f2d57-4591-417c-aba5-4ba6f596025e"
          }
        ],
        "editorId": "b8eea1bc-4576-42a2-b56d-c04e765e4f97"
      }
    ],
    "editorId": "d27a55bd-9dd2-4ebd-bdaf-eedcfddc5143"
  }
}
```

### 3. Analysis Results

- Frame ID: `042c6bf6-00be-4fce-9b90-67dd499b7155`
- Original page prompt: "Result screen with three cards for Interpretation, Possible Causes, and Troubleshooting Steps"
- Follow-up prompts: _None_

#### DslDocument (JSON)

```json
{
  "root": {
    "type": "scaffold",
    "properties": {
      "bg": {
        "color": {
          "color": "background"
        }
      },
      "safe_area_top": {
        "boolVal": {
          "value": true
        }
      }
    },
    "children": [
      {
        "type": "stack",
        "children": [
          {
            "type": "container",
            "properties": {
              "align": {
                "align": {
                  "positional": {
                    "x": -1.2,
                    "y": -0.8
                  }
                }
              },
              "width": {
                "px": {
                  "value": 300,
                  "isInfinity": false
                }
              },
              "height": {
                "px": {
                  "value": 300,
                  "isInfinity": false
                }
              },
              "gradient": {
                "gradient": {
                  "type": "GRADIENT_TYPE_RADIAL",
                  "direction": "center",
                  "stops": [
                    {
                      "color": "#3B82F622"
                    },
                    {
                      "color": "transparent"
                    }
                  ]
                }
              },
              "opacity": {
                "numberVal": {
                  "value": 0.5
                }
              }
            },
            "editorId": "3c3c0205-40d2-45d4-b509-b732599a3f2f"
          },
          {
            "type": "container",
            "properties": {
              "align": {
                "align": {
                  "positional": {
                    "x": 1.5,
                    "y": 0.5
                  }
                }
              },
              "width": {
                "px": {
                  "value": 250,
                  "isInfinity": false
                }
              },
              "height": {
                "px": {
                  "value": 250,
                  "isInfinity": false
                }
              },
              "gradient": {
                "gradient": {
                  "type": "GRADIENT_TYPE_RADIAL",
                  "direction": "center",
                  "stops": [
                    {
                      "color": "#60A5FA15"
                    },
                    {
                      "color": "transparent"
                    }
                  ]
                }
              },
              "opacity": {
                "numberVal": {
                  "value": 0.4
                }
              }
            },
            "editorId": "79d7ad8e-1a33-46b1-82da-b84fb1309ff5"
          },
          {
            "type": "column",
            "properties": {
              "scroll": {
                "boolVal": {
                  "value": true
                }
              },
              "cross_align": {
                "align": {
                  "named": "stretch"
                }
              }
            },
            "children": [
              {
                "type": "@glass_header",
                "properties": {
                  "code": {
                    "stringVal": {
                      "value": "P0301"
                    }
                  },
                  "model": {
                    "stringVal": {
                      "value": "Renault Clio (2018)"
                    }
                  }
                },
                "editorId": "dafa5351-29b0-4631-839f-4f2bc36ffaf0"
              },
              {
                "type": "column",
                "properties": {
                  "padding": {
                    "edgeInsets": {
                      "top": 0,
                      "right": 0,
                      "bottom": 0,
                      "left": 0,
                      "token": "lg"
                    }
                  },
                  "spacing": {
                    "numberVal": {
                      "value": 0
                    }
                  }
                },
                "children": [
                  {
                    "type": "container",
                    "properties": {
                      "bg": {
                        "color": {
                          "color": "#EF444415"
                        }
                      },
                      "radius": {
                        "radius": {
                          "topLeft": 0,
                          "topRight": 0,
                          "bottomLeft": 0,
                          "bottomRight": 0,
                          "token": "md"
                        }
                      },
                      "padding": {
                        "edgeInsets": {
                          "top": 0,
                          "right": 0,
                          "bottom": 0,
                          "left": 0,
                          "token": "md"
                        }
                      },
                      "border": {
                        "border": {
                          "width": 1,
                          "color": "#EF444433"
                        }
                      },
                      "margin": {
                        "edgeInsets": {
                          "top": 0,
                          "right": 0,
                          "bottom": 0,
                          "left": 0,
                          "bottomToken": "lg"
                        }
                      }
                    },
                    "children": [
                      {
                        "type": "row",
                        "properties": {
                          "spacing": {
                            "stringVal": {
                              "value": "md"
                            }
                          }
                        },
                        "children": [
                          {
                            "type": "icon",
                            "properties": {
                              "name": {
                                "icon": {
                                  "name": "warning_amber_rounded"
                                }
                              },
                              "color": {
                                "color": {
                                  "color": "on_primary"
                                }
                              },
                              "size": {
                                "numberVal": {
                                  "value": 20
                                }
                              }
                            },
                            "editorId": "23a13826-8e1e-4c2d-8556-822876f91802"
                          },
                          {
                            "type": "text",
                            "properties": {
                              "content": {
                                "stringVal": {
                                  "value": "Severity: Moderate - Repair Suggested"
                                }
                              },
                              "style": {
                                "textStyle": {
                                  "styleName": "label_large"
                                }
                              },
                              "color": {
                                "color": {
                                  "color": "on_primary"
                                }
                              },
                              "font_weight": {
                                "numberVal": {
                                  "value": 600
                                }
                              }
                            },
                            "editorId": "36cb460d-4372-41eb-80e8-a190bf20f5fa"
                          }
                        ],
                        "editorId": "3124a9e5-2a33-422b-88b9-e0771ac24895"
                      }
                    ],
                    "editorId": "29e23f52-454d-4850-8af4-579527d2e6e8"
                  },
                  {
                    "type": "@analysis_card",
                    "properties": {
                      "title": {
                        "stringVal": {
                          "value": "Interpretation"
                        }
                      },
                      "icon": {
                        "stringVal": {
                          "value": "psychology_rounded"
                        }
                      },
                      "icon_bg": {
                        "color": {
                          "color": "#3B82F615"
                        }
                      },
                      "icon_color": {
                        "stringVal": {
                          "value": "primary"
                        }
                      }
                    },
                    "children": [
                      {
                        "type": "column",
                        "properties": {
                          "spacing": {
                            "stringVal": {
                              "value": "sm"
                            }
                          }
                        },
                        "children": [
                          {
                            "type": "text",
                            "properties": {
                              "content": {
                                "stringVal": {
                                  "value": "A P0301 code means the Engine Control Module (ECM) has detected that cylinder number 1 is not contributing enough power to the crankshaft. This 'misfire' can cause increased emissions, reduced fuel economy, and potential engine damage if ignored."
                                }
                              },
                              "style": {
                                "textStyle": {
                                  "styleName": "body_medium"
                                }
                              },
                              "color": {
                                "color": {
                                  "color": "secondary_text"
                                }
                              },
                              "line_height": {
                                "numberVal": {
                                  "value": 1.5
                                }
                              }
                            },
                            "editorId": "7b8fdc4e-ea0d-494c-b31b-b43ec16d34c3"
                          }
                        ],
                        "editorId": "3ff4b37c-63b8-4ce1-a985-ca37a70af9cd"
                      }
                    ],
                    "editorId": "26c1fcae-b86b-4e3a-93ac-b8463aee2c42"
                  },
                  {
                    "type": "@analysis_card",
                    "properties": {
                      "title": {
                        "stringVal": {
                          "value": "Possible Causes"
                        }
                      },
                      "icon": {
                        "stringVal": {
                          "value": "list_alt_rounded"
                        }
                      },
                      "icon_bg": {
                        "color": {
                          "color": "#3B82F615"
                        }
                      },
                      "icon_color": {
                        "stringVal": {
                          "value": "primary"
                        }
                      }
                    },
                    "children": [
                      {
                        "type": "column",
                        "properties": {
                          "spacing": {
                            "stringVal": {
                              "value": "md"
                            }
                          }
                        },
                        "children": [
                          {
                            "type": "@cause_item",
                            "properties": {
                              "text": {
                                "stringVal": {
                                  "value": "Worn or fouled spark plug in cylinder 1"
                                }
                              }
                            },
                            "editorId": "d586b5b6-5b1a-4277-8e3c-8f4fbe8547ab"
                          },
                          {
                            "type": "@cause_item",
                            "properties": {
                              "text": {
                                "stringVal": {
                                  "value": "Faulty ignition coil pack or plug wire"
                                }
                              }
                            },
                            "editorId": "96a99df2-f24f-4542-9aff-0ec9543fe4b4"
                          },
                          {
                            "type": "@cause_item",
                            "properties": {
                              "text": {
                                "stringVal": {
                                  "value": "Fuel injector failure or blockage"
                                }
                              }
                            },
                            "editorId": "41055774-ed42-418c-bd59-a3ab17d4d16d"
                          },
                          {
                            "type": "@cause_item",
                            "properties": {
                              "text": {
                                "stringVal": {
                                  "value": "Vacuum leak near the intake manifold"
                                }
                              }
                            },
                            "editorId": "443b9356-7fa8-4494-bb3f-3c970a40c00f"
                          },
                          {
                            "type": "@cause_item",
                            "properties": {
                              "text": {
                                "stringVal": {
                                  "value": "Low cylinder compression (mechanical issue)"
                                }
                              }
                            },
                            "editorId": "ed079364-6aa9-41c5-a439-cfa465d51559"
                          }
                        ],
                        "editorId": "426ffbbd-5668-427f-bdaf-2ab0c5740725"
                      }
                    ],
                    "editorId": "158b8d81-a00e-4310-8a2a-58edc67bb98b"
                  },
                  {
                    "type": "@analysis_card",
                    "properties": {
                      "title": {
                        "stringVal": {
                          "value": "Troubleshooting Steps"
                        }
                      },
                      "icon": {
                        "stringVal": {
                          "value": "build_circle_rounded"
                        }
                      },
                      "icon_bg": {
                        "color": {
                          "color": "#3B82F615"
                        }
                      },
                      "icon_color": {
                        "stringVal": {
                          "value": "primary"
                        }
                      }
                    },
                    "children": [
                      {
                        "type": "column",
                        "properties": {
                          "spacing": {
                            "stringVal": {
                              "value": "lg"
                            }
                          }
                        },
                        "children": [
                          {
                            "type": "@step_item",
                            "properties": {
                              "num": {
                                "stringVal": {
                                  "value": "1"
                                }
                              },
                              "text": {
                                "stringVal": {
                                  "value": "Visual Inspection: Check wiring harness and connectors leading to the ignition coil for cylinder 1."
                                }
                              }
                            },
                            "editorId": "2a5a8d4c-f544-4939-8789-dc9095d9472f"
                          },
                          {
                            "type": "@step_item",
                            "properties": {
                              "num": {
                                "stringVal": {
                                  "value": "2"
                                }
                              },
                              "text": {
                                "stringVal": {
                                  "value": "Component Swap: Swap the ignition coil from cylinder 1 to cylinder 2. If the code changes to P0302, the coil is faulty."
                                }
                              }
                            },
                            "editorId": "275432be-76d5-49d2-b71d-69666a1cde62"
                          },
                          {
                            "type": "@step_item",
                            "properties": {
                              "num": {
                                "stringVal": {
                                  "value": "3"
                                }
                              },
                              "text": {
                                "stringVal": {
                                  "value": "Plug Check: Remove and inspect the spark plug for carbon buildup or electrode wear."
                                }
                              }
                            },
                            "editorId": "3559a0be-7734-499e-bf93-946700732319"
                          },
                          {
                            "type": "@step_item",
                            "properties": {
                              "num": {
                                "stringVal": {
                                  "value": "4"
                                }
                              },
                              "text": {
                                "stringVal": {
                                  "value": "Fuel Test: Use a multimeter to check injector resistance or perform a fuel pressure test."
                                }
                              }
                            },
                            "editorId": "fed8f1ef-94d9-490a-b8be-bd9ff4e4ccc8"
                          }
                        ],
                        "editorId": "f6935cb4-8e73-4304-9315-0ad721471f48"
                      }
                    ],
                    "editorId": "cedece5b-6885-47ea-83e9-db1b483dea4d"
                  },
                  {
                    "type": "row",
                    "properties": {
                      "spacing": {
                        "stringVal": {
                          "value": "md"
                        }
                      },
                      "padding": {
                        "edgeInsets": {
                          "top": 0,
                          "right": 0,
                          "bottom": 0,
                          "left": 0,
                          "bottomToken": "xl"
                        }
                      }
                    },
                    "children": [
                      {
                        "type": "expanded",
                        "children": [
                          {
                            "type": "@std.button",
                            "properties": {
                              "content": {
                                "stringVal": {
                                  "value": "Clear DTC Code"
                                }
                              },
                              "variant": {
                                "stringVal": {
                                  "value": "outline"
                                }
                              },
                              "full_width": {
                                "boolVal": {
                                  "value": true
                                }
                              },
                              "icon": {
                                "stringVal": {
                                  "value": "delete_outline_rounded"
                                }
                              }
                            },
                            "editorId": "8c8cda2b-614a-4f89-8eac-2a4cb0f2909a"
                          }
                        ],
                        "editorId": "a553b9b5-fc50-4428-b572-dbd550fbc121"
                      },
                      {
                        "type": "expanded",
                        "children": [
                          {
                            "type": "@std.button",
                            "properties": {
                              "content": {
                                "stringVal": {
                                  "value": "Generate PDF"
                                }
                              },
                              "variant": {
                                "stringVal": {
                                  "value": "primary"
                                }
                              },
                              "full_width": {
                                "boolVal": {
                                  "value": true
                                }
                              },
                              "icon": {
                                "stringVal": {
                                  "value": "picture_as_pdf_rounded"
                                }
                              }
                            },
                            "editorId": "324c6529-e4f2-44da-9805-4bff054c3b4e"
                          }
                        ],
                        "editorId": "b03f0af7-13ac-4fdf-8d6f-6e85f45b7e61"
                      }
                    ],
                    "editorId": "76fbff8a-621d-4e16-b335-985acc9da13e"
                  }
                ],
                "editorId": "991e3933-2669-4471-839a-a598b447f6c7"
              }
            ],
            "editorId": "4a5cdb41-70c5-417c-b28e-015378aa6197"
          },
          {
            "type": "container",
            "properties": {
              "align": {
                "align": {
                  "named": "bottom_right"
                }
              },
              "margin": {
                "edgeInsets": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0,
                  "token": "lg"
                }
              },
              "width": {
                "px": {
                  "value": 64,
                  "isInfinity": false
                }
              },
              "height": {
                "px": {
                  "value": 64,
                  "isInfinity": false
                }
              },
              "bg": {
                "color": {
                  "color": "primary"
                }
              },
              "radius": {
                "radius": {
                  "topLeft": 0,
                  "topRight": 0,
                  "bottomLeft": 0,
                  "bottomRight": 0,
                  "token": "full"
                }
              },
              "shadow": {
                "stringVal": {
                  "value": "lg"
                }
              },
              "align_child": {
                "align": {
                  "named": "center"
                }
              }
            },
            "children": [
              {
                "type": "icon",
                "properties": {
                  "name": {
                    "icon": {
                      "name": "map_rounded"
                    }
                  },
                  "color": {
                    "color": {
                      "color": "on_primary"
                    }
                  },
                  "size": {
                    "numberVal": {
                      "value": 28
                    }
                  }
                },
                "editorId": "16c0788e-d8dd-4546-8e50-a59ced875cf1"
              }
            ],
            "editorId": "ac7eb0db-fef2-4eb6-ae64-375971c35b78"
          }
        ],
        "editorId": "504b7f48-8bb4-4af0-aa58-515239925b79"
      }
    ],
    "editorId": "33d9f1ac-3aff-46ca-ba78-79040a892e03"
  }
}
```

### 4. Scan History

- Frame ID: `49a5542e-6060-4621-ab50-d18fe26d0504`
- Original page prompt: "A list of previous vehicle scans and diagnosed codes"
- Follow-up prompts: _None_

#### DslDocument (JSON)

```json
{
  "root": {
    "type": "scaffold",
    "properties": {
      "bg": {
        "color": {
          "color": "background"
        }
      },
      "safe_area": {
        "boolVal": {
          "value": true
        }
      }
    },
    "children": [
      {
        "type": "stack",
        "children": [
          {
            "type": "container",
            "properties": {
              "align": {
                "align": {
                  "named": "top_right"
                }
              },
              "width": {
                "px": {
                  "value": 300,
                  "isInfinity": false
                }
              },
              "height": {
                "px": {
                  "value": 300,
                  "isInfinity": false
                }
              },
              "gradient": {
                "gradient": {
                  "type": "GRADIENT_TYPE_RADIAL",
                  "direction": "center",
                  "stops": [
                    {
                      "color": "primary"
                    },
                    {
                      "color": "transparent"
                    }
                  ]
                }
              },
              "opacity": {
                "numberVal": {
                  "value": 0.1
                }
              },
              "transform_rotate": {
                "numberVal": {
                  "value": 45
                }
              }
            },
            "editorId": "62239d32-56de-43e6-bfdd-97e076ebf091"
          },
          {
            "type": "container",
            "properties": {
              "align": {
                "align": {
                  "named": "bottom_left"
                }
              },
              "width": {
                "px": {
                  "value": 250,
                  "isInfinity": false
                }
              },
              "height": {
                "px": {
                  "value": 250,
                  "isInfinity": false
                }
              },
              "gradient": {
                "gradient": {
                  "type": "GRADIENT_TYPE_RADIAL",
                  "direction": "center",
                  "stops": [
                    {
                      "color": "accent"
                    },
                    {
                      "color": "transparent"
                    }
                  ]
                }
              },
              "opacity": {
                "numberVal": {
                  "value": 0.08
                }
              }
            },
            "editorId": "fa815c6d-fcbd-4793-a52a-ba38306aa808"
          },
          {
            "type": "column",
            "properties": {
              "scroll": {
                "boolVal": {
                  "value": true
                }
              },
              "padding": {
                "edgeInsets": {
                  "top": 0,
                  "right": 0,
                  "bottom": 0,
                  "left": 0,
                  "token": "lg"
                }
              },
              "spacing": {
                "stringVal": {
                  "value": "lg"
                }
              }
            },
            "children": [
              {
                "type": "row",
                "properties": {
                  "align": {
                    "align": {
                      "named": "space_between"
                    }
                  },
                  "cross_align": {
                    "align": {
                      "named": "center"
                    }
                  }
                },
                "children": [
                  {
                    "type": "column",
                    "properties": {
                      "cross_align": {
                        "align": {
                          "named": "start"
                        }
                      },
                      "spacing": {
                        "numberVal": {
                          "value": 4
                        }
                      }
                    },
                    "children": [
                      {
                        "type": "text",
                        "properties": {
                          "content": {
                            "stringVal": {
                              "value": "Scan History"
                            }
                          },
                          "style": {
                            "textStyle": {
                              "styleName": "headline_medium"
                            }
                          },
                          "color": {
                            "color": {
                              "color": "primary_text"
                            }
                          },
                          "font_weight": {
                            "numberVal": {
                              "value": 800
                            }
                          }
                        },
                        "editorId": "05ba6aa9-4196-4be2-bc1f-7133b00956c2"
                      },
                      {
                        "type": "text",
                        "properties": {
                          "content": {
                            "stringVal": {
                              "value": "24 Total diagnostics performed"
                            }
                          },
                          "style": {
                            "textStyle": {
                              "styleName": "body_small"
                            }
                          },
                          "color": {
                            "color": {
                              "color": "secondary_text"
                            }
                          }
                        },
                        "editorId": "bf3ac336-a953-468f-b633-4bc4c933a7e2"
                      }
                    ],
                    "editorId": "4205a351-1fe9-4a9a-b4ae-63eb9872103b"
                  },
                  {
                    "type": "iconbutton",
                    "properties": {
                      "name": {
                        "icon": {
                          "name": "filter_list_rounded"
                        }
                      },
                      "bg": {
                        "color": {
                          "color": "surface"
                        }
                      },
                      "radius": {
                        "radius": {
                          "topLeft": 0,
                          "topRight": 0,
                          "bottomLeft": 0,
                          "bottomRight": 0,
                          "token": "lg"
                        }
                      },
                      "border": {
                        "border": {
                          "width": 1,
                          "color": "divider"
                        }
                      },
                      "color": {
                        "color": {
                          "color": "primary_text"
                        }
                      }
                    },
                    "editorId": "469b1ee0-6ace-4950-a22a-5bed69802060"
                  }
                ],
                "editorId": "9313ee88-be38-467d-bcd6-43aee404893c"
              },
              {
                "type": "row",
                "properties": {
                  "spacing": {
                    "stringVal": {
                      "value": "md"
                    }
                  }
                },
                "children": [
                  {
                    "type": "@stat_chip",
                    "properties": {
                      "label": {
                        "stringVal": {
                          "value": "Critical"
                        }
                      },
                      "value": {
                        "stringVal": {
                          "value": "3"
                        }
                      },
                      "icon": {
                        "stringVal": {
                          "value": "warning_rounded"
                        }
                      },
                      "color": {
                        "stringVal": {
                          "value": "error"
                        }
                      }
                    },
                    "editorId": "dde3f85d-25be-4443-a6fd-5b03bad6a1f4"
                  },
                  {
                    "type": "@stat_chip",
                    "properties": {
                      "label": {
                        "stringVal": {
                          "value": "Resolved"
                        }
                      },
                      "value": {
                        "stringVal": {
                          "value": "18"
                        }
                      },
                      "icon": {
                        "stringVal": {
                          "value": "check_circle_rounded"
                        }
                      },
                      "color": {
                        "stringVal": {
                          "value": "success"
                        }
                      }
                    },
                    "editorId": "4989346a-a633-46f1-8ce6-3cadf4cf5844"
                  },
                  {
                    "type": "@stat_chip",
                    "properties": {
                      "label": {
                        "stringVal": {
                          "value": "Pending"
                        }
                      },
                      "value": {
                        "stringVal": {
                          "value": "3"
                        }
                      },
                      "icon": {
                        "stringVal": {
                          "value": "schedule_rounded"
                        }
                      },
                      "color": {
                        "stringVal": {
                          "value": "secondary_text"
                        }
                      }
                    },
                    "editorId": "44650c84-eea9-4bf4-a1d5-d2d68f926081"
                  }
                ],
                "editorId": "4886c66d-c491-403f-9288-e6992cd63514"
              },
              {
                "type": "@std.textfield",
                "properties": {
                  "hint": {
                    "stringVal": {
                      "value": "Search by code or vehicle..."
                    }
                  },
                  "leading_icon": {
                    "stringVal": {
                      "value": "search_rounded"
                    }
                  },
                  "variant": {
                    "stringVal": {
                      "value": "filled"
                    }
                  },
                  "radius": {
                    "stringVal": {
                      "value": "xl"
                    }
                  }
                },
                "editorId": "83694652-148c-4428-ab7e-0203b90737a0"
              },
              {
                "type": "column",
                "properties": {
                  "cross_align": {
                    "align": {
                      "named": "stretch"
                    }
                  }
                },
                "children": [
                  {
                    "type": "row",
                    "properties": {
                      "align": {
                        "align": {
                          "named": "space_between"
                        }
                      },
                      "padding": {
                        "edgeInsets": {
                          "top": 0,
                          "right": 0,
                          "bottom": 0,
                          "left": 0,
                          "bottomToken": "sm"
                        }
                      }
                    },
                    "children": [
                      {
                        "type": "text",
                        "properties": {
                          "content": {
                            "stringVal": {
                              "value": "Recent Scans"
                            }
                          },
                          "style": {
                            "textStyle": {
                              "styleName": "title_small"
                            }
                          },
                          "color": {
                            "color": {
                              "color": "secondary_text"
                            }
                          },
                          "font_weight": {
                            "numberVal": {
                              "value": 600
                            }
                          }
                        },
                        "editorId": "c2f6667c-718c-4ed2-be0a-d5cdd264a7c4"
                      },
                      {
                        "type": "text",
                        "properties": {
                          "content": {
                            "stringVal": {
                              "value": "Clear All"
                            }
                          },
                          "style": {
                            "textStyle": {
                              "styleName": "label_large"
                            }
                          },
                          "color": {
                            "color": {
                              "color": "on_surface"
                            }
                          }
                        },
                        "editorId": "d44be54b-cec5-49e3-969b-987728749522"
                      }
                    ],
                    "editorId": "ae5199fa-ec17-4c9b-b8d4-d27da44f9aa1"
                  },
                  {
                    "type": "@scan_history_card",
                    "properties": {
                      "dtc_code": {
                        "stringVal": {
                          "value": "P0301"
                        }
                      },
                      "date": {
                        "stringVal": {
                          "value": "Oct 24, 2023 • 14:20"
                        }
                      },
                      "severity": {
                        "stringVal": {
                          "value": "High"
                        }
                      },
                      "vehicle": {
                        "stringVal": {
                          "value": "Renault Clio 2019"
                        }
                      },
                      "icon": {
                        "stringVal": {
                          "value": "error_outline_rounded"
                        }
                      }
                    },
                    "editorId": "184a1a41-b143-43ca-85b7-636654061be2"
                  },
                  {
                    "type": "@scan_history_card",
                    "properties": {
                      "dtc_code": {
                        "stringVal": {
                          "value": "P0420"
                        }
                      },
                      "date": {
                        "stringVal": {
                          "value": "Oct 20, 2023 • 09:15"
                        }
                      },
                      "severity": {
                        "stringVal": {
                          "value": "Medium"
                        }
                      },
                      "vehicle": {
                        "stringVal": {
                          "value": "Volkswagen Golf VII"
                        }
                      },
                      "icon": {
                        "stringVal": {
                          "value": "warning_amber_rounded"
                        }
                      }
                    },
                    "editorId": "73648e18-2e21-42a6-947d-5656cf51c296"
                  },
                  {
                    "type": "@scan_history_card",
                    "properties": {
                      "dtc_code": {
                        "stringVal": {
                          "value": "B1202"
                        }
                      },
                      "date": {
                        "stringVal": {
                          "value": "Oct 15, 2023 • 18:45"
                        }
                      },
                      "severity": {
                        "stringVal": {
                          "value": "Low"
                        }
                      },
                      "vehicle": {
                        "stringVal": {
                          "value": "Tesla Model 3"
                        }
                      },
                      "icon": {
                        "stringVal": {
                          "value": "info_outline_rounded"
                        }
                      }
                    },
                    "editorId": "07f37ad5-7102-4210-a8d9-5802ab38d887"
                  },
                  {
                    "type": "@scan_history_card",
                    "properties": {
                      "dtc_code": {
                        "stringVal": {
                          "value": "P0171"
                        }
                      },
                      "date": {
                        "stringVal": {
                          "value": "Oct 12, 2023 • 11:30"
                        }
                      },
                      "severity": {
                        "stringVal": {
                          "value": "High"
                        }
                      },
                      "vehicle": {
                        "stringVal": {
                          "value": "BMW 320i"
                        }
                      },
                      "icon": {
                        "stringVal": {
                          "value": "error_outline_rounded"
                        }
                      }
                    },
                    "editorId": "df548396-191b-40b8-b282-318c8e8fc006"
                  },
                  {
                    "type": "@scan_history_card",
                    "properties": {
                      "dtc_code": {
                        "stringVal": {
                          "value": "P0507"
                        }
                      },
                      "date": {
                        "stringVal": {
                          "value": "Oct 08, 2023 • 10:05"
                        }
                      },
                      "severity": {
                        "stringVal": {
                          "value": "Medium"
                        }
                      },
                      "vehicle": {
                        "stringVal": {
                          "value": "Ford Fiesta"
                        }
                      },
                      "icon": {
                        "stringVal": {
                          "value": "warning_amber_rounded"
                        }
                      }
                    },
                    "editorId": "ec308ad8-5e25-42e1-876a-a422700e3864"
                  }
                ],
                "editorId": "ecd9ca81-574f-43d8-b909-d97606b6aa13"
              },
              {
                "type": "sizedbox",
                "properties": {
                  "height": {
                    "stringVal": {
                      "value": "xl"
                    }
                  }
                },
                "editorId": "8d380290-63ee-42d6-8b94-1afd0bf17f94"
              }
            ],
            "editorId": "6385e451-2259-44f6-bde9-f0091a8d8427"
          }
        ],
        "editorId": "a424c21c-a45a-449c-ab86-81943951fb7f"
      },
      {
        "type": "fab",
        "properties": {
          "icon": {
            "icon": {
              "name": "add_rounded"
            }
          },
          "label": {
            "stringVal": {
              "value": "New Analysis"
            }
          },
          "bg": {
            "color": {
              "color": "primary"
            }
          },
          "color": {
            "color": {
              "color": "on_primary"
            }
          },
          "align": {
            "align": {
              "named": "bottom_right"
            }
          }
        },
        "editorId": "8ec58ea3-ccbe-4138-a095-e8afc036666b"
      }
    ],
    "editorId": "2d0b20c4-3181-45ec-a854-0b049058e48d"
  }
}
```

### 5. Settings

- Frame ID: `df0888e9-e2e4-4a77-85cf-90e51b4e3d30`
- Original page prompt: "User profile and app configuration settings"
- Follow-up prompts: _None_

#### DslDocument (JSON)

```json
{
  "root": {
    "type": "scaffold",
    "properties": {
      "bg": {
        "color": {
          "color": "background"
        }
      },
      "safe_area": {
        "boolVal": {
          "value": true
        }
      }
    },
    "children": [
      {
        "type": "stack",
        "children": [
          {
            "type": "container",
            "properties": {
              "align": {
                "align": {
                  "named": "top_right"
                }
              },
              "width": {
                "px": {
                  "value": 300,
                  "isInfinity": false
                }
              },
              "height": {
                "px": {
                  "value": 300,
                  "isInfinity": false
                }
              },
              "gradient": {
                "gradient": {
                  "type": "GRADIENT_TYPE_RADIAL",
                  "direction": "center",
                  "stops": [
                    {
                      "color": "primary"
                    },
                    {
                      "color": "transparent"
                    }
                  ]
                }
              },
              "opacity": {
                "numberVal": {
                  "value": 0.1
                }
              },
              "transform_rotate": {
                "numberVal": {
                  "value": 15
                }
              }
            },
            "editorId": "223faefc-97f6-4196-9c7b-24423a13d4b2"
          },
          {
            "type": "container",
            "properties": {
              "align": {
                "align": {
                  "named": "bottom_left"
                }
              },
              "width": {
                "px": {
                  "value": 250,
                  "isInfinity": false
                }
              },
              "height": {
                "px": {
                  "value": 250,
                  "isInfinity": false
                }
              },
              "gradient": {
                "gradient": {
                  "type": "GRADIENT_TYPE_RADIAL",
                  "direction": "center",
                  "stops": [
                    {
                      "color": "accent"
                    },
                    {
                      "color": "transparent"
                    }
                  ]
                }
              },
              "opacity": {
                "numberVal": {
                  "value": 0.08
                }
              }
            },
            "editorId": "baf2d6b3-2491-47f2-a138-6ed54016c76a"
          },
          {
            "type": "column",
            "properties": {
              "scroll": {
                "boolVal": {
                  "value": true
                }
              },
              "cross_align": {
                "align": {
                  "named": "stretch"
                }
              }
            },
            "children": [
              {
                "type": "container",
                "properties": {
                  "padding": {
                    "edgeInsets": {
                      "top": 0,
                      "right": 0,
                      "bottom": 0,
                      "left": 0,
                      "token": "lg"
                    }
                  },
                  "margin": {
                    "edgeInsets": {
                      "top": 0,
                      "right": 0,
                      "bottom": 0,
                      "left": 0,
                      "bottomToken": "md"
                    }
                  }
                },
                "children": [
                  {
                    "type": "row",
                    "properties": {
                      "align": {
                        "align": {
                          "named": "space_between"
                        }
                      }
                    },
                    "children": [
                      {
                        "type": "column",
                        "properties": {
                          "cross_align": {
                            "align": {
                              "named": "start"
                            }
                          },
                          "spacing": {
                            "stringVal": {
                              "value": "xs"
                            }
                          }
                        },
                        "children": [
                          {
                            "type": "text",
                            "properties": {
                              "content": {
                                "stringVal": {
                                  "value": "Settings"
                                }
                              },
                              "style": {
                                "textStyle": {
                                  "styleName": "headline_medium"
                                }
                              },
                              "color": {
                                "color": {
                                  "color": "primary_text"
                                }
                              },
                              "font_weight": {
                                "numberVal": {
                                  "value": 800
                                }
                              }
                            },
                            "editorId": "b37b28c9-bdd6-4ed3-94cb-8dac60b81b49"
                          },
                          {
                            "type": "text",
                            "properties": {
                              "content": {
                                "stringVal": {
                                  "value": "Configure your AutoScan Pro experience"
                                }
                              },
                              "style": {
                                "textStyle": {
                                  "styleName": "body_medium"
                                }
                              },
                              "color": {
                                "color": {
                                  "color": "secondary_text"
                                }
                              }
                            },
                            "editorId": "af0bbe57-b434-48a0-b31c-dd5b15a0dc1e"
                          }
                        ],
                        "editorId": "aec04d9e-39c1-4d13-93b4-63704371b77d"
                      },
                      {
                        "type": "container",
                        "properties": {
                          "width": {
                            "px": {
                              "value": 48,
                              "isInfinity": false
                            }
                          },
                          "height": {
                            "px": {
                              "value": 48,
                              "isInfinity": false
                            }
                          },
                          "radius": {
                            "radius": {
                              "topLeft": 0,
                              "topRight": 0,
                              "bottomLeft": 0,
                              "bottomRight": 0,
                              "token": "full"
                            }
                          },
                          "border": {
                            "border": {
                              "width": 2,
                              "color": "primary"
                            }
                          },
                          "padding": {
                            "edgeInsets": {
                              "top": 2,
                              "right": 2,
                              "bottom": 2,
                              "left": 2
                            }
                          }
                        },
                        "children": [
                          {
                            "type": "avatar",
                            "properties": {
                              "text": {
                                "stringVal": {
                                  "value": "JD"
                                }
                              },
                              "bg": {
                                "color": {
                                  "color": "surface"
                                }
                              },
                              "color": {
                                "color": {
                                  "color": "primary_text"
                                }
                              },
                              "size": {
                                "numberVal": {
                                  "value": 44
                                }
                              }
                            },
                            "editorId": "257804be-b26b-4532-986f-d32b13d18c6b"
                          }
                        ],
                        "editorId": "61678c9b-cef9-4641-8409-dc4662456a6d"
                      }
                    ],
                    "editorId": "ffbf061d-0240-4da6-85ca-160b0763ab33"
                  }
                ],
                "editorId": "f838ec41-c1d3-4442-86bd-ca9cd2f0f312"
              },
              {
                "type": "container",
                "properties": {
                  "margin": {
                    "edgeInsets": {
                      "top": 0,
                      "right": 0,
                      "bottom": 0,
                      "left": 0,
                      "rightToken": "lg",
                      "bottomToken": "md",
                      "leftToken": "lg"
                    }
                  },
                  "padding": {
                    "edgeInsets": {
                      "top": 0,
                      "right": 0,
                      "bottom": 0,
                      "left": 0,
                      "token": "lg"
                    }
                  },
                  "radius": {
                    "radius": {
                      "topLeft": 0,
                      "topRight": 0,
                      "bottomLeft": 0,
                      "bottomRight": 0,
                      "token": "xl"
                    }
                  },
                  "gradient": {
                    "gradient": {
                      "type": "GRADIENT_TYPE_LINEAR",
                      "direction": "135",
                      "stops": [
                        {
                          "color": "primary"
                        },
                        {
                          "color": "accent"
                        }
                      ]
                    }
                  },
                  "shadow": {
                    "stringVal": {
                      "value": "md"
                    }
                  }
                },
                "children": [
                  {
                    "type": "row",
                    "properties": {
                      "spacing": {
                        "stringVal": {
                          "value": "md"
                        }
                      }
                    },
                    "children": [
                      {
                        "type": "avatar",
                        "properties": {
                          "source_desc": {
                            "imageSource": {
                              "type": "IMAGE_SOURCE_TYPE_URL",
                              "value": "https://dimg.dreamflow.cloud/v1/image/professional+male+portrait"
                            }
                          },
                          "size": {
                            "numberVal": {
                              "value": 60
                            }
                          },
                          "border": {
                            "border": {
                              "width": 2,
                              "color": "#FFFFFF33"
                            }
                          }
                        },
                        "editorId": "ffbf49e7-1e41-471a-be5d-d227a191a4c9"
                      },
                      {
                        "type": "expanded",
                        "children": [
                          {
                            "type": "column",
                            "properties": {
                              "cross_align": {
                                "align": {
                                  "named": "start"
                                }
                              },
                              "spacing": {
                                "numberVal": {
                                  "value": 4
                                }
                              }
                            },
                            "children": [
                              {
                                "type": "text",
                                "properties": {
                                  "content": {
                                    "stringVal": {
                                      "value": "John Doe"
                                    }
                                  },
                                  "style": {
                                    "textStyle": {
                                      "styleName": "title_large"
                                    }
                                  },
                                  "color": {
                                    "color": {
                                      "color": "on_surface"
                                    }
                                  },
                                  "font_weight": {
                                    "numberVal": {
                                      "value": 700
                                    }
                                  }
                                },
                                "editorId": "ceebd83e-249a-435a-a988-bcd94d2a95ae"
                              },
                              {
                                "type": "text",
                                "properties": {
                                  "content": {
                                    "stringVal": {
                                      "value": "Pro Plan • Active until Dec 2024"
                                    }
                                  },
                                  "style": {
                                    "textStyle": {
                                      "styleName": "body_small"
                                    }
                                  },
                                  "color": {
                                    "color": {
                                      "color": "on_surface"
                                    }
                                  }
                                },
                                "editorId": "3d55aea8-3776-473e-bf99-7da5bf653555"
                              }
                            ],
                            "editorId": "b4c415e6-36b8-4367-a571-62c0f65791f4"
                          }
                        ],
                        "editorId": "36001bb5-3310-41c6-a5ab-8f2b9a4d061c"
                      },
                      {
                        "type": "icon",
                        "properties": {
                          "name": {
                            "icon": {
                              "name": "verified_user_rounded"
                            }
                          },
                          "color": {
                            "color": {
                              "color": "on_surface"
                            }
                          },
                          "size": {
                            "numberVal": {
                              "value": 24
                            }
                          }
                        },
                        "editorId": "19ab9b12-1da8-491f-bf69-28c69961df2d"
                      }
                    ],
                    "editorId": "fc050316-8c36-4bf1-9662-dc11d7be7092"
                  }
                ],
                "editorId": "9a2766b5-39ef-4a98-bb8c-47b55f6c8def"
              },
              {
                "type": "column",
                "properties": {
                  "padding": {
                    "edgeInsets": {
                      "top": 0,
                      "right": 0,
                      "bottom": 0,
                      "left": 0,
                      "rightToken": "lg",
                      "bottomToken": "lg",
                      "leftToken": "lg"
                    }
                  },
                  "cross_align": {
                    "align": {
                      "named": "stretch"
                    }
                  }
                },
                "children": [
                  {
                    "type": "@section_header",
                    "properties": {
                      "title": {
                        "stringVal": {
                          "value": "VEHICLE & CONNECTION"
                        }
                      }
                    },
                    "editorId": "d63f1398-e187-4ace-86f5-4a47c522f35d"
                  },
                  {
                    "type": "@glass_setting_tile",
                    "properties": {
                      "icon": {
                        "stringVal": {
                          "value": "bluetooth_connected_rounded"
                        }
                      },
                      "icon_bg": {
                        "color": {
                          "color": "#E3F2FD"
                        }
                      },
                      "icon_color": {
                        "stringVal": {
                          "value": "primary"
                        }
                      },
                      "title": {
                        "stringVal": {
                          "value": "OBD2 Adapter"
                        }
                      },
                      "subtitle": {
                        "stringVal": {
                          "value": "Veepeak OBDCheck BLE+ Connected"
                        }
                      }
                    },
                    "editorId": "17e35bb7-92bc-4d26-94b5-44cfc3d8d8fb"
                  },
                  {
                    "type": "@glass_setting_tile",
                    "properties": {
                      "icon": {
                        "stringVal": {
                          "value": "directions_car_filled_rounded"
                        }
                      },
                      "icon_bg": {
                        "color": {
                          "color": "#F3E5F5"
                        }
                      },
                      "icon_color": {
                        "stringVal": {
                          "value": "secondary"
                        }
                      },
                      "title": {
                        "stringVal": {
                          "value": "My Garage"
                        }
                      },
                      "subtitle": {
                        "stringVal": {
                          "value": "Renault Clio, BMW M3 (E46)"
                        }
                      }
                    },
                    "editorId": "512005a3-ba5b-4fe3-8408-f8f6ba6a048c"
                  },
                  {
                    "type": "@glass_setting_tile",
                    "properties": {
                      "icon": {
                        "stringVal": {
                          "value": "speed_rounded"
                        }
                      },
                      "icon_bg": {
                        "color": {
                          "color": "#E8F5E9"
                        }
                      },
                      "icon_color": {
                        "stringVal": {
                          "value": "success"
                        }
                      },
                      "title": {
                        "stringVal": {
                          "value": "Units of Measure"
                        }
                      },
                      "subtitle": {
                        "stringVal": {
                          "value": "Metric (km, Celsius, Bar)"
                        }
                      }
                    },
                    "editorId": "ebc632b8-9cdb-44b6-badb-eef73cc524bd"
                  },
                  {
                    "type": "@section_header",
                    "properties": {
                      "title": {
                        "stringVal": {
                          "value": "APP CONFIGURATION"
                        }
                      }
                    },
                    "editorId": "be6cccc4-d0b2-4bbe-81ee-806d22324197"
                  },
                  {
                    "type": "container",
                    "properties": {
                      "bg": {
                        "color": {
                          "color": "surface"
                        }
                      },
                      "backdrop_blur": {
                        "numberVal": {
                          "value": 20
                        }
                      },
                      "radius": {
                        "radius": {
                          "topLeft": 0,
                          "topRight": 0,
                          "bottomLeft": 0,
                          "bottomRight": 0,
                          "token": "lg"
                        }
                      },
                      "border": {
                        "border": {
                          "width": 1,
                          "color": "divider"
                        }
                      },
                      "padding": {
                        "edgeInsets": {
                          "top": 0,
                          "right": 0,
                          "bottom": 0,
                          "left": 0,
                          "token": "md"
                        }
                      },
                      "margin": {
                        "edgeInsets": {
                          "top": 0,
                          "right": 0,
                          "bottom": 0,
                          "left": 0,
                          "bottomToken": "sm"
                        }
                      }
                    },
                    "children": [
                      {
                        "type": "row",
                        "properties": {
                          "spacing": {
                            "stringVal": {
                              "value": "md"
                            }
                          }
                        },
                        "children": [
                          {
                            "type": "container",
                            "properties": {
                              "width": {
                                "px": {
                                  "value": 40,
                                  "isInfinity": false
                                }
                              },
                              "height": {
                                "px": {
                                  "value": 40,
                                  "isInfinity": false
                                }
                              },
                              "radius": {
                                "radius": {
                                  "topLeft": 0,
                                  "topRight": 0,
                                  "bottomLeft": 0,
                                  "bottomRight": 0,
                                  "token": "md"
                                }
                              },
                              "bg": {
                                "color": {
                                  "color": "#FFF3E0"
                                }
                              },
                              "align_child": {
                                "align": {
                                  "named": "center"
                                }
                              }
                            },
                            "children": [
                              {
                                "type": "icon",
                                "properties": {
                                  "name": {
                                    "icon": {
                                      "name": "notifications_active_rounded"
                                    }
                                  },
                                  "color": {
                                    "color": {
                                      "color": "on_surface"
                                    }
                                  },
                                  "size": {
                                    "numberVal": {
                                      "value": 22
                                    }
                                  }
                                },
                                "editorId": "0f196914-ec95-45b9-b856-061c0460ae3f"
                              }
                            ],
                            "editorId": "e3f714b2-ae00-45a4-9525-b8fc60e4dd64"
                          },
                          {
                            "type": "expanded",
                            "children": [
                              {
                                "type": "column",
                                "properties": {
                                  "cross_align": {
                                    "align": {
                                      "named": "start"
                                    }
                                  },
                                  "spacing": {
                                    "numberVal": {
                                      "value": 2
                                    }
                                  }
                                },
                                "children": [
                                  {
                                    "type": "text",
                                    "properties": {
                                      "content": {
                                        "stringVal": {
                                          "value": "Push Notifications"
                                        }
                                      },
                                      "style": {
                                        "textStyle": {
                                          "styleName": "title_medium"
                                        }
                                      },
                                      "color": {
                                        "color": {
                                          "color": "primary_text"
                                        }
                                      },
                                      "font_size": {
                                        "numberVal": {
                                          "value": 16
                                        }
                                      },
                                      "font_weight": {
                                        "numberVal": {
                                          "value": 600
                                        }
                                      }
                                    },
                                    "editorId": "f44caba2-1a31-4ba8-8813-f1a69b0918aa"
                                  },
                                  {
                                    "type": "text",
                                    "properties": {
                                      "content": {
                                        "stringVal": {
                                          "value": "DTC alerts and maintenance reminders"
                                        }
                                      },
                                      "style": {
                                        "textStyle": {
                                          "styleName": "body_small"
                                        }
                                      },
                                      "color": {
                                        "color": {
                                          "color": "secondary_text"
                                        }
                                      }
                                    },
                                    "editorId": "b834f62c-6aa3-455e-a0ac-b9db1b306c44"
                                  }
                                ],
                                "editorId": "1ffafd06-af38-45c2-a6a2-00c6924fe8a4"
                              }
                            ],
                            "editorId": "0209e012-7ab2-414a-9ea8-d137dbedee90"
                          },
                          {
                            "type": "@std.switch",
                            "properties": {
                              "active": {
                                "boolVal": {
                                  "value": true
                                }
                              },
                              "variant": {
                                "stringVal": {
                                  "value": "iOS"
                                }
                              }
                            },
                            "editorId": "9b37747e-6385-49f3-8bdf-51813786c781"
                          }
                        ],
                        "editorId": "096c49a8-25a6-4dac-adf8-031a0923efda"
                      }
                    ],
                    "editorId": "b49aacaa-75ea-4b24-85bc-16bad8b8266c"
                  },
                  {
                    "type": "@glass_setting_tile",
                    "properties": {
                      "icon": {
                        "stringVal": {
                          "value": "security_rounded"
                        }
                      },
                      "icon_bg": {
                        "color": {
                          "color": "#FFEBEE"
                        }
                      },
                      "icon_color": {
                        "stringVal": {
                          "value": "error"
                        }
                      },
                      "title": {
                        "stringVal": {
                          "value": "Privacy & Security"
                        }
                      },
                      "subtitle": {
                        "stringVal": {
                          "value": "Biometric lock, Data sharing"
                        }
                      }
                    },
                    "editorId": "a33b13a7-ac9a-4776-ae6e-1e867cbb78e9"
                  },
                  {
                    "type": "@glass_setting_tile",
                    "properties": {
                      "icon": {
                        "stringVal": {
                          "value": "cloud_sync_rounded"
                        }
                      },
                      "icon_bg": {
                        "color": {
                          "color": "#E0F7FA"
                        }
                      },
                      "icon_color": {
                        "stringVal": {
                          "value": "accent"
                        }
                      },
                      "title": {
                        "stringVal": {
                          "value": "Cloud Backup"
                        }
                      },
                      "subtitle": {
                        "stringVal": {
                          "value": "Last synced: 2 hours ago"
                        }
                      }
                    },
                    "editorId": "6399909b-5f61-48be-9f88-e40b5002745b"
                  },
                  {
                    "type": "@section_header",
                    "properties": {
                      "title": {
                        "stringVal": {
                          "value": "SUPPORT"
                        }
                      }
                    },
                    "editorId": "77f910fd-c616-4f4c-8096-3dface1c7a43"
                  },
                  {
                    "type": "@glass_setting_tile",
                    "properties": {
                      "icon": {
                        "stringVal": {
                          "value": "help_outline_rounded"
                        }
                      },
                      "icon_bg": {
                        "stringVal": {
                          "value": "surface"
                        }
                      },
                      "icon_color": {
                        "stringVal": {
                          "value": "primary_text"
                        }
                      },
                      "title": {
                        "stringVal": {
                          "value": "Help Center"
                        }
                      },
                      "subtitle": {
                        "stringVal": {
                          "value": "Guides and troubleshooting"
                        }
                      }
                    },
                    "editorId": "3141ead9-8bb6-4079-9839-e8bbb2361b07"
                  },
                  {
                    "type": "@glass_setting_tile",
                    "properties": {
                      "icon": {
                        "stringVal": {
                          "value": "description_rounded"
                        }
                      },
                      "icon_bg": {
                        "stringVal": {
                          "value": "surface"
                        }
                      },
                      "icon_color": {
                        "stringVal": {
                          "value": "primary_text"
                        }
                      },
                      "title": {
                        "stringVal": {
                          "value": "Diagnostic Logs"
                        }
                      },
                      "subtitle": {
                        "stringVal": {
                          "value": "Export CSV/PDF reports"
                        }
                      }
                    },
                    "editorId": "312deba0-860d-40f9-b867-1d276237c11d"
                  },
                  {
                    "type": "sizedbox",
                    "properties": {
                      "height": {
                        "stringVal": {
                          "value": "lg"
                        }
                      }
                    },
                    "editorId": "bce03ffa-f584-4a9b-9e65-238ecf002559"
                  },
                  {
                    "type": "@std.button",
                    "properties": {
                      "content": {
                        "stringVal": {
                          "value": "Sign Out"
                        }
                      },
                      "variant": {
                        "stringVal": {
                          "value": "outline"
                        }
                      },
                      "full_width": {
                        "boolVal": {
                          "value": true
                        }
                      },
                      "icon": {
                        "stringVal": {
                          "value": "logout_rounded"
                        }
                      },
                      "color": {
                        "stringVal": {
                          "value": "error"
                        }
                      }
                    },
                    "editorId": "87e13405-49a2-48b7-8bdf-a2aab02ca1cb"
                  },
                  {
                    "type": "sizedbox",
                    "properties": {
                      "height": {
                        "stringVal": {
                          "value": "xl"
                        }
                      }
                    },
                    "editorId": "ee984126-b6d1-4cea-9b27-fb10f0058287"
                  },
                  {
                    "type": "center",
                    "children": [
                      {
                        "type": "column",
                        "properties": {
                          "spacing": {
                            "stringVal": {
                              "value": "xs"
                            }
                          }
                        },
                        "children": [
                          {
                            "type": "text",
                            "properties": {
                              "content": {
                                "stringVal": {
                                  "value": "AutoScan Pro v2.4.0"
                                }
                              },
                              "style": {
                                "textStyle": {
                                  "styleName": "label_small"
                                }
                              },
                              "color": {
                                "color": {
                                  "color": "on_surface"
                                }
                              }
                            },
                            "editorId": "21f23950-95a5-44fe-b065-19abac1a3c15"
                          },
                          {
                            "type": "text",
                            "properties": {
                              "content": {
                                "stringVal": {
                                  "value": "Made for enthusiasts"
                                }
                              },
                              "style": {
                                "textStyle": {
                                  "styleName": "label_small"
                                }
                              },
                              "color": {
                                "color": {
                                  "color": "on_surface"
                                }
                              }
                            },
                            "editorId": "832d9128-cd6d-4456-86fc-9801a7d2e4e0"
                          }
                        ],
                        "editorId": "55334c81-3631-4037-b63e-c82e3bc65c69"
                      }
                    ],
                    "editorId": "956fb398-e1db-46e9-8837-7f7bbaca58e7"
                  }
                ],
                "editorId": "7cc0a42f-844f-4c37-a498-a1fd6fba5475"
              },
              {
                "type": "sizedbox",
                "properties": {
                  "height": {
                    "px": {
                      "value": 40,
                      "isInfinity": false
                    }
                  }
                },
                "editorId": "a863eace-fecb-478d-b85a-8164700b2e58"
              }
            ],
            "editorId": "8123c715-3c23-4526-8461-0b0250b76cd4"
          }
        ],
        "editorId": "0ee53217-f227-4d29-940b-4b6cb5a7d667"
      }
    ],
    "editorId": "81d301a6-71ef-4d2c-afd3-9b45ab36f253"
  }
}
```