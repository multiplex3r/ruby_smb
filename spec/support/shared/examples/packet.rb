RSpec.shared_examples 'packet' do
  context 'command' do
    specify do
      expect(Smb2::COMMANDS).to include(described_class.command)
      expect(subject.header.command).to eq(Smb2::COMMANDS[described_class.command])
    end
  end
end

