package com.ijinshan.bootmanager.activity;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import android.widget.Toast;
import java.util.List;

final class n extends ClickableSpan
{
  boolean a = false;

  public n(AutoBootMangerActivity paramAutoBootMangerActivity, boolean paramBoolean)
  {
    this.a = paramBoolean;
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://bbs.duba.net/thread-22646216-1-1.html"));
    if (AutoBootMangerActivity.D(this.b).queryIntentActivities(localIntent, 0).size() == 0)
      Toast.makeText(this.b, 2131428602, 0).show();
    while (true)
    {
      return;
      this.b.startActivity(localIntent);
    }
  }

  public final void updateDrawState(TextPaint paramTextPaint)
  {
    paramTextPaint.setColor(2131296283);
    paramTextPaint.setUnderlineText(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.bootmanager.activity.n
 * JD-Core Version:    0.6.2
 */