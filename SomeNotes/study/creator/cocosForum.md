<center>Cocos论坛的一些问题收集</center>

#### 预制体
1. [Scene/Prefab里，自定义组件的__type__是如何计算的？](https://forum.cocos.org/t/scene-prefab---type--/37966)
   + 怎么通过这个type，找到对应的组件的名字？用 cc.js._getClassById，但这个查找操作不应该是用户需要进行的
   + 在编辑器下，可以使用 Editor.UuidUtils.uuid() 获得新的唯一 id;
2. [3.0 TypeScript 问题答疑及经验分享](https://forum.cocos.org/t/topic/106995)
   + 