module MinimalSumRepresentation

export solve

using Combinatorics: with_replacement_combinations
using Multisets: Multiset

function summation_options(target_digits::Int)
    # We could do something like:
    #
    #     Iterators.product((1:9 for _ in 1:n)...)
    #
    # But addition is commutitive, so order does not
    # matter.  As such, we use Combinatorics.
    return with_replacement_combinations(1:9, target_digits)
end

function solve(target::Int)
    # The idea is to start with the smallest number of
    # numbers that you could sum together and go through
    # the possibilities from that collection, and increment
    # the number of digits until we find a match.
    #
    # This is the most naïve solution and the least, but it
    # would find you other possible solutions with a slight
    # modification.
    #
    # You could do something more clever with choosing the
    # number of digits you're looking at from the start; e.g.,
    #
    #     mod1(target, 9).
    #
    # The reality is that if the number is greater than the
    # largest single digit (9), then we will just choose 9
    # until we find the remainder we need:
    #
    #     function solve_mod(target::Int)
    #         d, r = divrem(target, 9)
    #         return Multiset((9 for _ in 1:d)..., r)
    #     end
    #
    # But this is uninteresting, and renders the whole repo
    # useless!
    n = 1
    while true
        for opt in summation_options(n)
            sum(opt) == target && return Multiset(opt)
        end
        n += 1
    end
end

end
