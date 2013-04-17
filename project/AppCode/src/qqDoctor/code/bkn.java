import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.TranslateAnimation;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.ui.activity.commontools.CommonToolsActivity;
import com.tencent.qqpimsecure.ui.activity.smscheck.SmsChargeSettingActivity;
import com.tencent.qqpimsecure.uilib.model.RadioButtonMode;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.ProgressBarView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.dialog.RadioButtonDialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.tools.SingletonManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;

public final class bkn extends BaseView
  implements View.OnClickListener, AdapterView.OnItemClickListener
{
  private boolean A;
  private int B;
  private int C;
  private int D;
  private int E;
  private boolean F = false;
  private Timer G;
  private String H = "SMSChargeCheckTabView";
  private Handler I = new bko(this);
  private int a;
  private int b;
  private ArrayList<String> c;
  private ArrayList<ArrayList<lb>> d;
  private FrameLayout e;
  private ProgressBarView f;
  private TranslateAnimation g;
  private TranslateAnimation h;
  private TranslateAnimation i;
  private FrameLayout j;
  private ListView k;
  private LinearLayout l;
  private LinearLayout m;
  private LinearLayout n;
  private ImageView o;
  private TextView p;
  private TextView q;
  private TextView r;
  private TextView s;
  private LinearLayout t;
  private Context u;
  private aku v;
  private ki w;
  private jr x;
  private zs y;
  private zq z;

  public bkn(Context paramContext)
  {
    super(paramContext, 2130903250);
    this.u = paramContext;
  }

  private static int a(ArrayList<lb> paramArrayList, lb paramlb)
  {
    int i1 = 0;
    int i2 = 0;
    while (i1 < paramArrayList.size())
    {
      if (((lb)paramArrayList.get(i1)).c.date - paramlb.c.date > 0L)
        i2 = i1 + 1;
      i1++;
    }
    return i2;
  }

  private SpannableStringBuilder a(String paramString, int paramInt)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    String str1 = String.format(paramString, arrayOfObject);
    String str2 = String.valueOf(paramInt);
    int i1 = str1.indexOf(str2);
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(str1);
    localSpannableStringBuilder.setSpan(new ForegroundColorSpan(this.u.getResources().getColor(2131296378)), i1, i1 + str2.length(), 34);
    return localSpannableStringBuilder;
  }

  private void a()
  {
    if (this.v == null);
    while (true)
    {
      return;
      if (this.v.getCount() == 0)
        this.k.setVisibility(8);
      else
        this.k.setVisibility(0);
    }
  }

  private void a(lb paramlb, int paramInt)
  {
    if (paramlb.d == null)
      ha.a(this.u, this.u.getString(2131428485));
    while (true)
    {
      return;
      zs localzs = this.y;
      bkz localbkz = new bkz(this, paramlb, paramInt);
      new aab(localzs, paramlb.c, paramlb.d, localbkz).start();
    }
  }

  private void a(mk parammk, int paramInt)
  {
    String[] arrayOfString1 = new String[2];
    arrayOfString1[0] = this.u.getString(2131427834);
    arrayOfString1[1] = this.u.getString(2131427835);
    String[] arrayOfString2 = { "0", "1" };
    ArrayList localArrayList = new ArrayList();
    for (int i1 = 0; i1 < arrayOfString1.length; i1++)
    {
      RadioButtonMode localRadioButtonMode = new RadioButtonMode();
      localRadioButtonMode.setRadioButtonName(arrayOfString1[i1]);
      localRadioButtonMode.setRadioEventCode(arrayOfString2[i1]);
      localArrayList.add(localRadioButtonMode);
    }
    RadioButtonDialog localRadioButtonDialog = new RadioButtonDialog(this.u);
    localRadioButtonDialog.setDataAdapter(localArrayList, 0);
    localRadioButtonDialog.setTitle(2131428335);
    TextView localTextView = new TextView(this.u);
    localTextView.setText(2131427836);
    localTextView.setTextColor(this.u.getResources().getColor(2131296289));
    localTextView.setTextSize(15.0F);
    localRadioButtonDialog.setFooterContextView(localTextView);
    localRadioButtonDialog.setOnItemClickListener(new bky(this, parammk, paramInt, localRadioButtonDialog));
    localRadioButtonDialog.show();
  }

  private void b()
  {
    SpannableStringBuilder localSpannableStringBuilder = a(this.u.getResources().getString(2131428467), this.a);
    this.r.setText(localSpannableStringBuilder);
    if (this.a > 0)
    {
      this.k.setVisibility(0);
      this.s.setVisibility(8);
      TextView localTextView = this.p;
      String str = this.u.getResources().getString(2131428470);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(this.a);
      localTextView.setText(String.format(str, arrayOfObject));
      this.p.setTextColor(this.u.getResources().getColor(2131296308));
      this.q.setText(this.u.getString(2131428471));
      this.o.setBackgroundResource(2130837904);
    }
    while (true)
    {
      this.o.setVisibility(0);
      this.q.setVisibility(0);
      this.n.setVisibility(0);
      return;
      this.k.setVisibility(8);
      this.s.setVisibility(0);
      this.p.setText(this.u.getString(2131428472));
      this.p.setTextColor(this.u.getResources().getColor(2131296309));
      this.q.setText(this.u.getString(2131428473));
      this.o.setBackgroundResource(2130837907);
    }
  }

  public final void onBackClick()
  {
    if ((this.z != null) && (!this.A) && (this.z.f))
    {
      Dialog localDialog = new Dialog(this.u);
      localDialog.setTitle(this.u.getString(2131428561));
      localDialog.setMessage(this.u.getString(2131428171));
      localDialog.setNegativeButton(2131427829, new bku(this, localDialog), 2);
      localDialog.setPositiveButton(2131427830, new bkv(localDialog), 1);
      localDialog.show();
    }
    while (true)
    {
      return;
      Intent localIntent1 = getActivity().getIntent();
      boolean bool = false;
      if (localIntent1 != null)
        bool = localIntent1.getBooleanExtra("extra_back_to_main", false);
      if (bool)
      {
        Context localContext = this.u;
        Intent localIntent2 = new Intent(localContext, CommonToolsActivity.class);
        localIntent2.putExtra("extra_back_to_main", true);
        localContext.startActivity(localIntent2);
      }
      super.onBackClick();
    }
  }

  public final void onClick(View paramView)
  {
    Dialog localDialog3;
    if (paramView == this.l)
    {
      nd.a().a(26094);
      localDialog3 = new Dialog(this.u);
      localDialog3.setTitle(this.u.getString(2131428474));
      if (ft.d() == 1)
      {
        localDialog3.setMessage(this.u.getString(2131428475) + this.u.getString(2131428476));
        localDialog3.setPositiveButton(2131427397, new bks(this, localDialog3), 2);
        localDialog3.setNegativeButton(2131427379, new bkt(localDialog3), 2);
        localDialog3.show();
      }
    }
    while (true)
    {
      return;
      localDialog3.setMessage(this.u.getString(2131428475));
      break;
      if (paramView == this.m)
      {
        this.z.h = true;
      }
      else
      {
        lb locallb;
        try
        {
          int i4 = ((Integer)paramView.getTag()).intValue();
          i1 = i4;
          if (i1 < 0)
            continue;
          locallb = (lb)this.v.getDataList().get(this.b);
          switch (((Integer)paramView.getTag()).intValue())
          {
          default:
            break;
          case 1:
            if (locallb == null)
              continue;
            if (!jo.a().a.getBoolean("isshowreport", true))
              a(locallb, this.b);
            break;
          case 2:
          case 3:
          }
        }
        catch (Exception localException)
        {
          while (true)
          {
            localException.printStackTrace();
            int i1 = -1;
          }
          int i3 = this.b;
          View localView = LayoutInflater.from(this.u).inflate(2130903051, null);
          Dialog localDialog2 = new Dialog(this.u);
          localDialog2.setTitle(this.u.getString(2131428483));
          localDialog2.setView(localView);
          TextView localTextView = (TextView)localView.findViewById(2131230761);
          CheckBoxView localCheckBoxView = (CheckBoxView)localView.findViewById(2131230739);
          localCheckBoxView.setChecked(true);
          localTextView.setText(this.u.getString(2131428484));
          localDialog2.setPositiveButton(2131427397, new blc(this, locallb, i3, localCheckBoxView, localDialog2), 1);
          localDialog2.setNegativeButton(2131427379, new bld(localDialog2), 2);
          localDialog2.show();
        }
        continue;
        if (locallb != null)
        {
          a(locallb.c, this.b);
          continue;
          if (locallb != null)
          {
            mk localmk = locallb.c;
            int i2 = this.b;
            boolean bool = locallb.a;
            Dialog localDialog1 = new Dialog(this.u);
            localDialog1.setTitle(this.u.getString(2131428481));
            localDialog1.setMessage(this.u.getString(2131428482));
            localDialog1.setPositiveButton(2131427397, new ble(this, localmk, i2, bool, localDialog1), 2);
            localDialog1.setNegativeButton(2131427379, new blf(localDialog1), 2);
            localDialog1.show();
          }
        }
      }
    }
  }

  public final void onCreate()
  {
    super.onCreate();
    this.c = new ArrayList();
    this.d = new ArrayList();
    this.v = new aku(this.u, new ArrayList());
    this.v.a(this.c);
    this.v.b(this.d);
    this.v.a(this);
    this.s = ((TextView)findViewById(2131231344));
    this.r = ((TextView)findViewById(2131231343));
    SpannableStringBuilder localSpannableStringBuilder = a(this.u.getResources().getString(2131428467), this.a);
    this.r.setText(localSpannableStringBuilder);
    this.t = ((LinearLayout)findViewById(2131231342));
    this.j = ((FrameLayout)findViewById(2131231333));
    this.e = ((FrameLayout)findViewById(2131231337));
    this.f = ((ProgressBarView)findViewById(2131231338));
    this.k = ((ListView)findViewById(2131231345));
    this.k.setAdapter(this.v);
    this.k.setOnItemClickListener(this);
    this.m = ((LinearLayout)findViewById(2131231339));
    this.m.setOnClickListener(this);
    this.l = ((LinearLayout)findViewById(2131231340));
    this.l.setOnClickListener(this);
    this.n = ((LinearLayout)findViewById(2131231267));
    this.o = ((ImageView)findViewById(2131231334));
    this.p = ((TextView)findViewById(2131231335));
    this.q = ((TextView)findViewById(2131231336));
    this.w = ((ki)((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class));
    this.x = new jr();
    QQPimApplication.a();
    this.y = new zs();
    QQPimApplication.a();
    this.z = zq.a(this.I);
    Message localMessage = this.I.obtainMessage(3);
    localMessage.arg1 = 5;
    this.I.sendMessageDelayed(localMessage, 500L);
    if (getActivity().getIntent().getBooleanExtra("IS_FROM_NOTIFICATION", false))
      nd.a().a(26060);
  }

  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return true;
  }

  public final void onDestroy()
  {
    this.A = true;
    if (this.z != null)
    {
      if (this.z.f)
        this.z.h = true;
      this.z = null;
    }
    super.onDestroy();
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.b = paramInt;
    lb locallb = (lb)this.v.getDataList().get(this.b);
    if (locallb == null);
    while (true)
    {
      return;
      boolean bool1 = locallb.a;
      mk localmk = locallb.c;
      if (((bool1) && (localmk.a == 0)) || (localmk.read == 0))
      {
        localmk.read = 1;
        this.v.notifyDataSetChanged();
        ((ki)((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class)).a(localmk.date);
      }
      boolean bool2 = ((lb)this.v.getDataList().get(paramInt)).b;
      for (int i1 = 0; i1 < this.v.getDataList().size(); i1++)
        ((lb)this.v.getDataList().get(i1)).b = false;
      boolean bool3 = false;
      if (!bool2)
        bool3 = true;
      locallb.b = bool3;
      this.v.notifyDataSetChanged();
    }
  }

  public final void onOptionClick(int paramInt)
  {
    Intent localIntent = new Intent(this.u, SmsChargeSettingActivity.class);
    getActivity().startActivityForResult(localIntent, 0);
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    switch (paramMenuModel.getId())
    {
    default:
    case 46:
    }
    while (true)
    {
      return true;
      Message localMessage = this.I.obtainMessage(3);
      localMessage.arg1 = 4;
      this.I.sendMessage(localMessage);
    }
  }

  public final void onPause()
  {
    super.onPause();
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    paramMenu.add(0, 46, 0, QQPimApplication.a().getResources().getString(2131427743)).setIcon(2130838021);
    return true;
  }

  public final void onResume()
  {
    super.onResume();
  }

  public final void onStart()
  {
    super.onStart();
    this.A = false;
    a.a(this, 2131427992);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427468);
    paramFrameworkTemplateUI.setOptionButtonStyle((byte)18);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bkn
 * JD-Core Version:    0.6.2
 */