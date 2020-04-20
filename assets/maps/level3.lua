return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.4",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 25,
  height = 25,
  tilewidth = 32,
  tileheight = 32,
  nextlayerid = 5,
  nextobjectid = 6,
  properties = {},
  tilesets = {
    {
      name = "tiles",
      firstgid = 1,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 15,
      image = "../tilesets/tiles.png",
      imagewidth = 480,
      imageheight = 736,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {},
      terrains = {},
      tilecount = 345,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      id = 1,
      name = "ground",
      x = 0,
      y = 0,
      width = 25,
      height = 25,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 76, 2, 76, 77, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 2,
        2, 2, 2, 76, 2, 76, 78, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 78, 76, 2, 76, 77, 2, 2,
        2, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 2,
        2, 2, 2, 76, 2, 76, 2, 76, 2, 76, 4, 76, 2, 76, 77, 76, 2, 76, 78, 76, 2, 76, 2, 2, 2,
        2, 2, 76, 2, 76, 2, 76, 5, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 2,
        2, 2, 2, 76, 2, 76, 2, 76, 77, 76, 2, 76, 2, 76, 2, 76, 2, 76, 3, 76, 2, 76, 2, 2, 2,
        2, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 77, 76, 6, 76, 2, 2,
        2, 2, 77, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 2, 2,
        2, 2, 76, 2, 76, 2, 76, 3, 76, 2, 76, 78, 76, 2, 76, 2, 76, 2, 76, 2, 76, 5, 76, 2, 2,
        2, 2, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 77, 76, 2, 76, 2, 76, 4, 76, 2, 76, 2, 2, 2,
        2, 2, 76, 2, 76, 2, 76, 78, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 2,
        2, 2, 2, 76, 4, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 2, 2,
        2, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 77, 76, 2, 76, 2, 76, 2, 76, 78, 76, 2, 2,
        2, 2, 2, 76, 6, 76, 77, 76, 2, 76, 2, 76, 2, 76, 2, 76, 5, 76, 2, 76, 2, 76, 2, 2, 2,
        2, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 77, 76, 2, 76, 2, 76, 2, 2,
        2, 2, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 3, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 2, 2,
        2, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 2,
        2, 2, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 6, 76, 2, 76, 4, 76, 2, 76, 2, 2, 2,
        2, 2, 76, 2, 76, 2, 76, 77, 76, 2, 76, 2, 76, 78, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 2,
        2, 2, 2, 76, 78, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 77, 2, 2,
        2, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 76, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
      }
    },
    {
      type = "tilelayer",
      id = 2,
      name = "walls",
      x = 0,
      y = 0,
      width = 25,
      height = 25,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        16, 16, 16, 16, 79, 16, 16, 16, 16, 17, 16, 16, 80, 16, 16, 16, 16, 16, 79, 16, 16, 16, 16, 16, 16,
        16, 16, 25, 25, 25, 16, 16, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 16, 16,
        16, 23, 0, 0, 0, 22, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 16,
        16, 23, 0, 0, 0, 22, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 16,
        16, 23, 0, 0, 0, 22, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 79,
        16, 23, 0, 0, 0, 22, 23, 0, 47, 48, 49, 50, 0, 0, 18, 24, 24, 24, 24, 19, 0, 0, 0, 22, 16,
        16, 23, 0, 0, 0, 22, 23, 0, 0, 0, 0, 0, 0, 18, 80, 25, 25, 25, 79, 23, 47, 48, 0, 22, 16,
        80, 23, 0, 0, 0, 22, 23, 0, 0, 0, 0, 0, 18, 16, 21, 0, 0, 0, 22, 23, 0, 0, 0, 22, 16,
        16, 23, 0, 0, 0, 22, 23, 0, 0, 0, 18, 24, 16, 21, 0, 7, 0, 0, 22, 23, 0, 0, 0, 22, 17,
        16, 23, 0, 0, 0, 22, 23, 0, 0, 0, 22, 79, 21, 0, 0, 0, 0, 0, 22, 23, 0, 0, 0, 22, 16,
        16, 23, 0, 0, 0, 22, 23, 0, 0, 0, 22, 23, 0, 0, 0, 0, 0, 0, 22, 23, 0, 0, 0, 22, 16,
        16, 23, 0, 0, 0, 22, 23, 0, 0, 0, 22, 23, 0, 0, 0, 0, 0, 0, 22, 23, 0, 0, 0, 22, 80,
        16, 23, 0, 0, 0, 22, 23, 0, 0, 0, 22, 23, 0, 0, 0, 0, 0, 0, 22, 23, 0, 0, 0, 22, 16,
        79, 23, 0, 0, 0, 22, 23, 0, 0, 0, 22, 16, 24, 24, 24, 19, 0, 0, 22, 23, 0, 0, 0, 22, 16,
        16, 23, 0, 0, 0, 22, 23, 0, 0, 0, 20, 25, 25, 25, 25, 21, 0, 0, 22, 23, 0, 0, 0, 22, 16,
        16, 23, 0, 0, 0, 22, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 23, 0, 0, 0, 22, 16,
        16, 23, 0, 0, 0, 22, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 23, 0, 0, 0, 22, 79,
        16, 23, 0, 0, 0, 22, 80, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 16, 23, 0, 0, 0, 22, 16,
        16, 23, 0, 0, 0, 20, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 21, 0, 0, 0, 22, 16,
        16, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 16,
        80, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 16,
        16, 23, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 48, 0, 0, 0, 22, 16,
        16, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 16,
        16, 16, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 16, 16,
        16, 16, 16, 16, 16, 16, 79, 16, 16, 16, 17, 16, 16, 80, 16, 16, 16, 79, 16, 16, 16, 16, 16, 16, 80
      }
    },
    {
      type = "tilelayer",
      id = 4,
      name = "overlay",
      x = 0,
      y = 0,
      width = 25,
      height = 25,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 32, 33, 34, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 33, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 33, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      id = 3,
      name = "sprites",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 1,
          name = "player",
          type = "",
          shape = "point",
          x = 128,
          y = 128,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "door",
          type = "",
          shape = "rectangle",
          x = 416,
          y = 352,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["Is"] = "door",
            ["LeadsTo"] = "level4"
          }
        },
        {
          id = 4,
          name = "enemy2",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 320,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["Dialogue"] = 1,
            ["Is"] = "enemy"
          }
        },
        {
          id = 5,
          name = "enemy",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 352,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["Dialogue"] = 2,
            ["Is"] = "enemy"
          }
        }
      }
    }
  }
}
