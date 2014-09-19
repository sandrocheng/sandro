/**
 * Name        : PinnedHeaderListView.java
 * Copyright   : Copyright (c) Tencent Inc. All rights reserved.
 * Description : TODO
 */
package com.tencent.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;

public class PinnedHeaderExpandableListView extends XExpandableListView implements AbsListView.OnScrollListener
{

    public interface OnLayoutListener
    {
        public void onLayout(View v, int left, int top, int right, int bottom);
    }

    private static final int PINNED_HEADER_STATE_INVISIBLE = -1;
    private static final int PINNED_HEADER_STATE_PINNED = 0;
    private static final int PINNED_HEADER_STATE_PUSHING_UP = 1;

    private Context mContext = null;
    private ExpandableListAdapter mAdapter = null;
    private View mHeaderView = null;
    private boolean mDispatchTouchEventToHeaderView = false;
    private int mCurHeaderViewState = PINNED_HEADER_STATE_PINNED;
    private int mCurHeaderViewPushUpDistance = 0;

    private OnLayoutListener mOnLayoutListener = null;
    private AbsListView.OnScrollListener mOnScrollListener = null;
    private OnGroupClickListener mOnGroupClickedListener = null;

    public static abstract class ExpandableListAdapter extends android.widget.BaseExpandableListAdapter
    {
        public abstract int getHeaderViewLayoutResourceId();

        public abstract void configHeaderView(View header, int groupPosition);
    }

    public PinnedHeaderExpandableListView(Context context)
    {
        super(context);
        init(context);
    }

    public PinnedHeaderExpandableListView(Context context, AttributeSet attrs)
    {
        super(context, attrs);
        init(context);
    }

    public PinnedHeaderExpandableListView(Context context, AttributeSet attrs, int defStyle)
    {
        super(context, attrs, defStyle);
        init(context);
    }

    @Override
    public void setAdapter(android.widget.ExpandableListAdapter adapter)
    {
        super.setAdapter(adapter);
        if (adapter instanceof ExpandableListAdapter)
        {
            mAdapter = (ExpandableListAdapter) adapter;
            int headerViewLayoutId = mAdapter.getHeaderViewLayoutResourceId();
            if (headerViewLayoutId != 0)
            {
                mHeaderView = LayoutInflater.from(mContext).inflate(headerViewLayoutId, this, false);
                if (mHeaderView != null)
                {
                    mHeaderView.setOnTouchListener(new View.OnTouchListener()
                    {
						@Override
						public boolean onTouch(View v, MotionEvent e) {
							if (e.getAction() == MotionEvent.ACTION_UP) {
								long pos = getExpandableListPosition(getFirstVisiblePosition());
								if (getPackedPositionType(pos) == PinnedHeaderExpandableListView.PACKED_POSITION_TYPE_GROUP
										|| getPackedPositionType(pos) == PinnedHeaderExpandableListView.PACKED_POSITION_TYPE_CHILD) {
									int groupPosition = getPackedPositionGroup(pos);
									if (mOnGroupClickedListener == null
											|| !mOnGroupClickedListener
													.onGroupClick(
															PinnedHeaderExpandableListView.this,
															v,
															groupPosition,
															mAdapter.getGroupId(groupPosition))) {
										PinnedHeaderExpandableListView.this
												.collapseGroup(groupPosition);
									}
								}
							}
							return true;
						}
                    });
                }
                requestLayout();
            }
        }
    }

    public void setOnLayoutListener(OnLayoutListener l)
    {
        mOnLayoutListener = l;
    }

    @Override
    public void setOnGroupClickListener(OnGroupClickListener l)
    {
        mOnGroupClickedListener = l;
        super.setOnGroupClickListener(l);
    }

    @Override
    public void setOnScrollListener(AbsListView.OnScrollListener l)
    {
        mOnScrollListener = l;
    }

    @Override
    public void onScrollStateChanged(AbsListView view, int scrollState)
    {
        if (mOnScrollListener != null)
        {
            mOnScrollListener.onScrollStateChanged(view, scrollState);
        }
    }

