

class Solution:
    def sortPeople(self, names: list[str], heights: list[int]) -> list[str]:

        people = list(zip(names, heights))
        people.sort(key=lambda x: x[1], reverse=True)

        return [person[0] for person in people]

