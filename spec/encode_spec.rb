require_relative '../lib/encode.rb'

RSpec.describe 'encode' do
  it 'returns encoded version of plaintext' do
    expect(encode("theswiftfoxjumpedoverthelazydog", "secretkey")).to eq ("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL")
  end

  it 'returns decoded version of ciphertext' do
    expect(decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")).to eq ("theswiftfoxjumpedoverthelazydog")
  end
end