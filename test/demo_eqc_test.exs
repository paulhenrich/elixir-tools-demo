defmodule DemoEqcTest do
  use ExUnit.Case
  use EQC.ExUnit

  property "Eqc natural numbers are greater than zero" do
    forall n <- nat do
      ensure n >= 0
    end
  end  

  property "Demo.sum and Demo.sum2 are equivalent for lists" do
    forall l <- list(int) do
      ensure Demo.sum(l) == Demo.sum2(l)
    end
  end  

  @tag numtests: 10000
  property "A square is >= its argument" do
    forall i <- int() do
      ensure Demo.bad_square(i) >= i
    end
  end
end
