package com.avg.ui.general.b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.avg.ui.general.c.i;

public class a extends BaseAdapter
{
  protected boolean c = true;
  protected int d;
  protected int e;
  protected int f = -1;

  public a(Context paramContext)
  {
    int i = i.a(paramContext);
    this.d = (i * 10 / 160);
    this.e = (i * 15 / 160);
  }

  public void a(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }

  public int getCount()
  {
    return 0;
  }

  public Object getItem(int paramInt)
  {
    return null;
  }

  public long getItemId(int paramInt)
  {
    return 0L;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.b.a
 * JD-Core Version:    0.6.2
 */