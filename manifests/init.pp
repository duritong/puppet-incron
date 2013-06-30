# manage incron
class incron {
  case $::osfamily {
    debian: { include incron::debian }
    default: { include incron::base }
  }
}
