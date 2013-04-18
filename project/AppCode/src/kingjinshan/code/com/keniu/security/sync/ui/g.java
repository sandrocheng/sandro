package com.keniu.security.sync.ui;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import android.widget.Toast;
import java.util.List;

final class g extends ClickableSpan
{
  public g(LoginAct paramLoginAct)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://bbs.duba.net/forum-6421-1.html"));
    if (this.a.getPackageManager().queryIntentActivities(localIntent, 0).size() == 0)
      Toast.makeText(this.a, 2131428602, 0).show();
    while (true)
    {
      return;
      this.a.startActivity(localIntent);
    }
  }

  public final void updateDrawState(TextPaint paramTextPaint)
  {
    paramTextPaint.setColor(2131296283);
    paramTextPaint.setUnderlineText(false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.g
 * JD-Core Version:    0.6.2
 */