package com.avast.android.mobilesecurity.filebrowser;

import android.content.Context;
import android.os.Handler;
import android.text.format.DateUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.avast.android.generic.util.ac;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class a extends com.avast.android.generic.filebrowser.a
{
  private Map e = new HashMap();
  private ac f;
  private Handler g;

  public a(Context paramContext, List paramList, String paramString, com.avast.android.generic.filebrowser.d paramd)
  {
    super(paramContext, paramList, paramString, paramd);
    this.f = new ac(paramContext);
    this.g = new Handler();
  }

  private void a(com.avast.android.generic.filebrowser.f paramf, f paramf1)
  {
    String str = paramf.b();
    ImageView localImageView = paramf1.a;
    int i;
    Long localLong1;
    label123: Long localLong2;
    if (paramf.e())
    {
      i = 2130837739;
      localImageView.setImageResource(i);
      paramf1.b.setText(paramf.a());
      paramf1.g.setText(DateUtils.formatDateTime(this.a, paramf.f(), 131093));
      paramf1.c.setText(null);
      localLong1 = paramf.a(null);
      if (localLong1 != null)
        break label195;
      paramf1.c.setVisibility(8);
      paramf1.d.setVisibility(0);
      paramf.a(new b(this, str));
      paramf1.e.setText(null);
      if (!paramf.e())
        break label215;
      localLong2 = paramf.a(null);
      if (localLong2 != null)
        break label205;
      paramf1.e.setVisibility(8);
      paramf1.f.setVisibility(0);
      paramf.a(new d(this, str));
    }
    while (true)
    {
      return;
      i = 2130837738;
      break;
      label195: a(paramf1, localLong1);
      break label123;
      label205: b(paramf1, localLong2);
      continue;
      label215: paramf1.e.setVisibility(8);
      paramf1.f.setVisibility(8);
    }
  }

  private void a(f paramf, Long paramLong)
  {
    paramf.c.setVisibility(0);
    paramf.d.setVisibility(8);
    paramf.c.setText(this.f.a(paramLong.longValue()));
  }

  private void a(String paramString, f paramf)
  {
    if ((paramf.h != null) && (this.e.containsKey(paramf.h)))
      ((List)this.e.get(paramf.h)).remove(paramf);
    paramf.h = paramString;
    if (this.e.containsKey(paramString))
      ((List)this.e.get(paramString)).add(paramf);
    while (true)
    {
      return;
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(paramf);
      this.e.put(paramString, localArrayList);
    }
  }

  private void b(f paramf, Long paramLong)
  {
    paramf.e.setVisibility(0);
    paramf.f.setVisibility(8);
    paramf.e.setText(paramLong.toString());
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    com.avast.android.generic.filebrowser.f localf = a(paramInt);
    f localf1;
    if (paramView == null)
    {
      paramView = this.b.inflate(2130903164, paramViewGroup, false);
      localf1 = new f(paramView);
      paramView.setTag(localf1);
    }
    while (true)
    {
      a(localf.b(), localf1);
      a(localf, localf1);
      return paramView;
      localf1 = (f)paramView.getTag();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.filebrowser.a
 * JD-Core Version:    0.6.2
 */