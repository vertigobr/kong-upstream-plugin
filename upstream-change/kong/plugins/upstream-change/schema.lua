local PLUGIN_NAME = "upstream-change"

local schema = {
  name = PLUGIN_NAME,
  fields = {
    { config = {
        type = "record",
        fields = {
          { upstream = { type = "string", required = true } },
        },
      },
    },
  },
}

return schema
