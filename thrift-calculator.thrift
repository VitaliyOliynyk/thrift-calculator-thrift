namespace java thrift.calculator
namespace php thrift.calculator
namespace csharp thrift.calculator

enum Operation {
  ADD = 1,
  SUBTRACT = 2,
  MULTIPLY = 3,
  DIVIDE = 4
}

struct Work {
    1: i32 arg1,
    2: i32 arg2,
    3: Operation operation
}

exception InvalidOperation {
  1: string why
}

service CalculatorService {
    i32 calculate(1:Work work) throws (1:InvalidOperation ouch)
}




