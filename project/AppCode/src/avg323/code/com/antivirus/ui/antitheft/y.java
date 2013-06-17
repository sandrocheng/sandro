package com.antivirus.ui.antitheft;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.i;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.antivirus.m;
import com.avg.toolkit.UID.a;

public class y extends Fragment
{
  public static void a(Context paramContext, View paramView)
  {
    String str1 = new a(paramContext).a();
    if (str1 == null)
      throw new IllegalStateException("bas state, how can we not have a UUID at this stage?");
    String str2 = str1.substring(-10 + str1.length(), str1.length());
    ((TextView)paramView.findViewById(2131230756)).setText(m.a(paramContext, 2131296712).replace("[password]", str2));
    ((TextView)paramView.findViewById(2131230758)).setText(m.a(paramContext, 2131296714).replace("[password]", str2));
    ((TextView)paramView.findViewById(2131230759)).setText(m.a(paramContext, 2131296716).replace("[password]", str2));
    ((TextView)paramView.findViewById(2131230760)).setText(m.a(paramContext, 2131296718).replace("[password]", str2));
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView;
    if (paramViewGroup == null)
      localView = null;
    while (true)
    {
      return localView;
      localView = paramLayoutInflater.inflate(2130903045, paramViewGroup, false);
      a(h().getApplicationContext(), localView);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.antitheft.y
 * JD-Core Version:    0.6.2
 */