package com.avast.android.mobilesecurity.app.scanner;

import android.content.Context;
import android.content.res.Resources;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.avast.android.mobilesecurity.engine.v;
import com.avast.android.mobilesecurity.engine.x;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class ac extends BaseAdapter
{
  Context a;
  Map b;
  List c;

  public ac(Context paramContext)
  {
    this.a = paramContext;
    this.c = new ArrayList();
    this.b = new HashMap();
  }

  private String a(v paramv, String paramString)
  {
    String str2;
    if (!TextUtils.isEmpty(paramString))
    {
      int i = paramString.indexOf('|');
      if (i > 0)
        paramString = paramString.substring(0, i);
      str2 = this.a.getString(ai.a(paramv));
    }
    for (String str1 = this.a.getString(2131493427, new Object[] { str2, paramString }); ; str1 = "")
      return str1;
  }

  private String a(x paramx, v paramv, String paramString)
  {
    if ((paramx == x.j) || (paramx == x.l) || (paramx == x.k) || (paramx == x.d));
    for (String str = a(paramv, paramString); ; str = this.a.getString(ai.a(paramx)))
      return str;
  }

  private void a(int paramInt, ad paramad)
  {
    List localList = (List)this.b.get(this.c.get(paramInt));
    ae localae1 = (ae)localList.get(0);
    paramad.a.setText(localae1.c);
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      ae localae2 = (ae)localIterator.next();
      localStringBuilder.append(a(localae2.e, localae2.f, localae2.d));
      localStringBuilder.append("<br/>");
    }
    if (localStringBuilder.length() > 5)
      localStringBuilder.delete(-5 + localStringBuilder.length(), localStringBuilder.length());
    paramad.b.setText(Html.fromHtml(localStringBuilder.toString()));
    if (localae1.e != x.l)
      paramad.a.setTextColor(this.a.getResources().getColor(2131296274));
    while (true)
    {
      return;
      paramad.a.setTextColor(this.a.getResources().getColor(2131296273));
    }
  }

  public void a(List paramList, Map paramMap)
  {
    this.c.clear();
    this.b.clear();
    if ((paramList == null) || (paramMap == null))
      notifyDataSetInvalidated();
    while (true)
    {
      return;
      this.c.addAll(paramList);
      this.b.putAll(paramMap);
      notifyDataSetChanged();
    }
  }

  public int getCount()
  {
    return this.c.size();
  }

  public Object getItem(int paramInt)
  {
    return this.b.get(this.c.get(paramInt));
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ad localad2;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(this.a).inflate(2130903177, paramViewGroup, false);
      localad2 = new ad(this, null);
      localad2.a = ((TextView)paramView.findViewById(2131165504));
      localad2.b = ((TextView)paramView.findViewById(2131165619));
      paramView.setTag(localad2);
    }
    for (ad localad1 = localad2; ; localad1 = (ad)paramView.getTag())
    {
      a(paramInt, localad1);
      return paramView;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.ac
 * JD-Core Version:    0.6.2
 */