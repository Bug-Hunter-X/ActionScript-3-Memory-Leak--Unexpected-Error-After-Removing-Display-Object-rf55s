function onEnterFrame(event:Event):void {
  // ... some code ...
  if (someCondition) {
    removeChild(myObject);
    myObject = null; // Missing this line causes the error
  }
  // ... more code ...
}