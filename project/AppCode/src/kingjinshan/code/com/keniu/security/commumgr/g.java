package com.keniu.security.commumgr;

import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

final class g
  implements View.OnClickListener
{
  g(NumLocateQueryActivity paramNumLocateQueryActivity)
  {
  }

  public final void onClick(View paramView)
  {
    String str = NumLocateQueryActivity.a(this.a).getText().toString();
    if (TextUtils.isEmpty(str))
      NumLocateQueryActivity.b(this.a);
    while (true)
    {
      return;
      NumLocateQueryActivity.a(this.a, str);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.g
 * JD-Core Version:    0.6.2
 */