sub init()
  m.PI = 3.14159
  m.left = m.top.findNode("left")
  m.right = m.top.findNode("right")
end sub

sub onProgressChange(evt as object)
  progress = evt.getData()

  if progress < 0.5
    m.left.rotation = 0
    m.right.rotation = m.PI * (1 - 2 * progress)
  else
    m.left.rotation = m.PI * (1 - 2 * progress)
    m.right.rotation = 0
  end if
end sub
