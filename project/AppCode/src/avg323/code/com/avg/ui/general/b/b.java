package com.avg.ui.general.b;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import com.avg.ui.general.c.i;
import com.avg.ui.general.e;
import java.util.ArrayList;

public class b extends BaseAdapter
{
  private LayoutInflater a;
  protected int b;
  protected int c;
  private ArrayList d;

  public b(Context paramContext, ArrayList paramArrayList)
  {
    this.a = LayoutInflater.from(paramContext);
    this.d = paramArrayList;
    a(paramContext);
  }

  private void a(Context paramContext)
  {
    int i = i.a(paramContext);
    this.b = (i * 10 / 160);
    this.c = (i * 15 / 160);
  }

  protected void a(int paramInt, c paramc, d paramd)
  {
    if (-1 == paramc.c)
    {
      paramd.a.setVisibility(8);
      paramd.b.setText(paramc.a);
      if (!paramc.e)
        break label140;
      paramd.c.setText(Html.fromHtml(paramc.b), TextView.BufferType.SPANNABLE);
      label52: if (paramc.f != -1)
        paramd.c.setTextColor(paramc.f);
      paramd.d.setVisibility(0);
      if (!c.a(paramc))
        break label167;
      paramd.d.setTag(Boolean.valueOf(paramc.d));
      if (!paramc.d)
        break label154;
      paramd.d.setImageResource(com.avg.ui.general.c.btn_check_on);
    }
    while (true)
    {
      return;
      paramd.a.setImageResource(paramc.c);
      paramd.a.setVisibility(0);
      break;
      label140: paramd.c.setText(paramc.b);
      break label52;
      label154: paramd.d.setImageResource(com.avg.ui.general.c.btn_check_off);
      continue;
      label167: paramd.d.setImageResource(com.avg.ui.general.c.list_goto);
    }
  }

  public void a(ArrayList paramArrayList)
  {
    this.d = paramArrayList;
  }

  public int getCount()
  {
    if (this.d == null);
    for (int i = 0; ; i = this.d.size())
      return i;
  }

  public Object getItem(int paramInt)
  {
    if (this.d == null);
    for (Object localObject = null; ; localObject = (c)this.d.get(paramInt))
      return localObject;
  }

  public long getItemId(int paramInt)
  {
    if (c.b((c)this.d.get(paramInt)) == -1);
    for (long l = paramInt; ; l = c.b((c)this.d.get(paramInt)))
      return l;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    d locald;
    if (paramView == null)
    {
      paramView = this.a.inflate(e.settings_list_item, null);
      locald = new d(this);
      locald.a = ((ImageView)paramView.findViewById(com.avg.ui.general.d.icon));
      locald.b = ((TextView)paramView.findViewById(com.avg.ui.general.d.title));
      locald.c = ((TextView)paramView.findViewById(com.avg.ui.general.d.summary));
      locald.d = ((ImageView)paramView.findViewById(com.avg.ui.general.d.check));
      locald.e = ((LinearLayout)paramView.findViewById(com.avg.ui.general.d.ll_selection));
      paramView.setTag(locald);
    }
    while (true)
    {
      a(paramInt, (c)this.d.get(paramInt), locald);
      return paramView;
      locald = (d)paramView.getTag();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.b.b
 * JD-Core Version:    0.6.2
 */