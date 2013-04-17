package com.tencent.powermanager.uilib;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;

public class PinnedHeaderListView extends ListView
{
  private a a;
  private View b;
  private boolean c;
  private int d;
  private int e;

  public PinnedHeaderListView(Context paramContext)
  {
    super(paramContext);
  }

  public PinnedHeaderListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public PinnedHeaderListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    try
    {
      super.dispatchDraw(paramCanvas);
      if (this.c)
        drawChild(paramCanvas, this.b, getDrawingTime());
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.b != null)
    {
      this.b.layout(0, 0, this.d, this.e);
      getFirstVisiblePosition();
      if (this.b != null)
        switch (this.a.a())
        {
        default:
        case 0:
        case 1:
        case 2:
        }
    }
    View localView;
    do
    {
      while (true)
      {
        return;
        this.c = false;
        continue;
        if (this.b.getTop() != 0)
          this.b.layout(0, 0, this.d, this.e);
        this.c = true;
      }
      localView = getChildAt(0);
    }
    while (localView == null);
    int i = localView.getBottom();
    int j = this.b.getHeight();
    if (i < j);
    for (int k = i - j; ; k = 0)
    {
      if (this.b.getTop() != k)
        this.b.layout(0, k, this.d, k + this.e);
      this.c = true;
      break;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (this.b != null)
    {
      measureChild(this.b, paramInt1, paramInt2);
      this.d = this.b.getMeasuredWidth();
      this.e = this.b.getMeasuredHeight();
    }
  }

  public void setAdapter(ListAdapter paramListAdapter)
  {
    super.setAdapter(paramListAdapter);
    if ((paramListAdapter instanceof a))
      this.a = ((a)paramListAdapter);
  }

  public void setPinnedHeaderView(View paramView)
  {
    this.b = paramView;
    if (this.b != null)
      setFadingEdgeLength(0);
    requestLayout();
  }

  public static abstract interface a
  {
    public abstract int a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.PinnedHeaderListView
 * JD-Core Version:    0.6.2
 */