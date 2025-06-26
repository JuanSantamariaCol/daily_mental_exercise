def merge(nums1, m, nums2, n)
  nums1.pop(nums1.length != m ? nums1.length - m : 0)
  nums2.pop(nums2.length != n ? nums2.length - n : 0)
  nums1.concat(nums2)
  nums1.sort!
end

nums1 = [1,2,3,0,0,0]
m = 3
nums2 = [2,5,6]
n = 3
pp merge(nums1, m, nums2, n)