return {
  'alienman5k/jdecomp.nvim',
  opts = {
    decompiler = 'cfr', -- cfr, procyon, fernflower
    provider = {
      cfr = {
        -- bin = 'cfr'
        jar = os.getenv('HOME') .. '/.programs/cfr/cfr-0.152.jar'
      },
    }
  }
}
