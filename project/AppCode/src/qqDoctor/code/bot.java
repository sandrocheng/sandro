import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Handler;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.ui.activity.HelpListViewActivity;
import com.tencent.qqpimsecure.ui.activity.MainActivity;
import com.tencent.qqpimsecure.ui.activity.SyncAssistantDownloadActivity;
import com.tencent.qqpimsecure.ui.activity.SyncSettingsActivity;
import com.tencent.qqpimsecure.ui.activity.commontools.CommonToolsActivity;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.dialog.ProgressDialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.io.File;

public final class bot extends BaseView
{
  private aw a = null;
  private cf b = new cl(this.mContext);
  private bw c = bw.a(this.mContext);
  private ho d = ho.a();
  private Dialog e;
  private Dialog f;
  private LinearLayout g;
  private TextView h;
  private ImageView i;
  private View j;
  private View k;
  private TextView l;
  private TextView m;
  private boolean n = false;
  private boolean o = false;
  private co p = null;
  private int q = -1000;
  private int r = -1000;
  private boolean s = false;
  private bot.b t;
  private View.OnClickListener u = new bou(this);
  private Handler v = new bpa(this);

  public bot(Context paramContext)
  {
    super(paramContext, 2130903255);
    this.b.a(this.mContext);
    this.a = new aw(this.mContext, this.v);
  }

  private void a(int paramInt)
  {
    this.q = -1000;
    this.n = true;
    this.e = new ProgressDialog(this.mContext, 1);
    this.e.addProgressDialog();
    this.e.setTitle(2131427567);
    this.e.setIconVisibility(8);
    if ((1001 == paramInt) || (1002 == paramInt))
      this.e.setMessage(2131427571);
    while (true)
    {
      this.e.setNeutralButton(2131427379, new bpe(this, paramInt), 2);
      this.e.setCancelable(false);
      this.e.show();
      new bph(this, paramInt).start();
      new bpi(this, paramInt).start();
      return;
      this.e.setMessage(2131427573);
    }
  }

  private void a(boolean paramBoolean)
  {
    Intent localIntent = new Intent(this.mContext, SyncAssistantDownloadActivity.class);
    if (paramBoolean)
      localIntent.putExtra("isStartDownloadImmediatly", true);
    while (true)
    {
      this.mContext.startActivity(localIntent);
      return;
      localIntent.putExtra("isStartDownloadImmediatly", false);
    }
  }

  private boolean a()
  {
    String str = this.mContext.getString(2131427527);
    try
    {
      int i1 = getActivity().getPackageManager().getPackageInfo(str, 16384).versionCode;
      if (i1 >= 549)
      {
        bool = true;
        return bool;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        localNameNotFoundException.printStackTrace();
        boolean bool = false;
      }
    }
  }

  private void b()
  {
    if ((this.p != null) && (this.p.a()))
    {
      TextView localTextView = this.h;
      String str = this.mContext.getString(2131427661);
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(this.p.b);
      arrayOfObject[1] = Integer.valueOf(this.p.c);
      arrayOfObject[2] = Integer.valueOf(this.p.d);
      localTextView.setText(String.format(str, arrayOfObject));
      this.g.setVisibility(0);
      this.t = bot.b.b;
    }
    while (true)
    {
      return;
      if (this.t != bot.b.a)
      {
        this.g.setVisibility(8);
        this.t = bot.b.c;
      }
    }
  }

  private void c()
  {
    int i1 = bn.a(this.mContext).a();
    int i2 = di.a;
    if (this.b.a())
    {
      TextView localTextView2 = this.l;
      String str2 = this.mContext.getString(2131427557);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(i1);
      localTextView2.setText(String.format(str2, arrayOfObject2));
      TextView localTextView3 = this.m;
      String str3 = this.mContext.getString(2131427558);
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(i2);
      localTextView3.setText(String.format(str3, arrayOfObject3));
    }
    while (true)
    {
      return;
      TextView localTextView1 = this.l;
      String str1 = this.mContext.getString(2131427557);
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(i1);
      localTextView1.setText(String.format(str1, arrayOfObject1));
      this.m.setText(String.format(this.mContext.getString(2131427558), new Object[] { "" }));
    }
  }

