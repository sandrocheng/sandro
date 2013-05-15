package com.avast.android.mobilesecurity.app.widget;

import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.mobilesecurity.app.home.StartActivity;

class b
  implements View.OnClickListener
{
  b(WidgetControlBigActivity paramWidgetControlBigActivity)
  {
  }

  public void onClick(View paramView)
  {
    StartActivity.call(this.a);
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.widget.b
 * JD-Core Version:    0.6.2
 */