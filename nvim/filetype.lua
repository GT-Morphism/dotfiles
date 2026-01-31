vim.filetype.add({
  pattern = {
    -- inspired by: https://nickjanetakis.com/blog/custom-file-type-syntax-highlighting-with-neovim
    -- reference: https://www.lua.org/pil/20.2.html
    -- example: RESOURCE.HTTP_VERB.hurl
    ["%a+%.%a+%.hurl"] = "bash",
  },
})
