package com.avg.ui.general.b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;

public class g extends a
{
  protected ArrayList b;

  public g(Context paramContext, ArrayList paramArrayList)
  {
    super(paramContext);
    this.b = paramArrayList;
  }

  public void a(Context paramContext, i parami, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    parami.a.setImageResource(paramInt2);
    parami.b.setText(paramContext.getString(paramInt3));
    parami.c.setText(paramContext.getString(paramInt4));
    if (paramInt5 != -1)
    {
      parami.e.setImageResource(paramInt5);
      parami.e.setVisibility(0);
    }
    while (true)
    {
      parami.g = paramInt1;
      return;
      parami.e.setVisibility(8);
    }
  }

  public int getCount()
  {
    if (this.b != null);
    for (int i = this.b.size(); ; i = 0)
      return i;
  }

  public Object getItem(int paramInt)
  {
    return null;
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.b.g
 * JD-Core Version:    0.6.2
 */