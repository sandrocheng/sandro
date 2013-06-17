package com.avg.ui.general.d;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.avg.ui.general.o;
import java.util.ArrayList;

public class g extends com.avg.ui.general.b.b
{
  private int d = -1;

  public g(b paramb, Context paramContext, ArrayList paramArrayList, Activity paramActivity)
  {
    super(paramContext, paramArrayList);
  }

  public void a(int paramInt)
  {
    this.d = paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = super.getView(paramInt, paramView, paramViewGroup);
    com.avg.ui.general.b.d locald = new com.avg.ui.general.b.d(this);
    locald.e = ((LinearLayout)localView.findViewById(com.avg.ui.general.d.ll_selection));
    locald.c = ((TextView)localView.findViewById(com.avg.ui.general.d.summary));
    locald.a = ((ImageView)localView.findViewById(com.avg.ui.general.d.icon));
    locald.b = ((TextView)localView.findViewById(com.avg.ui.general.d.title));
    if (o.c())
    {
      if (paramInt != this.d)
        break label158;
      localView.setBackgroundResource(com.avg.ui.general.b.selected_list_item_bg);
      locald.e.setVisibility(0);
    }
    while (true)
    {
      locald.c.setVisibility(8);
      locald.a.setVisibility(8);
      locald.b.setPadding(this.c, this.b, 0, this.b);
      return localView;
      label158: localView.setBackgroundResource(com.avg.ui.general.b.transparent);
      locald.e.setVisibility(4);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.d.g
 * JD-Core Version:    0.6.2
 */