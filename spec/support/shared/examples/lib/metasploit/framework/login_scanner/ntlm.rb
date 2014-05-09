shared_examples_for 'Metasploit::Framework::LoginScanner::NTLM' do 
  
  subject(:login_scanner) { described_class.new }

  it { should respond_to :send_lm }
  it { should respond_to :send_ntlm }
  it { should respond_to :send_spn }
  it { should respond_to :use_ntlm2_session }
  it { should respond_to :use_ntlmv2 }

  context 'validations' do

    context '#send_lm' do
      it 'is not valid for the string true' do
        login_scanner.send_lm = 'true'
        expect(login_scanner).to_not be_valid
        expect(login_scanner.errors[:send_lm]).to include 'is not included in the list'
      end

      it 'is not valid for the string false' do
        login_scanner.send_lm = 'false'
        expect(login_scanner).to_not be_valid
        expect(login_scanner.errors[:send_lm]).to include 'is not included in the list'
      end

      it 'is  valid for true class' do
        login_scanner.send_lm = true
        expect(login_scanner.errors[:send_lm]).to be_empty
      end

      it 'is  valid for false class' do
        login_scanner.send_lm = false
        expect(login_scanner.errors[:send_lm]).to be_empty
      end
    end

    context '#send_ntlm' do
      it 'is not valid for the string true' do
        login_scanner.send_ntlm = 'true'
        expect(login_scanner).to_not be_valid
        expect(login_scanner.errors[:send_ntlm]).to include 'is not included in the list'
      end

      it 'is not valid for the string false' do
        login_scanner.send_ntlm = 'false'
        expect(login_scanner).to_not be_valid
        expect(login_scanner.errors[:send_ntlm]).to include 'is not included in the list'
      end

      it 'is  valid for true class' do
        login_scanner.send_ntlm = true
        expect(login_scanner.errors[:send_ntlm]).to be_empty
      end

      it 'is  valid for false class' do
        login_scanner.send_ntlm = false
        expect(login_scanner.errors[:send_ntlm]).to be_empty
      end
    end

    context '#send_spn' do
      it 'is not valid for the string true' do
        login_scanner.send_spn = 'true'
        expect(login_scanner).to_not be_valid
        expect(login_scanner.errors[:send_spn]).to include 'is not included in the list'
      end

      it 'is not valid for the string false' do
        login_scanner.send_spn = 'false'
        expect(login_scanner).to_not be_valid
        expect(login_scanner.errors[:send_spn]).to include 'is not included in the list'
      end

      it 'is  valid for true class' do
        login_scanner.send_spn = true
        expect(login_scanner.errors[:send_spn]).to be_empty
      end

      it 'is  valid for false class' do
        login_scanner.send_spn = false
        expect(login_scanner.errors[:send_spn]).to be_empty
      end
    end

    context '#use_ntlm2_session' do
      it 'is not valid for the string true' do
        login_scanner.use_ntlm2_session = 'true'
        expect(login_scanner).to_not be_valid
        expect(login_scanner.errors[:use_ntlm2_session]).to include 'is not included in the list'
      end

      it 'is not valid for the string false' do
        login_scanner.use_ntlm2_session = 'false'
        expect(login_scanner).to_not be_valid
        expect(login_scanner.errors[:use_ntlm2_session]).to include 'is not included in the list'
      end

      it 'is  valid for true class' do
        login_scanner.use_ntlm2_session = true
        expect(login_scanner.errors[:use_ntlm2_session]).to be_empty
      end

      it 'is  valid for false class' do
        login_scanner.use_ntlm2_session = false
        expect(login_scanner.errors[:use_ntlm2_session]).to be_empty
      end
    end

    context '#use_ntlmv2' do
      it 'is not valid for the string true' do
        login_scanner.use_ntlmv2 = 'true'
        expect(login_scanner).to_not be_valid
        expect(login_scanner.errors[:use_ntlmv2]).to include 'is not included in the list'
      end

      it 'is not valid for the string false' do
        login_scanner.use_ntlmv2 = 'false'
        expect(login_scanner).to_not be_valid
        expect(login_scanner.errors[:use_ntlmv2]).to include 'is not included in the list'
      end

      it 'is  valid for true class' do
        login_scanner.use_ntlmv2 = true
        expect(login_scanner.errors[:use_ntlmv2]).to be_empty
      end

      it 'is  valid for false class' do
        login_scanner.use_ntlmv2 = false
        expect(login_scanner.errors[:use_ntlmv2]).to be_empty
      end
    end

  end

end     