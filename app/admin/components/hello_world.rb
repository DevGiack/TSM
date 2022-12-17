# app/admin/components/hello_world.rb
# place holder avant l'implémentation des graphs dans panel admin > Dashboard. Appelé depuis dashboard.rb
module Admin
  module Components
    class HelloWorld < Arbre::Component
      builder_method :hello_world

      def build(attributes = {})
        super(attributes)
        text_node('Ici viendront les graphs !')
        add_class('hello-world')
      end

      def tag_name
        'h1'
      end
    end
  end
end