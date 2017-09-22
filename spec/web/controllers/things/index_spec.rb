require 'spec_helper'
require_relative '../../../../apps/web/controllers/things/index'

describe Web::Controllers::Things::Index do
  let(:action) { Web::Controllers::Things::Index.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
