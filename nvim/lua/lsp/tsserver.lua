return {
  on_attach = function(client)
    -- disable formatting if using Prettier
    client.server_capabilities.documentFormattingProvider = false
  end,
  settings = {
    typescript = { 
      preferences = { importModuleSpecifier = "relative" } 
    },
    javascript = { 
      preferences = { importModuleSpecifier = "relative" } 
    },
  },
}

