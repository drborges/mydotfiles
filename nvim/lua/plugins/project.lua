return {
  {
    "ahmedkhalf/project.nvim",
    opts = {
      manual_mode = false,
      detection_methods = { "pattern" },
      patterns = { ">Projects", ".git" },
      silent_chdir = false,
    },
  },
}
