package com.tencent.widget;

import android.view.View;

public interface OverScrollViewListener
{
    /**
     * 标识顶部的view
     */
    public static final int OVERSCROLL_POSITION_TOP = 0;
    /**
     * 标识底部的View
     */
    public static final int OVERSCROLL_POSITION_BOTTOM = 1;
    
    /**
     * 刚到边界, 准备展示
     * @param type
     * @param overScrollerView
     * @param listView
     */
    public void onNotCompleteVisable(int overScrollPosition, View overScrollerView, ListView listView);
    
    /**
     * 完全显示
     * @param type
     * @param overScrollerView
     * @param listView
     */
    public void onViewCompleteVisable(int overScrollPosition, View overScrollerView, ListView listView);
    
    /**
     * 完全显示后, 松开
     * @param type
     * @param overScrollerView
     * @param listView
     * @return 如果需要View保留在头部.则返回true.否则返回false
     */
    public boolean onViewCompleteVisableAndReleased(int overScrollPosition, View overScrollerView, ListView listView);
    
    /**
     * 未完全显示, 松开了
     * @param type
     * @param overScrollerView
     * @param listView
     */
    public void onViewNotCompleteVisableAndReleased(int overScrollPosition, View overScrollerView, ListView listView);
}
