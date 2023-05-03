if true then return end

function my_on_attach(bufnr)
  local api = require('nvim-tree.api')

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- ahol way to reset keymap qwq
  -- can set use migrating-on-attch way
  Map('n', 'C', api.tree.change_root_to_node, opts('CD'))
  Map('n', '<C-e>', api.node.open.replace_tree_buffer, opts('Open: In Place'))
  Map('n', '<C-k>', api.node.show_info_popup, opts('Info'))
  Map('n', '<C-r>', api.fs.rename_sub, opts('Rename: Omit Filename'))
  Map('n', '<C-t>', api.node.open.tab, opts('Open: New Tab'))
  Map('n', '<C-v>', api.node.open.vertical, opts('Open: Vertical Split'))
  Map('n', '<C-x>', api.node.open.horizontal, opts('Open: Horizontal Split'))
  Map('n', '<BS>', api.node.navigate.parent_close, opts('Close Directory'))
  Map('n', '<CR>', api.node.open.edit, opts('Open'))
  Map('n', '<Tab>', api.node.open.preview, opts('Open Preview'))
  Map('n', '>', api.node.navigate.sibling.next, opts('Next Sibling'))
  Map('n', '<', api.node.navigate.sibling.prev, opts('Previous Sibling'))
  Map('n', '.', api.node.run.cmd, opts('Run Command'))
  Map('n', '-', api.tree.change_root_to_parent, opts('Up'))
  Map('n', 'a', api.fs.create, opts('Create'))
  Map('n', 'bmv', api.marks.bulk.move, opts('Move Bookmarked'))
  Map('n', 'B', api.marks.list, opts('Bookmark list'))
  Map("n", "<leader>mn", api.marks.navigate.next)
  Map("n", "<leader>mp", api.marks.navigate.prev)
  Map("n", "<leader>ms", api.marks.navigate.select)
  Map('n', 'b', api.tree.toggle_no_buffer_filter, opts('Toggle No Buffer'))
  Map('n', 'c', api.fs.copy.node, opts('Copy'))
  Map('n', 'gc', api.tree.toggle_git_clean_filter, opts('Toggle Git Clean'))
  Map('n', '[g', api.node.navigate.git.prev, opts('Prev Git'))
  Map('n', ']g', api.node.navigate.git.next, opts('Next Git'))
  Map('n', 'd', api.fs.remove, opts('Delete'))
  Map('n', 'D', api.fs.trash, opts('Trash'))
  Map('n', 'E', api.tree.expand_all, opts('Expand All'))
  Map('n', 'e', api.fs.rename_basename, opts('Rename: Basename'))
  Map('n', ']e', api.node.navigate.diagnostics.next, opts('Next Diagnostic'))
  Map('n', '[e', api.node.navigate.diagnostics.prev, opts('Prev Diagnostic'))
  Map('n', 'F', api.live_filter.clear, opts('Clean Filter'))
  Map('n', 'f', api.live_filter.start, opts('Filter'))
  Map('n', 'g?', api.tree.toggle_help, opts('Help'))
  Map('n', 'gy', api.fs.copy.absolute_path, opts('Copy Absolute Path'))
  Map('n', 'H', api.tree.toggle_hidden_filter, opts('Toggle Dotfiles'))
  Map('n', 'I', api.tree.toggle_gitignore_filter, opts('Toggle Git Ignore'))
  Map('n', 'J', api.node.navigate.sibling.last, opts('Last Sibling'))
  Map('n', 'K', api.node.navigate.sibling.first, opts('First Sibling'))
  Map('n', 'm', api.marks.toggle, opts('Toggle Bookmark'))
  Map('n', 'o', api.node.open.edit, opts('Open'))
  Map('n', 'O', api.node.open.no_window_picker, opts('Open: No Window Picker'))
  Map('n', 'p', api.fs.paste, opts('Paste'))
  Map('n', 'P', api.node.navigate.parent, opts('Parent Directory'))
  Map('n', 'q', api.tree.close, opts('Close'))
  Map('n', 'r', api.fs.rename, opts('Rename'))
  Map('n', 'R', api.tree.reload, opts('Refresh'))
  Map('n', 's', api.node.run.system, opts('Run System'))
  Map('n', 'S', api.tree.search_node, opts('Search'))
  Map('n', 'U', api.tree.toggle_custom_filter, opts('Toggle Hidden'))
  Map('n', 'x', api.tree.collapse_all, opts('Collapse'))
  Map('n', 'X', api.fs.cut, opts('Cut'))
  Map('n', 'y', api.fs.copy.filename, opts('Copy Name'))
  Map('n', 'Y', api.fs.copy.relative_path, opts('Copy Relative Path'))
  Map('n', '<2-LeftMouse>', api.node.open.edit, opts('Open'))
  Map('n', '<2-RightMouse>', api.tree.change_root_to_node, opts('CD'))
end

require("nvim-tree").setup({
  ---
  on_attach = my_on_attach,
  ---
})
