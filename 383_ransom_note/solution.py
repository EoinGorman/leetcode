class Solution:
    def canConstruct(self, ransomNote: str, magazine: str) -> bool:
        letters = "".join(set(ransomNote))
        for char in letters:
            if ransomNote.count(char) > magazine.count(char):
                print(f"Not enough {char}'s")
                return False
        return True

sol = Solution()
result = sol.canConstruct('kindofcreepytest', 'studiesshowwritingfakemagazinearticlesinonebighardcodedstringisdumb')
print(f"{result}")