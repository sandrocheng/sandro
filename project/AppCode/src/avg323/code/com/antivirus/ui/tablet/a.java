package com.antivirus.ui.tablet;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;

public class a
{
  View a;

  public a(View paramView)
  {
    this.a = paramView;
  }

  public void a(int paramInt1, String paramString, int paramInt2, View.OnClickListener paramOnClickListener)
  {
    Button localButton = (Button)this.a.findViewById(paramInt1);
    if (paramInt2 != -1)
    {
      localButton.setCompoundDrawablesWithIntrinsicBounds(paramInt2, 0, 0, 0);
      localButton.setText(paramString);
      localButton.setOnClickListener(paramOnClickListener);
    }
  }

  public void a(String paramString)
  {
    ((TextView)this.a.findViewById(2131230731)).setText(paramString);
  }

  public void a(String paramString, int paramInt, View.OnClickListener paramOnClickListener)
  {
    a(2131230732, paramString, paramInt, paramOnClickListener);
  }

  public void b(String paramString, int paramInt, View.OnClickListener paramOnClickListener)
  {
    a(2131230730, paramString, paramInt, paramOnClickListener);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.tablet.a
 * JD-Core Version:    0.6.2
 */