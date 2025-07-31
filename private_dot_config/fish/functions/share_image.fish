function share_image --description 'Share an image on 0x0.st'
  curl -F'file=@'$argv https://0x0.st
end
