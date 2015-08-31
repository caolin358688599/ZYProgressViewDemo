##主要是为了在以后开发中方便快捷的生成进度条：

<p align="center">

<img src = "http://7xity5.com5.z0.glb.qiniucdn.com/8e4789ed6bb60f6daefb5dc1c5a334a1">
<img src = "http://7xity5.com5.z0.glb.qiniucdn.com/8bd85a731e06ff83b51828f743bb8aa1">
<img src ="http://7xity5.com5.z0.glb.qiniucdn.com/a671ed15bb40deb8cd4102697044f39c" alt = "进度条" title = "进度条">
</p>

用法：

只需要在ViewController里面遵守dataSource和delegate协议即可
其中dataSource里面的三个方法，是必须实现的，delegate里面的方法是可选的，

如果，需要调整进度条的间距、normal和highlighted颜色，可以通过delegate里面的方法进行配置。