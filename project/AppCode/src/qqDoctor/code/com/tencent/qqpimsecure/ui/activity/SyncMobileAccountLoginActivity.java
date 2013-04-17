package com.tencent.qqpimsecure.ui.activity;

import aec;
import aed;
import aef;
import aeg;
import aeh;
import aei;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import ba;
import cd;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import da;
import de;
import ha;
import ho;
import nd;

public class SyncMobileAccountLoginActivity extends BaseUIActivity
{
  private int a = -1000;

  public BaseView getView()
  {
    this.a = getIntent().getIntExtra("JOB_KEY", -1000);
    return new a(this, this.a);
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (this.a != -1000))
    {
      Intent localIntent = new Intent();
      localIntent.putExtra("JOB_KEY", this.a);
      setResult(0, localIntent);
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public final class a extends BaseView
  {
    private TextView b;
    private EditText c;
    private EditText d;
    private ButtonView e;
    private Dialog f;
    private cd g = null;
    private ho h;
    private int i = -1000;
    private String j = "86";
    private Handler k = new aec(this);

    public a(Context paramInt, int arg3)
    {
      super(2130903257);
      int m;
      this.i = m;
    }

    private void a(String paramString1, String paramString2)
    {
      if ((paramString1 == null) || ("".equals(paramString1)))
        ha.a(this.mContext, 2131427607);
      while (true)
      {
        return;
        if ((paramString2 == null) || ("".equals(paramString2)))
        {
          ha.a(this.mContext, 2131427608);
        }
        else
        {
          this.f = new Dialog(this.mContext);
          this.f.addProgressDialog();
          this.f.setTitle(2131427567);
          this.f.setMessage(2131427570);
          this.f.setNeutralButton(2131427379, new aei(this), 2);
          this.f.show();
          byte[] arrayOfByte = de.a(paramString2);
          this.g.b(paramString1, arrayOfByte);
        }
      }
    }

    public final void a()
    {
      if ((this.f != null) && (this.f.isShowing()))
      {
        this.f.dismiss();
        this.f = null;
      }
    }

    public final void onBackClick()
    {
      if ((this.i == 70001) || (this.i == 70002) || (this.i == 70003))
      {
        Intent localIntent = new Intent();
        localIntent.putExtra("JOB_KEY", this.i);
        getActivity().setResult(0, localIntent);
        getActivity().finish();
      }
      while (true)
      {
        return;
        super.onBackClick();
      }
    }

    public final boolean onContextItemSelected(MenuItem paramMenuItem)
    {
      return false;
    }

    public final void onCreate()
    {
      super.onCreate();
      this.g = new ba(this.mContext, this.k);
      this.h = ho.a();
      this.b = ((TextView)findViewById(2131231403));
      this.c = ((EditText)findViewById(2131231404));
      this.d = ((EditText)findViewById(2131231405));
      findViewById(2131231402).setOnClickListener(new aed(this));
      this.c.addTextChangedListener(new aef(this));
      this.d.addTextChangedListener(new aeg(this));
      this.e = ((ButtonView)findViewById(2131231408));
      this.e.setButtonByType(2);
      this.e.setOnClickListener(new aeh(this));
      this.e.setClickable(false);
      String str1 = this.mContext.getResources().getString(2131428850);
      SpannableString localSpannableString1 = new SpannableString(str1);
      localSpannableString1.setSpan(new a(2131231406), 0, str1.length(), 33);
      localSpannableString1.setSpan(new ForegroundColorSpan(this.mContext.getResources().getColor(2131296289)), 0, str1.length(), 34);
      TextView localTextView1 = (TextView)findViewById(2131231406);
      localTextView1.setMovementMethod(LinkMovementMethod.getInstance());
      localTextView1.setText(localSpannableString1);
      localTextView1.setMovementMethod(LinkMovementMethod.getInstance());
      String str2 = this.mContext.getResources().getString(2131430146);
      SpannableString localSpannableString2 = new SpannableString(str2);
      localSpannableString2.setSpan(new a(2131231407), 0, str2.length(), 33);
      localSpannableString2.setSpan(new ForegroundColorSpan(this.mContext.getResources().getColor(2131296289)), 0, str2.length(), 34);
      TextView localTextView2 = (TextView)findViewById(2131231407);
      localTextView2.setMovementMethod(LinkMovementMethod.getInstance());
      localTextView2.setText(localSpannableString2);
      localTextView2.setMovementMethod(LinkMovementMethod.getInstance());
      if ((this.i != -1000) && (this.i != 1007))
      {
        String str3 = this.c.getText().toString();
        String str4 = this.d.getText().toString();
        if ((str3 != null) && (!"".equals(str3)) && (str4 != null) && (!"".equals(str4)))
          a("+" + this.j + str3, str4);
      }
      nd.a().a(26053);
    }

    public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
    {
    }

    public final boolean onCreateOptionsMenu(Menu paramMenu)
    {
      return false;
    }

    public final void onOptionClick(int paramInt)
    {
      Intent localIntent = new Intent(this.mContext, SyncQQAccountLoginActivity.class);
      localIntent.setFlags(67108864);
      this.mContext.startActivity(localIntent);
      SyncMobileAccountLoginActivity.this.finish();
    }

    public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
    {
      return false;
    }

    public final boolean onPrepareOptionsMenu(Menu paramMenu)
    {
      return false;
    }

    public final void onResume()
    {
      super.onResume();
      if (da.e())
      {
        da.a(false);
        String str1 = da.b();
        String str2 = da.c();
        String str3 = da.d();
        da.a(false);
        this.j = str1;
        this.b.setText("+" + str1);
        this.c.setText(str2);
        this.d.setText(str3);
        a("+" + str1 + str2, str3);
      }
    }

    protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
    {
      paramFrameworkTemplateUI.setTitleTextData(2131427529);
      paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
      paramFrameworkTemplateUI.setOptionButtonWithImageResource(2130838318);
    }

    final class a extends ClickableSpan
    {
      private int a;

      public a(int arg2)
      {
        int i;
        this.a = i;
        TextPaint localTextPaint = new TextPaint();
        localTextPaint.linkColor = -1;
        updateDrawState(localTextPaint);
      }

      public final void onClick(View paramView)
      {
        switch (this.a)
        {
        default:
        case 2131231406:
        case 2131231407:
        }
        while (true)
        {
          return;
          Intent localIntent2 = new Intent(SyncMobileAccountLoginActivity.a.q(SyncMobileAccountLoginActivity.a.this), SyncMobileRegisterActivity.class);
          localIntent2.setFlags(67108864);
          SyncMobileAccountLoginActivity.a.r(SyncMobileAccountLoginActivity.a.this).startActivity(localIntent2);
          SyncMobileAccountLoginActivity.this.finish();
          continue;
          Intent localIntent1 = new Intent(SyncMobileAccountLoginActivity.a.s(SyncMobileAccountLoginActivity.a.this), SyncMobileRegisterActivity.class);
          localIntent1.setFlags(67108864);
          SyncMobileAccountLoginActivity.a.t(SyncMobileAccountLoginActivity.a.this).startActivity(localIntent1);
          SyncMobileAccountLoginActivity.this.finish();
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.SyncMobileAccountLoginActivity
 * JD-Core Version:    0.6.2
 */