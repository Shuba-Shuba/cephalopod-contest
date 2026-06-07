# arr = array of elements to choose from

# @return = int: "/data get" value of chosen element
# element = any: chosen element
$data modify storage cc:board tmp.element set from storage cc:board tmp.arr[$(i)]
return run data get storage cc:board tmp.element