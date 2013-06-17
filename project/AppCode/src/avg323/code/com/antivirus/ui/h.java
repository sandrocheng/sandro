package com.antivirus.ui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.antivirus.m;
import com.avg.ui.general.b.a;
import java.util.ArrayList;

public class h extends a
{
  protected ArrayList a;

  public h(Context paramContext, ArrayList paramArrayList)
  {
    super(paramContext);
    this.a = paramArrayList;
  }

  public void a(Context paramContext, j paramj, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    paramj.a.setImageResource(paramInt2);
    paramj.b.setText(m.a(paramContext, paramInt3));
    paramj.d.setText(m.a(paramContext, paramInt4));
    if (paramInt5 != -1)
    {
      paramj.f.setImageResource(paramInt5);
      paramj.f.setVisibility(0);
    }
    while (true)
    {
      paramj.h = paramInt1;
      return;
      paramj.f.setVisibility(8);
    }
  }

  public int getCount()
  {
    if (this.a != null);
    for (int i = this.a.size(); ; i = 0)
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
 * Qualified Name:     com.antivirus.ui.h
 * JD-Core Version:    0.6.2
 */