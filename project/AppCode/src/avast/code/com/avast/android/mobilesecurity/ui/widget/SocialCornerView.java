package com.avast.android.mobilesecurity.ui.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import java.util.List;

public class SocialCornerView extends LinearLayout
{
  private static final Uri a = Uri.parse("fb://page/38282497425");
  private static final Uri b = Uri.parse("https://facebook.com/avast");
  private static final Uri c = Uri.parse("https://plus.google.com/102077833873126564701");
  private static final Uri d = Uri.parse("twitter://user/avast_antivirus");
  private static final Uri e = Uri.parse("http://twitter.com/#!/avast_antivirus");
  private static final Uri f = Uri.parse("market://details?id=com.avast.android.mobilesecurity");

  public SocialCornerView(Context paramContext)
  {
    super(paramContext);
  }

  public SocialCornerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public SocialCornerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private Intent a(Uri paramUri)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", paramUri);
    localIntent.addFlags(524288);
    return localIntent;
  }

  private boolean a(Intent paramIntent)
  {
    boolean bool = true;
    if (isInEditMode());
    while (true)
    {
      return bool;
      Log.d("SocialCornerView", "Checking intent availability for uri: " + paramIntent.getDataString());
      List localList = getContext().getPackageManager().queryIntentActivities(paramIntent, 0);
      if ((localList == null) || (localList.size() <= 0))
        bool = false;
    }
  }

  private void f()
  {
    ((ImageButton)findViewById(2131165675)).setOnClickListener(new s(this));
  }

  private void g()
  {
    ((ImageButton)findViewById(2131165676)).setOnClickListener(new t(this));
  }

  private void h()
  {
    ((ImageButton)findViewById(2131165677)).setOnClickListener(new u(this));
  }

  private void i()
  {
    ImageButton localImageButton = (ImageButton)findViewById(2131165678);
    Intent localIntent = a(f);
    if (a(localIntent))
      localImageButton.setOnClickListener(new v(this, localIntent));
    while (true)
    {
      return;
      localImageButton.setVisibility(8);
    }
  }

  protected void onFinishInflate()
  {
    f();
    g();
    h();
    i();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.widget.SocialCornerView
 * JD-Core Version:    0.6.2
 */