package com.tencent.qqpimsecure.ui.activity;

import aeo;
import aeq;
import aer;
import aes;
import aet;
import aeu;
import aev;
import aew;
import aex;
import aey;
import aez;
import afa;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.text.Html;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import az;
import cd;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import ha;
import ho;
import nd;

public class SyncQQAccountLoginActivity extends BaseUIActivity
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
    private ImageView b;
    private EditText c;
    private EditText d;
    private CheckBoxView e;
    private Dialog f;
    private TextView g;
    private ButtonView h;
    private cd i;
    private ho j;
    private int k = -1000;
    private Handler l = new aeo(this);

    public a(Context paramInt, int arg3)
    {
      super(2130903260);
      int m;
      this.k = m;
    }

    private void a(String paramString1, String paramString2)
    {
      new StringBuilder("Processing login[").append(paramString1).append("][").append(paramString2).append("]...").toString();
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
          this.f.setNeutralButton(2131427379, new aey(this), 2);
          this.f.show();
          new aez(this, paramString1, paramString2).start();
        }
      }
    }

    private void b()
    {
      View localView = LayoutInflater.from(this.mContext).inflate(2130903060, null);
      this.b = ((ImageView)localView.findViewById(2131230772));
      this.b.setImageDrawable(this.mContext.getResources().getDrawable(2130837949));
      ((ButtonView)localView.findViewById(2131230773)).setOnClickListener(new aeq(this));
      EditText localEditText = (EditText)localView.findViewById(2131230774);
      new afa(this).start();
      Dialog localDialog = new Dialog(this.mContext);
      localDialog.setTitle(this.mContext.getResources().getString(2131427620));
      localDialog.setView(localView);
      localDialog.setPositiveButton(2131427397, new aer(this, localEditText, localDialog), 2);
      localDialog.setNeutralButton(2131427379, new aes(localDialog), 2);
      localDialog.show();
    }

    public final void a()
    {
      if ((this.f != null) && (this.f.isShowing()))
      {
        this.f.dismiss();
        this.f = null;
      }
    }

    public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
    }

    public final void onBackClick()
    {
      if ((this.k == 70001) || (this.k == 70002) || (this.k == 70003));
      for (int m = 1; ; m = 0)
      {
        if (m != 0)
        {
          Context localContext = this.mContext;
          localContext.startActivity(new Intent(localContext, MainActivity.class));
        }
        super.onBackClick();
        return;
      }
    }

    public final boolean onContextItemSelected(MenuItem paramMenuItem)
    {
      return false;
    }

    public final void onCreate()
    {
      super.onCreate();
      this.i = new az(this.mContext);
      this.j = ho.a();
      this.g = ((TextView)findViewById(2131231424));
      this.c = ((EditText)findViewById(2131231419));
      this.d = ((EditText)findViewById(2131231420));
      this.e = ((CheckBoxView)findViewById(2131231422));
      this.c.addTextChangedListener(new aet(this));
      this.d.addTextChangedListener(new aeu(this));
      this.h = ((ButtonView)findViewById(2131231408));
      this.h.setButtonByType(2);
      this.h.setOnClickListener(new aev(this));
      this.h.setClickable(false);
      int m;
      if (SyncQQAccountLoginActivity.this.getIntent().getBooleanExtra("FIRST_TIME", false))
      {
        findViewById(2131231418).setVisibility(0);
        if ((this.k != 70001) && (this.k != 70002) && (this.k != 70003))
          break label378;
        m = 1;
        label217: if (m == 0)
          break label383;
        TextView localTextView = (TextView)findViewById(2131231423);
        localTextView.setText(Html.fromHtml("<u>" + this.mContext.getString(2131429534) + "</u>"));
        localTextView.setOnClickListener(new aew(this));
        if (this.k == 70003)
          ha.b(this.mContext, 2131429536);
        this.e.setChecked(this.j.bh());
        findViewById(2131231425).setVisibility(0);
        findViewById(2131231421).setVisibility(0);
        findViewById(2131231417).setVisibility(0);
      }
      while (true)
      {
        nd.a().a(26053);
        return;
        findViewById(2131231418).setVisibility(8);
        break;
        label378: m = 0;
        break label217;
        label383: this.g.setVisibility(0);
        this.g.setText(Html.fromHtml("<u>" + this.mContext.getString(2131429535) + "</u>"));
        this.g.setOnClickListener(new aex(this));
        findViewById(2131231425).setVisibility(8);
        findViewById(2131231421).setVisibility(8);
        findViewById(2131231417).setVisibility(8);
        this.e.setChecked(this.j.bh());
        if ((this.k != -1000) && (this.k != 1007))
        {
          String str1 = this.c.getText().toString();
          String str2 = this.d.getText().toString();
          if ((str1 != null) && (!"".equals(str1)) && (str2 != null) && (!"".equals(str2)))
            a(str1, str2);
        }
      }
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
      SyncQQAccountLoginActivity.this.finish();
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

    public final void onStart()
    {
      super.onStart();
      if ((this.k == 70001) || (this.k == 70002) || (this.k == 70003))
        setBackText(2131427329);
    }

    protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
    {
      int m;
      if ((this.k == 70001) || (this.k == 70002) || (this.k == 70003))
      {
        m = 1;
        if (m == 0)
          break label60;
        paramFrameworkTemplateUI.setTitleTextData(2131427541);
        paramFrameworkTemplateUI.setBackButtonStyle((byte)1);
        paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
      }
      while (true)
      {
        return;
        m = 0;
        break;
        label60: paramFrameworkTemplateUI.setTitleTextData(2131427529);
        paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
        paramFrameworkTemplateUI.setOptionButtonWithImageResource(2130838315);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.SyncQQAccountLoginActivity
 * JD-Core Version:    0.6.2
 */