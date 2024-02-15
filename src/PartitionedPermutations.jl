module PartitionedPermutations

import Base: 
    ==, 
    *,
    adjoint,
    deepcopy,
    deepcopy_internal,
    hash,
    size,
    <=,
    length

import Oscar:
    @req,
    SetPartitions,
    Perm,
    join,
    compose,
    SetPartition,
    subsets,
    cycles


export PartitionedPermutation

export <=
export cycle_partition
export join
export length
export length2
export enumerate_partitioned_perm
export enumerate_partitioned_perm_old


include("Util.jl")
include("PartitionedPermutation.jl")
include("EnumeratePartitionedPermutations.jl")

end

using .PartitionedPermutations

export PartitionedPermutation

export <=
export cycle_partition
export join
export length
export length2
export enumerate_partitioned_perm
export enumerate_partitioned_perm_old

using Oscar # TODO can be removed, just to execute code below, like for example:
a = SetPartition([1, 2], [4, 5])

# or to run the tests

using Test

include("../tests/PartitionedPermu-test.jl")
