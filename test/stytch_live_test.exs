defmodule StytchLiveTest do
  use ExUnit.Case
  doctest StytchLive

  test "greets the world" do
    assert StytchLive.hello() == :world
  end
end
