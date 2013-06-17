package com.antivirus.ui.callmessagefilter.b;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

public class a extends com.antivirus.ui.callmessagefilter.a
{
  public a(Context paramContext, List paramList)
  {
    super(paramContext, 2131230867, paramList);
    this.a = paramList;
  }

  protected List a(String paramString)
  {
    String[] arrayOfString = paramString.split(";");
    ArrayList localArrayList = new ArrayList();
    int i = arrayOfString.length;
    for (int j = 0; j < i; j++)
      localArrayList.add(d.valueOf(arrayOfString[j]));
    return localArrayList;
  }

  protected void a(View paramView, b paramb)
  {
    ((TextView)paramView.findViewById(2131230861)).setText(paramb.k());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.b.a
 * JD-Core Version:    0.6.2
 */