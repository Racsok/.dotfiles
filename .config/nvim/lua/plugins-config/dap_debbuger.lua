return {
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
	  "mfussenegger/nvim-dap-python",
    },
    -- "opts = {}" es necesario para que se llame a la función setup()
    opts = {}, 
    config = function(_, opts)
      local dap, dapui = require("dap"), require("dapui")
	  local dap_python = require("dap-python")
      dapui.setup(opts)
	  dap_python.setup("python3")
	  
	  -- 1. Ruta de Mason (ajustada a tu sistema Lubuntu)
      local mason_path = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python"
      dap_python.setup(mason_path)
      

	  -- 2. CONFIGURACIÓN DEL PYTHONPATH
      -- Esto hace que el debugger "vea" la raíz de tu proyecto siempre
      dap.configurations.python = {
		{
          type = 'python',
          request = 'launch',
          name = 'Launch file with PYTHONPATH',
          program = '${file}',
          -- Esta línea añade la carpeta raíz del proyecto al buscador de Python
          env = {
            PYTHONPATH = vim.fn.getcwd(),
          },
        },
      }

	  dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.after.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
    keys = {
      -- Cambiamos a 'dt' para que no haya dudas con 'db'
      { "<leader>dt", function() require("dap").toggle_breakpoint() end, desc = "Debug: Toggle Breakpoint" },
      { "<leader>dc", function() require("dap").continue() end, desc = "Debug: Start/Continue" },
      { "<leader>du", function() require("dapui").toggle() end, desc = "Debug: Toggle UI" },
    },
  },
}
