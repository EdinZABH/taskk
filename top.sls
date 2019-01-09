file_roots:
  base:
    - /srv/salt
base:          # Apply SLS files from the directory root for the 'base' environment
  '*':      # All minions with a minion_id that begins with 'web'
    - jen 
