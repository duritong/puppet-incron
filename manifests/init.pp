# manage incron
class incron(
  $prune_entries = true,
) {
  case $::osfamily {
    debian: { include incron::debian }
    default: { include incron::base }
  }
}