  private void d()
  {
    View localView = LayoutInflater.from(this.mContext).inflate(2130903079, null);
    EditText localEditText = (EditText)localView.findViewById(2131230820);
    TextView localTextView = (TextView)localView.findViewById(2131230821);
    String str = this.mContext.getResources().getString(2131427665);
    SpannableString localSpannableString = new SpannableString(str);
    localSpannableString.setSpan(new bot.a(), 0, str.length(), 33);
    localSpannableString.setSpan(new ForegroundColorSpan(this.mContext.getResources().getColor(2131296289)), 0, str.length(), 34);
    localTextView.setMovementMethod(LinkMovementMethod.getInstance());
    localTextView.setText(localSpannableString);
    localTextView.setMovementMethod(LinkMovementMethod.getInstance());
    Dialog localDialog = new Dialog(this.mContext);
    localDialog.addProgressDialog();
    localDialog.setTitle(2131427567);
    localDialog.setIconVisibility(8);
    localDialog.setView(localView);
    localDialog.setPositiveButton(2131427397, new boy(this, localEditText, localDialog), 2);
    localDialog.setNeutralButton(2131427379, new boz(localDialog), 2);
    localDialog.show();
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt2 == -1)
    {
      int i1 = paramIntent.getIntExtra("JOB_KEY", -1000);
      this.b = new cl(this.mContext);
      this.b.a(this.mContext);
      a(i1);
    }
  }

  public final void onBackClick()
  {
    Intent localIntent1 = getActivity().getIntent();
    boolean bool = false;
    if (localIntent1 != null)
      bool = localIntent1.getBooleanExtra("extra_back_to_main", false);
    if (bool)
    {
      if ((!gw.c()) && (!gw.b()))
        break label78;
      Context localContext1 = this.mContext;
      Intent localIntent2 = new Intent(localContext1, CommonToolsActivity.class);
      localIntent2.putExtra("extra_back_to_main", true);
      localContext1.startActivity(localIntent2);
    }
    while (true)
    {
      super.onBackClick();
      return;
      label78: Context localContext2 = this.mContext;
      localContext2.startActivity(new Intent(localContext2, MainActivity.class));
    }
  }

  public final void onCreate()
  {
    super.onCreate();
    Bundle localBundle1 = getActivity().getIntent().getExtras();
    int i1;
    if ((localBundle1 != null) && (localBundle1.getBoolean("isReturnFromDownload")))
      i1 = 0;
    while (true)
    {
      if (i1 != 0)
      {
        if (!((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class)).isPackageInstalled(this.mContext.getString(2131427527)))
          break label531;
        if (a())
          nd.a().a(26281);
      }
      try
      {
        Bundle localBundle3 = new Bundle();
        localBundle3.putByte("product", (byte)1);
        localBundle3.putInt("versioncode", 32);
        Intent localIntent = new Intent();
        localIntent.setFlags(270532608);
        localIntent.setAction("com.tencent.qqpim.action_open_qqpim");
        localIntent.addCategory("com.tencent.qqpim.category_open_qqpim");
        localIntent.putExtras(localBundle3);
        this.mContext.startActivity(localIntent);
        getActivity().finish();
        label164: this.j = findViewById(2131231396);
        this.j.setOnClickListener(this.u);
        this.k = findViewById(2131231397);
        this.k.setOnClickListener(this.u);
        this.l = ((TextView)findViewById(2131231399));
        this.m = ((TextView)findViewById(2131231400));
        this.g = ((LinearLayout)findViewById(2131231394));
        this.h = ((TextView)findViewById(2131230803));
        this.h.setOnClickListener(this.u);
        Bundle localBundle2 = getActivity().getIntent().getExtras();
        int i2;
        if ((localBundle2 != null) && (localBundle2.getBoolean("isReturnFromDownload")))
        {
          i2 = 0;
          label303: if ((i2 != 0) && (!((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class)).isPackageInstalled(this.mContext.getString(2131427527))))
          {
            NetSettingManager localNetSettingManager = (NetSettingManager)ManagerCreator.getManager(NetSettingManager.class);
            if ((localNetSettingManager.isMobileDataConnectivityActive()) || (localNetSettingManager.isWifiActive()))
            {
              if (new File(this.mContext.getString(2131427528) + File.separator + this.mContext.getString(2131427527) + ".apk").exists())
                break label665;
              this.h.setText(2131427524);
            }
          }
        }
        while (true)
        {
          this.t = bot.b.a;
          this.g.setVisibility(0);
          this.i = ((ImageView)findViewById(2131231395));
          this.i.setOnClickListener(this.u);
          ((LinearLayout)findViewById(2131231061)).setOnClickListener(new bpb(this));
          this.d.aW();
          if (getActivity().getIntent().getBooleanExtra("extra_back_to_main", false))
            nd.a().a(26330);
          return;
          i1 = 1;
          break;
          label531: int i3;
          if (this.d.ba())
            if (((WifiManager)this.mContext.getSystemService("wifi")).isWifiEnabled())
            {
              this.d.aZ();
              this.d.u(true);
              i3 = 1;
            }
          while (true)
          {
            if (i3 == 0)
              break label657;
            a(false);
            getActivity().finish();
            break;
            i3 = 0;
            continue;
            if (this.d.aY())
            {
              if (((WifiManager)this.mContext.getSystemService("wifi")).isWifiEnabled())
              {
                this.d.u(false);
                i3 = 1;
              }
              else
              {
                i3 = 0;
              }
            }
            else
              i3 = 0;
          }
          label657: break label164;
          i2 = 1;
          break label303;
          label665: this.h.setText(2131427525);
        }
      }
      catch (Exception localException)
      {
        break label164;
      }
    }
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return true;
  }

  public final void onOptionClick(int paramInt)
  {
    Intent localIntent = new Intent(this.mContext, SyncSettingsActivity.class);
    this.mContext.startActivity(localIntent);
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    switch (paramMenuModel.getId())
    {
    default:
    case 99:
    }
    while (true)
    {
      return true;
      HelpListViewActivity.a(this.mContext);
    }
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    return true;
  }

  public final void onResume()
  {
    super.onResume();
    b();
    c();
    if (this.b.a())
      new bpc(this, "thread_static_data").start();
    if ((!this.d.aX()) && (this.d.bi() != 0L) && (!this.o))
    {
      this.o = true;
      new Thread(new bpd(this)).start();
    }
    if (this.e != null)
      this.e.show();
    if (this.f != null)
      this.f.show();
    if ((this.r != -1000) && (this.b.a()))
    {
      this.r = -1000;
      this.s = true;
      this.a.a();
    }
  }

  public final void onStart()
  {
    super.onStart();
    if ((gw.c()) || (gw.b()))
      a.a(this, 2131427992);
    while (true)
    {
      return;
      a.a(this, 2131427329);
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setBackButtonStyle((byte)1);
    paramFrameworkTemplateUI.setTitleTextData(2131428139);
    paramFrameworkTemplateUI.setOptionButtonStyle((byte)18);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }

  final class a extends ClickableSpan
  {
    private int a = 2131230821;

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
      case 2131230821:
      }
      while (true)
      {
        return;
        Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://aq.qq.com/cn2/ipwd/my_ipwd"));
        bot.Q(bot.this).startActivity(localIntent);
      }
    }
  }

  static enum b
  {
    static
    {
      b[] arrayOfb = new b[3];
      arrayOfb[0] = a;
      arrayOfb[1] = b;
      arrayOfb[2] = c;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bot
 * JD-Core Version:    0.6.2
 */