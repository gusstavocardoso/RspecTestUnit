require 'spec_helper.rb'
require_relative '../lib/calculator.rb'

RSpec.describe Calculator do
  let(:calculator) { Calculator.new }

  context 'cenários positivos' do
    it 'soma dois números' do
      result = calculator.add(3, 5)
      expect(result).to eq(8)
    end

    it 'subtrai dois números' do
      result = calculator.subtract(10, 4)
      expect(result).to eq(6)
    end

    it 'multiplica dois números' do
        result = calculator.multiply(4, 3)
        expect(result).to eq(12)
      end
    
      it 'divide dois números inteiros' do
        result = calculator.divide(10, 2)
        expect(result).to eq(5)
      end
  end

  context 'cenários negativos' do
    it 'não soma números diferentes' do
        result1 = calculator.add(7, 2)
        result2 = calculator.add(3, 5)
        expect(result1).not_to eq(result2)
    end

    it 'subtração resulta em número negativo' do
      result = calculator.subtract(4, 7)
      expect(result).to be < 0
    end

    it 'divisão por zero gera erro' do
        expect { calculator.divide(6, 0) }.to raise_error('Não pode dividir por zero')
      end
  end
end