module TypescriptRailsActiveSupportCompatibility
  def cattr_accessor(*names, **options, &block)
    if defined?(Typescript::Rails::Compiler) && equal?(Typescript::Rails::Compiler.singleton_class)
      attr_accessor(*names)
    else
      super
    end
  end
end

Module.prepend(TypescriptRailsActiveSupportCompatibility)