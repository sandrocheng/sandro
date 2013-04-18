package com.keniu.security.util;

import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.ListView;
import android.widget.TextView;
import com.ijinshan.kpref.PreferenceActivity;

public class BasePreferenceActivity extends PreferenceActivity
{
  public final void a(Bundle paramBundle, int paramInt)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    getListView().setCacheColorHint(0);
    getListView().setDividerHeight(1);
    getListView().setDivider(getResources().getDrawable(2130838019));
    getListView().setBackgroundResource(2130838013);
    View localView = getLayoutInflater().inflate(2130903309, null);
    ((TextView)localView.findViewById(2131230816)).setText(getTitle());
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    float f = localDisplayMetrics.density;
    if (paramInt == 2131034119);
    for (int i = (int)(5.0F * f); ; i = (int)(43.0F * f))
    {
      ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-1, i);
      if (paramInt != 2131034119)
        addContentView(localView, localLayoutParams);
      getListView().setPadding((int)(0.0F * f), i, (int)(0.0F * f), (int)(f * 5.0F));
      getListView().setSelector(2130837790);
      if (paramInt != 0)
        a(paramInt);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.BasePreferenceActivity
 * JD-Core Version:    0.6.2
 */