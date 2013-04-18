package com.ijinshan.bootmanager.activity;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.ForegroundColorSpan;
import android.widget.TextView;

public class AutoBootHelpActivity extends Activity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903073);
    ((TextView)findViewById(2131230727)).setText(getString(2131428743));
    ((TextView)findViewById(2131230728)).setVisibility(8);
    SpannableString localSpannableString = new SpannableString(getString(2131428770));
    localSpannableString.setSpan(new a(this), localSpannableString.length() - 44, localSpannableString.length(), 17);
    localSpannableString.setSpan(new ForegroundColorSpan(getResources().getColor(2131296283)), localSpannableString.length() - 44, localSpannableString.length(), 34);
    ((TextView)findViewById(2131230932)).setText(localSpannableString);
    ((TextView)findViewById(2131230932)).setMovementMethod(LinkMovementMethod.getInstance());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.bootmanager.activity.AutoBootHelpActivity
 * JD-Core Version:    0.6.2
 */