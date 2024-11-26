abstract type AbstractUnspecifiedNumber <: Number end

struct UnspecifiedNumber{T<:Number} <: AbstractUnspecifiedNumber
  value::T
  global @inline function _UnspecifiedNumber(value::Number)
    return new{typeof(value)}(value)
  end
end

UnspecifiedNumber(n::Number) = _UnspecifiedNumber(n)
UnspecifiedNumber{T}(n::Number) where {T<:Number} = UnspecifiedNumber(convert(T, n))

UnspecifiedNumber{T}(n::UnspecifiedNumber{T}) where {T<:Number} = n

# Fix ambiguity error.
function UnspecifiedNumber{T}(n::Base.TwicePrecision) where {T<:Number}
  return UnspecifiedNumber(convert(T, n))
end
