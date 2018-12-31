require 'spec_helper'

describe 'Dockerfile' do

  image = Docker::Image.build_from_dir('.')
  set :docker_image, image.id

  it 'should have the maintainer label' do
    expect(image.json['Config']['Labels'].key?('maintainer')).to be true
  end

  %w[bash
     bash-completion
     util-linux
     coreutils
     binutils
     findutils
     grep
     build-base].each do |package|
    describe package(package) do
      it { should be_installed }
    end
  end

  describe package('bundler') { it { should be_installed.by('gem') } }
end
