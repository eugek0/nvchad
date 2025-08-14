local M = {}

function M.SearchReplaceProject()
  local pattern = vim.fn.input "Search pattern: "
  if pattern == "" then
    print "Pattern empty, abort"
    return
  end

  local replacement = vim.fn.input "Replace with: "
  if replacement == "" then
    print "Replacement empty, abort"
    return
  end

  local ext = vim.fn.input("File extension (e.g. js, py, * for all): ", "*")
  if ext == "" then
    ext = "*"
  end

  -- Получаем список файлов через ripgrep с учётом .gitignore и игнором node_modules
  local rg_cmd = string.format("rg --files --glob '*.%s' --hidden --follow", ext)
  local files = vim.fn.systemlist(rg_cmd)

  if vim.v.shell_error ~= 0 then
    print "ripgrep error or not installed"
    return
  end

  if #files == 0 then
    print "No files found"
    return
  end

  -- Очищаем quickfix
  vim.fn.setqflist {}

  -- Экранируем имена файлов
  local files_escaped = {}
  for _, f in ipairs(files) do
    table.insert(files_escaped, vim.fn.fnameescape(f))
  end

  -- Формируем команду vimgrep для всех файлов сразу
  local vimgrep_cmd = string.format("vimgrep /%s/gj %s", pattern, table.concat(files_escaped, " "))

  vim.cmd(vimgrep_cmd)

  -- Открываем quickfix с результатами
  vim.cmd "copen"

  -- Выполняем замену с подтверждением во всех файлах из quickfix, игнорируем ошибку, если паттерн не найден
  vim.cmd(string.format("silent! cdo %%s/%s/%s/gcI | update", pattern, replacement))
end

return M
