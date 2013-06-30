# debian specific changes
class incron::debian inherits incron::base {
  Service['incrond']{
    name => 'incron'
  }
}
