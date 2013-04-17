package com.tencent.qqpimsecure.ui.activity;

import ado;
import adp;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.View.OnClickListener;

public class LowSDKwarningActivity extends Activity
  implements View.OnClickListener
{
  private Activity a;
  private Context b;

  public void onClick(View paramView)
  {
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    this.a = this;
    this.b = this;
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(this.b.getResources().getText(2131428335));
    String str1 = (String)this.b.getResources().getText(2131427757);
    int i = 2 + str1.length();
    String str2 = (String)this.b.getResources().getText(2131427758);
    String str3 = System.getProperty("line.separator");
    String str4 = str1 + str3;
    String str5 = str4 + str3;
    String str6 = str5 + str2;
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(str6);
    localSpannableStringBuilder.setSpan(new ForegroundColorSpan(-51422), i, str6.length(), 33);
    localSpannableStringBuilder.setSpan(new AbsoluteSizeSpan(14), i, str6.length(), 33);
    localBuilder.setMessage(localSpannableStringBuilder);
    localBuilder.setPositiveButton(2131427429, new ado(this));
    localBuilder.setNegativeButton(2131427399, new adp(this));
    localBuilder.create().show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.LowSDKwarningActivity
 * JD-Core Version:    0.6.2
 */