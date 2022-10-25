defmodule Secrets do
  def secret_add(secret) do
    # Please implement the secret_add/1 function
    adder = fn val -> val + secret
    end
  end

  def secret_subtract(secret) do
    # Please implement the secret_subtract/1 function
    substractor = fn val -> val - secret
    end
  end

  def secret_multiply(secret) do
    # Please implement the secret_multiply/1 function
    multiplier = fn val -> val * secret
    end
  end

  def secret_divide(secret) do
    # Please implement the secret_divide/1 function
    divider = fn val -> div(val, secret)
    end
  end

  def secret_and(secret) do
    # Please implement the secret_and/1 function
    ander = fn val -> Bitwise.band(val, secret)
    end
  end

  def secret_xor(secret) do
    # Please implement the secret_xor/1 function
    xorer = fn val -> Bitwise.bxor(val, secret)
    end
  end

  def secret_combine(multiplier, divider) do
    # Please implement the secret_combine/2 function
    combined = fn val -> divider.(multiplier.(val))
    end
  end
end
