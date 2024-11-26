struct UnspecifiedZero <: AbstractUnspecifiedNumber end

# Base.Complex{UnspecifiedZero}() = complex(UnspecifiedZero())
# function Base.Complex{UnspecifiedZero}(z::Real)
#   return (iszero(z) ? complex(UnspecifiedZero()) : throw(ErrorException))
# end

Base.zero(::Type{UnspecifiedZero}) = UnspecifiedZero()
Base.zero(n::UnspecifiedZero) = zero(typeof(n))

# This helps handle a lot of basic algebra, like:
# UnspecifiedZero() + 2.3 == 2.3
Base.convert(::Type{T}, x::UnspecifiedZero) where {T<:Number} = T(zero(T))

#Base.convert(::Type{Complex{UnspecifiedZero}}, x::UnspecifiedZero) = complex(x)

# TODO: Should this be implemented?
#Base.Complex(x::Real, ::UnspecifiedZero) = x

# This is to help define `float(::UnspecifiedZero) = 0.0`.
# This helps with defining `norm` of `UnallocatedZeros{UnspecifiedZero}`.
Base.AbstractFloat(::UnspecifiedZero) = zero(AbstractFloat)

# Basic arithmetic
Base.:+(::UnspecifiedZero, ::UnspecifiedZero) = UnspecifiedZero()
Base.:-(::UnspecifiedZero, ::UnspecifiedZero) = UnspecifiedZero()
Base.:*(::Number, ::UnspecifiedZero) = UnspecifiedZero()
Base.:*(::UnspecifiedZero, ::Number) = UnspecifiedZero()
Base.:*(::UnspecifiedZero, ::UnspecifiedZero) = UnspecifiedZero()
Base.:/(::UnspecifiedZero, ::Number) = UnspecifiedZero()
Base.:/(::Number, ::UnspecifiedZero) = throw(DivideError())
Base.:/(::UnspecifiedZero, ::UnspecifiedZero) = throw(DivideError())
Base.:-(::UnspecifiedZero) = UnspecifiedZero()

Base.promote_type(z::Type{<:UnspecifiedZero}, ElT::Type) = Base.promote_type(ElT, z)

Base.promote_type(ElT::Type, ::Type{<:UnspecifiedZero}) = ElT
Base.promote_type(::Type{<:UnspecifiedZero}, ::Type{<:UnspecifiedZero}) = UnspecifiedZero
Base.promote_type(ElT::Type, ::Type{<:Complex{<:UnspecifiedZero}}) = Complex{real(ElT)}
