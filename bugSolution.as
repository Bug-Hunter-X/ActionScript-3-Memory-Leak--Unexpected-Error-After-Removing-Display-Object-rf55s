function onEnterFrame(event:Event):void {
  // ... some code ...
  if (someCondition) {
    removeChild(myObject);
    myObject = null; // This line fixes the memory leak
  }
  // ... more code ...
}