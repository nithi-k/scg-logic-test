// BalanceIndex
// Nithi Kulasiriswatdi

// MARK: - Complexity Analysis
// Time complexity: O(n), as the function iterates through the array once in a loop.

// Memory complexity: O(1), as the function uses a constant amount of extra memory.

func findBalanceIndex(_ nums: [Int]) {
    var totalCount = nums.reduce(0, +)
    var leftCount = 0
    var midIndex: Int?
    
    // To find mid index, array must have more than 2 elements
    if nums.count > 2 {
        for i in 1 ..< nums.count {
            leftCount += nums[i-1]
            let rightCount = totalCount - leftCount - nums[i]
            if leftCount == rightCount {
                midIndex = i
                break
            }
        }
    }
    
    // check if the midIndex is existed
    guard let midIndex = midIndex else {
        print("index not found")
        return
    }
    print("middle index is", midIndex)
}

// MARK: - Test Cases

findBalanceIndex([])
// Expected output: Index not found

findBalanceIndex([1])
// Expected output: Index not found

findBalanceIndex([1,2])
// Expected output: Index not found

findBalanceIndex([1,2,1])
// Expected output: Middle index is 1

findBalanceIndex([1,3,5,7,9])
// Expected output: Middle index is 3

findBalanceIndex([3, 6, 8, 1, 5, 10, 1, 7])
// Expected output: Middle index is 4

findBalanceIndex([3, 5, 6])
// Expected output: Index not found
