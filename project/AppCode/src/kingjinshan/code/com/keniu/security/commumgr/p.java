package com.keniu.security.commumgr;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class p extends BaseAdapter
  implements CompoundButton.OnCheckedChangeListener
{
  private LayoutInflater b;
  private List c;

  public p(OnekeyCallSettingActivity paramOnekeyCallSettingActivity, Context paramContext)
  {
    this.b = LayoutInflater.from(paramContext);
    this.c = new ArrayList();
  }

  public final int a(String paramString)
  {
    int i = 0;
    if (i < this.c.size())
    {
      String str = (String)((Map)this.c.get(i)).get("num");
      if ((str == null) || (str.compareTo(paramString) != 0));
    }
    for (int j = i; ; j = -1)
    {
      return j;
      i++;
      break;
    }
  }

  public final void a()
  {
    for (int i = this.c.size() - 1; i >= 0; i--)
      this.c.remove(i);
  }

  public final void a(Object paramObject, String paramString1, String paramString2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("img", paramObject);
    localHashMap.put("name", paramString1);
    localHashMap.put("num", paramString2);
    this.c.add(localHashMap);
  }

  public final boolean a(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < this.c.size()))
      this.c.remove(paramInt);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean b(int paramInt)
  {
    Map localMap = (Map)getItem(paramInt);
    Boolean localBoolean;
    if (localMap != null)
    {
      localBoolean = (Boolean)localMap.get("chk");
      if (localBoolean == null);
    }
    for (boolean bool = localBoolean.booleanValue(); ; bool = false)
      return bool;
  }

  public final boolean c(int paramInt)
  {
    Map localMap = (Map)getItem(paramInt);
    if (localMap != null)
      localMap.put("chk", Boolean.valueOf(false));
    return false;
  }

  public final int getCount()
  {
    return this.c.size();
  }

  public final Object getItem(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < this.c.size()));
    for (Object localObject = this.c.get(paramInt); ; localObject = null)
      return localObject;
  }

  public final long getItemId(int paramInt)
  {
    return 0L;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Map localMap = (Map)getItem(paramInt);
    Object localObject;
    if (localMap == null)
    {
      localObject = null;
      return localObject;
    }
    View localView;
    q localq1;
    label141: label196: String str1;
    if (paramView == null)
    {
      localView = this.b.inflate(2130903066, null);
      q localq2 = new q(this);
      localq2.a = ((ImageView)localView.findViewById(2131230896));
      localq2.b = ((TextView)localView.findViewById(2131230899));
      localq2.c = ((TextView)localView.findViewById(2131230900));
      localq2.d = ((CheckBox)localView.findViewById(2131230897));
      localMap.put("chk", Boolean.valueOf(false));
      localq2.d.setChecked(false);
      localView.setTag(localq2);
      localq1 = localq2;
      localq1.d.setTag(localMap);
      localq1.d.setOnCheckedChangeListener(this);
      Boolean localBoolean = (Boolean)localMap.get("chk");
      if ((localBoolean == null) || (!localBoolean.booleanValue()))
        break label339;
      localq1.d.setChecked(true);
      Drawable localDrawable = (Drawable)localMap.get("img");
      localq1.a.setBackgroundDrawable(localDrawable);
      str1 = (String)localMap.get("name");
      if (str1 != null)
        break label358;
    }
    label339: label358: for (String str2 = ""; ; str2 = str1)
    {
      String str3 = (String)localMap.get("num");
      if (str3 == null);
      for (String str4 = ""; ; str4 = str3)
      {
        if ((str4.length() > 3) && (str4.charAt(0) == '%'))
          str4 = str4.replace("%2B", "+");
        localq1.b.setText(str2);
        localq1.c.setText(str4);
        localObject = localView;
        break;
        localq1 = (q)paramView.getTag();
        localView = paramView;
        break label141;
        localq1.d.setChecked(false);
        break label196;
      }
    }
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    Map localMap = (Map)paramCompoundButton.getTag();
    if (localMap != null)
      localMap.put("chk", Boolean.valueOf(paramBoolean));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.p
 * JD-Core Version:    0.6.2
 */