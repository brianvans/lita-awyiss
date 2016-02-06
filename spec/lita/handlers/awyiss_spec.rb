require "spec_helper"

describe Lita::Handlers::Awyiss, lita_handler: true do
  before do
    stub_request(:post, "http://awyisser.com/api/generator").
      with(:body => {"phrase"=>"lita plugin"}).
      to_return(:status => 200, :body => '{"imgur":"http://imgur.com/cuaRe1S","link":"http://i.imgur.com/cuaRe1S.png"}')
  end

  it 'should reply with the png link' do
    send_command("awyiss lita plugin")
    expect(replies.last).to eq('http://i.imgur.com/cuaRe1S.png')
  end

  it 'should reply with the png link if there\'s two w characters' do
    send_command("awwyiss lita plugin")
    expect(replies.last).to eq('http://i.imgur.com/cuaRe1S.png')
  end
end
