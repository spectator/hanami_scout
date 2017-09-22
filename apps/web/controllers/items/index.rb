module Web::Controllers::Items
  class Index
    include Web::Action
    include ScoutApm::Tracer

    def call(params)
      sleep 10
      self.body = 'OK'
    end
    instrument_method :call
  end
end
