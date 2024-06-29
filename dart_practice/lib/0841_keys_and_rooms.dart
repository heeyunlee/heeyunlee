import 'dart:collection';

/// [841. Keys and Rooms](https://leetcode.com/problems/keys-and-rooms/description)
///
/// There are n rooms labeled from 0 to n - 1 and all the rooms are locked except
/// for room 0. Your goal is to visit all the rooms. However, you cannot enter a
/// locked room without having its key.
///
/// When you visit a room, you may find a set of distinct keys in it. Each key
/// has a number on it, denoting which room it unlocks, and you can take all of
/// them with you to unlock the other rooms.
///
/// Given an array rooms where rooms[i] is the set of keys that you can obtain
/// if you visited room i, return true if you can visit all the rooms, or false
/// otherwise.
///
/// ### Example 1:
///
/// - Input: rooms = [[1],[2],[3],[]]
/// - Output: true
///
/// ### Explanation:
/// - We visit room 0 and pick up key 1.
/// - We then visit room 1 and pick up key 2.
/// - We then visit room 2 and pick up key 3.
/// - We then visit room 3.
/// - Since we were able to visit every room, we return true.
///
class Solution841 {
  bool canVisitAllRooms(List<List<int>> rooms) {
    Map<int, bool> roomAndVisited = {
      for (int i = 0; i < rooms.length; i++) i: false,
    };
    Queue<int> queue = Queue();
    queue.add(0);

    while (queue.isNotEmpty) {
      final visitedRoom = queue.removeFirst();
      roomAndVisited[visitedRoom] = true;
      final keysFound = rooms[visitedRoom];

      for (final key in keysFound) {
        if (roomAndVisited[key] == false && !queue.contains(key)) {
          queue.add(key);
        }
      }
    }

    return roomAndVisited.values.every((e) => e);
  }
}
