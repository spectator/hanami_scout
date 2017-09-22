module Web::Controllers::Things
  class Index
    include Web::Action
    include ScoutApm::Tracer

    def call(params)
      self.class.instrument('Foo', 'Controller/Index') {
        sleep 10
        self.body = 'OK'
      }
    end
  end
end