class Calculator
    def add(a, b)
      a + b
    end
  
    def subtract(a, b)
      a - b
    end
  
    def multiply(a, b)
      a * b
    end
  
    def divide(a, b)
      raise 'Não pode dividir por zero' if b.zero?
      a / b.to_f
    end
  end