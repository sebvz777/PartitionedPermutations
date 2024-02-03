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

# TODO more functions we use
import Oscar:
    @req,
    SetPartitions,
    Perm,
    join,
    compose


export PartitionedPermutation

export <=
export cycle_partition
export join
export length
export length2
export enumerate_partitioned_perm


include("PartitionedPermutation.jl")
include("Util.jl")
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

using Oscar # TODO can be removed, just to execute code below, like for example:
a = SetPartition([1, 2], [4, 5])

# or to run the tests

using Test

include("../tests/PartitionedPermu-test.jl")
