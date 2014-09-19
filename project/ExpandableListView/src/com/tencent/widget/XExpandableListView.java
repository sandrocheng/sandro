package com.tencent.widget;

import android.content.Context;
import android.util.AttributeSet;

public class XExpandableListView extends ExpandableListView
{
    public XExpandableListView(Context context)
    {
        this(context, null);
    }
    
    public XExpandableListView(Context context, AttributeSet attrs)
    {
        this(context, attrs, android.R.attr.expandableListViewStyle);
    }

    public XExpandableListView(Context context, AttributeSet attrs, int defStyle)
    {
        super(context, attrs, defStyle);
        mOverscrollDistance = Integer.MAX_VALUE;
        // 关掉边界动画
        setEdgeEffectEnabled(false);
    }

}
