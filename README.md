# ActionScript 3 Memory Leak Bug

This repository demonstrates a common ActionScript 3 memory leak that can occur when removing display objects from the display list.  The issue arises from not properly nulling the reference to the removed object, preventing garbage collection and potentially leading to performance degradation or unexpected errors.

## Bug Description

The `onEnterFrame` function removes a display object (`myObject`) under certain conditions. However, failing to set `myObject = null;` after removing the object from the display list prevents the garbage collector from reclaiming the memory used by the object. This results in a memory leak and might cause unpredictable behavior over time.

## Solution

The solution involves explicitly setting the reference to the removed display object to `null` after it has been removed from the display list. This allows the garbage collector to properly handle the object's memory.

## How to reproduce the bug

1. Clone this repository.
2. Open `bug.as` in an Actionscript 3 editor/IDE (like FlashDevelop)
3. Run the code
4. Observe the memory usage over time. You may need a memory profiler to confirm the leak.

## How to fix the bug

1. Clone this repository.
2. Open `bugSolution.as` in an Actionscript 3 editor/IDE (like FlashDevelop).
3. Run the code
4. Observe the memory usage over time.  The leak should be resolved. 