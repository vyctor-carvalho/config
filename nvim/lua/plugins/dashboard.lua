return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = false,
        },
        sections = {
          {
            title = [[
 ,,
`""*$b..
     ""*$o.
         "$$o.
           "*$$o.
              "$$$o.
                "$$$$bo...       ..o:
                  "$$$$$$$$booocS$$$    ..    ,.
               ".    "*$$$$SP     V$o..o$$. .$$$b
                "$$o. .$$$$$o. ...A$$$$$$$$$$$$$$b
          ""bo.   "*$$$$$$$$$$$$$$$$$$$$P*$$$$$$$$:
             "$$.    V$$$$$$$$$P"**""*"'   VP  * "l
               "$$$o.4$$$$$$$$X
                "*$$$$$$$$$$$$$AoA$o..oooooo..           .b
                       .X$$$$$$$$$$$P""     ""*oo,,     ,$P
                      $$P""V$$$$$$$:    .        ""*****"
                    .*"    A$$$$$$$$o.4;      .
                         .oP""   "$$$$$$b.  .$;
                                  A$$$$$$$$$$P
                                  "  "$$$$$P"
                                      $$P*"
    V:K                              .$"
                                     "
          ]],
            align = "title",
            padding = 1,
          },
          { section = "keys", gap = 1, padding = 1 },
          { section = "startup" },
        },
      },
    },
  },
}