    @Override
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount)
    {
        if (mHeaderView != null)
        {
            configHeaderView(firstVisibleItem);
        }
        if (mOnScrollListener != null)
        {
            mOnScrollListener.onScroll(view, firstVisibleItem, visibleItemCount, totalItemCount);
        }
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec)
    {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        if (mHeaderView != null)
        {
			measureChild(mHeaderView, widthMeasureSpec, heightMeasureSpec);
        }
    }

    @Override
    protected void onLayout(boolean changed, int left, int top, int right, int bottom)
    {
        super.onLayout(changed, left, top, right, bottom);
        if (mHeaderView != null)
        {
            configHeaderView(getFirstVisiblePosition());
        }
        if (mOnLayoutListener != null)
        {
            mOnLayoutListener.onLayout(this, left, top, right, bottom);
        }
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent e)
    {
        float x = e.getX();
        float y = e.getY();
        if (mDispatchTouchEventToHeaderView)
        {
            boolean result = mHeaderView != null && mHeaderView.dispatchTouchEvent(e);
            if (e.getAction() == MotionEvent.ACTION_CANCEL || e.getAction() == MotionEvent.ACTION_UP)
            {
                mDispatchTouchEventToHeaderView = false;
            }
            return result;
        }

        if (mHeaderView != null && x >= 0 && x <= mHeaderView.getMeasuredWidth() && y >= 0
                && y <= (mHeaderView.getMeasuredHeight() - mCurHeaderViewPushUpDistance)
                && e.getAction() == MotionEvent.ACTION_DOWN && mHeaderView.getVisibility() == View.VISIBLE
                && mHeaderView.dispatchTouchEvent(e))
        {
            mDispatchTouchEventToHeaderView = true;
            return true;
        }
        else
        {
            return super.dispatchTouchEvent(e);
        }
    }

    @Override
    protected void dispatchDraw(Canvas canvas)
    {
        super.dispatchDraw(canvas);
        if (mHeaderView != null && mHeaderView.getVisibility() == View.VISIBLE)
        {
            drawChild(canvas, mHeaderView, getDrawingTime());
        }
    }

    private void init(Context context)
    {
        mContext = context;
        super.setOnScrollListener(this);
    }

    private void configHeaderView(int firstVisibleItem)
    {
        int firstVisibleItemType = getPackedPositionType(getExpandableListPosition(firstVisibleItem));
        if (firstVisibleItemType != PACKED_POSITION_TYPE_NULL)
        {
            mAdapter.configHeaderView(mHeaderView, getPackedPositionGroup(getExpandableListPosition(firstVisibleItem)));
            if (firstVisibleItemType == PACKED_POSITION_TYPE_GROUP)
            {
                if (getPackedPositionType(getExpandableListPosition(firstVisibleItem + 1)) == PACKED_POSITION_TYPE_GROUP
                        || getPackedPositionType(getExpandableListPosition(firstVisibleItem + 1)) == PACKED_POSITION_TYPE_NULL)
                {
                    mCurHeaderViewState = PINNED_HEADER_STATE_INVISIBLE;
                }
                else
                {
                    mCurHeaderViewState = PINNED_HEADER_STATE_PINNED;
                }
            }
            else
            {
                View v = getChildAt(0);
                if (v.getBottom() > mHeaderView.getMeasuredHeight())
                {
                    mCurHeaderViewState = PINNED_HEADER_STATE_PINNED;
                }
                else
                {
                    if (getPackedPositionType(getExpandableListPosition(firstVisibleItem + 1)) == PACKED_POSITION_TYPE_GROUP)
                    {
                        mCurHeaderViewState = PINNED_HEADER_STATE_PUSHING_UP;
                    }
                    else
                    {
                        mCurHeaderViewState = PINNED_HEADER_STATE_PINNED;
                    }
                }
            }
        }
        else
        {
            mCurHeaderViewState = PINNED_HEADER_STATE_INVISIBLE;

        }
        if (mCurHeaderViewState != PINNED_HEADER_STATE_INVISIBLE)
        {
            if (mCurHeaderViewState == PINNED_HEADER_STATE_PUSHING_UP)
            {
                View childAtOne = getChildAt(1);
                mCurHeaderViewPushUpDistance = mHeaderView.getMeasuredHeight()
                        - (childAtOne != null ? childAtOne.getTop() : 0);

            }
            else
            {
                mCurHeaderViewPushUpDistance = 0;
            }
            mHeaderView.setVisibility(View.VISIBLE);
            int widthSpec = View.MeasureSpec.makeMeasureSpec(mHeaderView.getMeasuredWidth(), View.MeasureSpec.EXACTLY);
            int heightSpec = View.MeasureSpec.makeMeasureSpec(mHeaderView.getMeasuredHeight(), View.MeasureSpec.EXACTLY);
            mHeaderView.measure(widthSpec, heightSpec);
            mHeaderView.layout(0, -mCurHeaderViewPushUpDistance, mHeaderView.getMeasuredWidth(),
                    mHeaderView.getMeasuredHeight() - mCurHeaderViewPushUpDistance);
        }
        else
        {
            mHeaderView.setVisibility(INVISIBLE);
        }
    }
    
    @Override
    protected void drawableStateChanged()
    {
    	super.drawableStateChanged();
    	if(mHeaderView != null)
    	{
    		refreshAllChild(mHeaderView);
    	}
    }
    
    private void refreshAllChild(View view)
    {
    	if(view instanceof ViewGroup)
    	{
    		ViewGroup vg = (ViewGroup) view;
    		for (int i = 0; i < vg.getChildCount(); i++)
			{
				refreshAllChild(vg.getChildAt(i));
			}
    	}
    	view.refreshDrawableState();
    }
    
    /**
	 * @return
	 * @author clarkhuang
	 */
	public View getHeaderView() {
		return mHeaderView;
	}    
}
