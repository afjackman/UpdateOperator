defmodule UpdateOperator do
  defmacro a ~> b do
    quote do
      put_in(unquote(b), unquote(a))
    end
  end
end