package com.tencent.qqpimsecure.ui.activity;

import ael;
import aen;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
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
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;

public class SyncMobileRegisterActivity extends BaseUIActivity
{
  private a a;
  private boolean b = true;

  public BaseView getView()
  {
    this.a = new a(this);
    return this.a;
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (!this.b)
        break label18;
      finish();
    }
    while (true)
    {
      return true;
      label18: this.b = true;
      this.a.a(true);
    }
  }

  public final class a extends BaseView
  {
    private LinearLayout b;
    private TextView c;
    private EditText d;
    private EditText e;
    private EditText f;
    private LinearLayout g;
    private CheckBoxView h;
    private String i = "86";

    public a(Context arg2)
    {
      super(2130903259);
    }

    public final void a(boolean paramBoolean)
    {
      if (paramBoolean)
      {
        this.b.setVisibility(0);
        this.d.setVisibility(0);
        this.g.setVisibility(0);
        this.e.setVisibility(8);
        this.f.setVisibility(8);
      }
      while (true)
      {
        return;
        this.b.setVisibility(8);
        this.d.setVisibility(8);
        this.g.setVisibility(8);
        this.e.setVisibility(0);
        this.f.setVisibility(0);
      }
    }

    public final boolean onContextItemSelected(MenuItem paramMenuItem)
    {
      return false;
    }

    public final void onCreate()
    {
      super.onCreate();
      this.b = ((LinearLayout)findViewById(2131231402));
      this.c = ((TextView)findViewById(2131231403));
      this.d = ((EditText)findViewById(2131231404));
      this.e = ((EditText)findViewById(2131231405));
      this.f = ((EditText)findViewById(2131231412));
      this.g = ((LinearLayout)findViewById(2131231413));
      this.h = ((CheckBoxView)findViewById(2131231414));
      this.h.setChecked(true);
      findViewById(2131231402).setOnClickListener(new ael(this));
      findViewById(2131231416).setOnClickListener(new aen(this));
      String str = this.mContext.getResources().getString(2131428858);
      SpannableString localSpannableString = new SpannableString(str);
      localSpannableString.setSpan(new a(), 3, -1 + str.length(), 33);
      localSpannableString.setSpan(new ForegroundColorSpan(this.mContext.getResources().getColor(2131296289)), 3, -1 + str.length(), 34);
      TextView localTextView = (TextView)findViewById(2131231415);
      localTextView.setMovementMethod(LinkMovementMethod.getInstance());
      localTextView.setText(localSpannableString);
      localTextView.setMovementMethod(LinkMovementMethod.getInstance());
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
      Intent localIntent = new Intent(this.mContext, SyncMobileAccountLoginActivity.class);
      localIntent.setFlags(67108864);
      this.mContext.startActivity(localIntent);
      SyncMobileRegisterActivity.this.finish();
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
    }

    protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
    {
      paramFrameworkTemplateUI.setTitleTextData(2131427662);
      paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
      paramFrameworkTemplateUI.setOptionButtonWithImageResource(2130838309);
    }

    final class a extends ClickableSpan
    {
      private int a = 2131231415;

      public a()
      {
        TextPaint localTextPaint = new TextPaint();
        localTextPaint.linkColor = -1;
        updateDrawState(localTextPaint);
      }

      public final void onClick(View paramView)
      {
        switch (this.a)
        {
        default:
        case 2131231415:
        }
        while (true)
        {
          return;
          SyncMobileRegisterActivity.a.n(SyncMobileRegisterActivity.a.this);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.SyncMobileRegisterActivity
 * JD-Core Version:    0.6.2
 */