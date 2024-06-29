from collections import deque
from typing import Dict, List


class Solution:
    def canVisitAllRooms(self, rooms: List[List[int]]) -> bool:
        roomAndVisited: Dict[int: bool] = {i: False for (i, _) in enumerate(rooms)}
        queue = deque([0])

        while queue:
            roomToVisit = queue.pop()
            roomAndVisited[roomToVisit] = True
            keysInRoom = rooms[roomToVisit]

            for key in keysInRoom:
                if key not in queue and roomAndVisited[key] == False:
                    queue.append(key)                    
        
        return False not in roomAndVisited.values()