<center>阅读Cocos Creator源码遇到的一些问题或者方法</center>

1. class里的一些声明 ``` private declare _frameCB: (time: number) => void; ```。<br>
   + declare好像是为了在严格模式下没有报错提示...
2. [type和interface区别](https://www.jb51.net/article/163299.htm)
    ``` typescript 
    export const EventTarget = Eventify(Empty);
    export type EventTarget = InstanceType<typeof EventTarget>;
    ```
3. 
   