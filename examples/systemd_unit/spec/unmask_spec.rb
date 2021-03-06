require 'chefspec'

describe 'systemd_unit::unmask' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '18.04').converge(described_recipe) }

  it 'unmasks a systemd_unit daemon with an explicit action' do
    expect(chef_run).to unmask_systemd_unit('explicit_action')
    expect(chef_run).to_not unmask_systemd_unit('not_explicit_action')
  end
end
