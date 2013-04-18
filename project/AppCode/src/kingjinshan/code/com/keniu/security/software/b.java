package com.keniu.security.software;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.Button;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.keniu.security.util.ax;

final class b extends Handler
{
  b(APKManagerActivity paramAPKManagerActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 0:
    case 1:
    case 4:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      new n(this.a, APKManagerActivity.p(this.a)).start();
      continue;
      APKManagerActivity.q(this.a).setVisibility(8);
      APKManagerActivity.o(this.a).setVisibility(8);
      APKManagerActivity.a(this.a).setVisibility(8);
      APKManagerActivity.r(this.a).setVisibility(8);
      APKManagerActivity.d(this.a).setVisibility(8);
      APKManagerActivity.s(this.a).setVisibility(8);
      APKManagerActivity.t(this.a).setText(2131428733);
      APKManagerActivity.t(this.a).setVisibility(0);
      continue;
      Bundle localBundle = paramMessage.getData();
      TextView localTextView2 = APKManagerActivity.s(this.a);
      String str2 = this.a.getString(2131428735);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = String.valueOf(localBundle.getCharArray("path"));
      localTextView2.setText(String.format(str2, arrayOfObject2));
      continue;
      APKManagerActivity.q(this.a).setVisibility(8);
      APKManagerActivity.o(this.a).setVisibility(8);
      APKManagerActivity.a(this.a).setVisibility(8);
      APKManagerActivity.r(this.a).setVisibility(8);
      APKManagerActivity.d(this.a).setVisibility(8);
      APKManagerActivity.s(this.a).setVisibility(8);
      APKManagerActivity.t(this.a).setText(2131428734);
      APKManagerActivity.t(this.a).setVisibility(0);
      continue;
      APKManagerActivity.q(this.a).setVisibility(8);
      APKManagerActivity.r(this.a).setVisibility(0);
      APKManagerActivity.d(this.a).setVisibility(0);
      APKManagerActivity.t(this.a).setVisibility(8);
      APKManagerActivity.s(this.a).setVisibility(8);
      TextView localTextView1 = APKManagerActivity.o(this.a);
      String str1 = this.a.getString(2131428728);
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(APKManagerActivity.j(this.a) + APKManagerActivity.k(this.a));
      arrayOfObject1[1] = ax.f(APKManagerActivity.i(this.a));
      localTextView1.setText(String.format(str1, arrayOfObject1));
      APKManagerActivity.a(this.a).setAdapter(APKManagerActivity.f(this.a));
      APKManagerActivity.a(this.a).invalidateViews();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.b
 * JD-Core Version:    0.6.2
 */