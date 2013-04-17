import QQPIM.stBindPhoneInfo;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.UnderlineSpan;
import android.view.Menu;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.ui.activity.WebUIActivity;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofAccountLoginActivity;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofSettingActivity;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;
import com.tencent.tmsecure.utils.PhoneInfoUtil;
import java.util.ArrayList;

public final class bew extends BaseView
  implements AdapterView.OnItemClickListener
{
  private akn a;
  private jh b;
  private AntitheftManager c;
  private String d;
  private String e;
  private ArrayList<stBindPhoneInfo> f;
  private stBindPhoneInfo g;
  private ImageView h;
  private LinearLayout i;
  private TextView j;
  private Animation k = AnimationUtils.loadAnimation(this.mContext, 2130968588);
  private Animation l = AnimationUtils.loadAnimation(this.mContext, 2130968589);
  private boolean m = true;
  private Animation.AnimationListener n = new bex(this);
  private boolean o = false;
  private Dialog p;
  private boolean q = false;

  public bew(Context paramContext)
  {
    super(paramContext, 2130903209);
  }

  private ArrayList<stBindPhoneInfo> a(ArrayList<stBindPhoneInfo> paramArrayList)
  {
    if ((paramArrayList == null) || (paramArrayList.size() <= 1));
    label24: label70: label102: label112: 
    while (true)
    {
      return paramArrayList;
      String str1 = PhoneInfoUtil.getIMEI(this.mContext);
      int i1 = 0;
      stBindPhoneInfo localstBindPhoneInfo;
      int i2;
      if (i1 < paramArrayList.size())
      {
        localstBindPhoneInfo = (stBindPhoneInfo)paramArrayList.get(i1);
        String str2 = localstBindPhoneInfo.getImei();
        if ((str2 != null) && (str1 != null) && (str2.compareTo(str1) == 0))
        {
          i2 = 1;
          if (i2 == 0)
            break label102;
          paramArrayList.remove(i1);
        }
      }
      while (true)
      {
        if (localstBindPhoneInfo == null)
          break label112;
        paramArrayList.add(0, localstBindPhoneInfo);
        break;
        i2 = 0;
        break label70;
        i1++;
        break label24;
        localstBindPhoneInfo = null;
      }
    }
  }

  private void a(stBindPhoneInfo paramstBindPhoneInfo)
  {
    String str = "http://msm.qq.com/wap/anti_theft/controls.jsp?sid=" + this.e + "&imei=" + paramstBindPhoneInfo.getImei() + "&phonenum=" + paramstBindPhoneInfo.getPhonenum();
    Intent localIntent = new Intent();
    localIntent.setClass(this.mContext, WebUIActivity.class);
    localIntent.putExtra("extra_url", str);
    getActivity().startActivity(localIntent);
  }

  public final void loadDataList()
  {
    if (!this.o);
    while (true)
    {
      return;
      new bez(this).start();
      this.mHandler.sendEmptyMessage(-2);
    }
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramIntent == null) || (paramInt2 == 0));
    while (true)
    {
      return;
      this.e = paramIntent.getStringExtra("sid");
      this.d = this.c.getBindQQNum();
      if ((this.e != null) && (!"".equals(this.e)) && (this.g != null))
        a(this.g);
      this.g = null;
    }
  }

  public final void onCreate()
  {
    super.onCreate();
    this.c = ((AntitheftManager)ManagerCreator.getManager(AntitheftManager.class));
    ListView localListView = (ListView)findViewById(2131230930);
    this.h = ((ImageView)findViewById(2131231247));
    this.j = ((TextView)findViewById(2131231253));
    QQPimApplication.a();
    this.b = new jh();
    this.a = new akn(this.mContext);
    this.f = this.b.a();
    this.f = a(this.f);
    this.a.a(this.f);
    localListView.setAdapter(this.a);
    localListView.setOnItemClickListener(this);
    this.o = true;
    SpannableString localSpannableString = new SpannableString(this.mContext.getResources().getString(2131429475));
    localSpannableString.setSpan(new ForegroundColorSpan(this.mContext.getResources().getColor(2131296289)), 2, 12, 34);
    localSpannableString.setSpan(new UnderlineSpan(), 2, 12, 33);
    this.j.setText(localSpannableString);
    this.i = ((LinearLayout)findViewById(2131231252));
    this.i.setOnClickListener(new bey(this));
    if ((this.f == null) || (this.f.size() <= 0))
    {
      this.p = new Dialog(this.mContext);
      this.p.setCancelable(false);
      this.p.addProgressDialog();
      this.p.setMessage(2131429559);
      this.p.show();
    }
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return super.onCreateOptionsMenu(paramMenu);
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    nd.a().a(26387);
    stBindPhoneInfo localstBindPhoneInfo = (stBindPhoneInfo)this.f.get(paramInt);
    if (localstBindPhoneInfo.getStatus() != 1)
      ha.b(this.mContext, this.mContext.getString(2131429473));
    while (true)
    {
      return;
      if ((this.e == null) || ((this.d != null) && (!this.d.equals(this.c.getBindQQNum()))))
      {
        this.g = localstBindPhoneInfo;
        Intent localIntent = new Intent(this.mContext, PickproofAccountLoginActivity.class);
        localIntent.putExtra("action", 4);
        ((Activity)this.mContext).startActivityForResult(localIntent, 0);
      }
      else
      {
        a(localstBindPhoneInfo);
      }
    }
  }

  public final void onOptionClick(int paramInt)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.mContext, PickproofSettingActivity.class);
    localIntent.putExtra("QQ_ANTITHEFT_SYS", true);
    this.mContext.startActivity(localIntent);
  }

  public final void onResume()
  {
    super.onResume();
    TextView localTextView1 = (TextView)findViewById(2131231130);
    localTextView1.setTextColor(this.mContext.getResources().getColor(2131296309));
    TextView localTextView3;
    Object localObject;
    if (this.o)
    {
      ((ImageView)findViewById(2131231212)).setImageResource(2130837907);
      localTextView1.setText(2131429346);
      this.h.startAnimation(this.k);
      this.k.setAnimationListener(this.n);
      this.l.setAnimationListener(this.n);
      this.m = true;
      TextView localTextView2 = (TextView)findViewById(2131231250);
      String str1 = this.c.getBindQQNum();
      String str2 = "";
      if ((str1 != null) && (str1.length() > 0))
      {
        String str7 = k.a(str1, 2, 0);
        str2 = str2 + this.mContext.getString(2131429467) + ":   " + str7;
      }
      localTextView2.setText(str2);
      localTextView3 = (TextView)findViewById(2131231251);
      String str3 = this.c.getHelperNumber();
      if ((str3 == null) || (str3.length() <= 0))
        break label311;
      String str6 = k.a(str3, 3, 4);
      localObject = this.mContext.getString(2131429315) + ": " + str6;
    }
    while (true)
    {
      localTextView3.setText((CharSequence)localObject);
      this.mHandler.sendEmptyMessage(-1);
      return;
      ((ImageView)findViewById(2131231212)).setImageResource(2130837906);
      localTextView1.setText(2131429345);
      break;
      label311: String str4 = this.mContext.getString(2131429469);
      String str5 = this.mContext.getString(2131429315) + ": " + str4;
      int i1 = this.mContext.getResources().getColor(2131296256);
      localObject = new SpannableStringBuilder(str5);
      if (str4.trim().length() > 0)
      {
        int i2 = str5.indexOf(str4);
        ((SpannableStringBuilder)localObject).setSpan(new ForegroundColorSpan(i1), i2, i2 + str4.length(), 34);
      }
    }
  }

  public final void refreshListData()
  {
    if ((this.p != null) && (!this.q))
    {
      this.p.dismiss();
      this.p = null;
    }
    this.f = this.b.a();
    this.f = a(this.f);
    this.a.a(this.f);
    this.a.notifyDataSetChanged();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setBackButtonStyle((byte)1);
    paramFrameworkTemplateUI.setTitleTextData(2131429289);
    paramFrameworkTemplateUI.setOptionButtonStyle((byte)18);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bew
 * JD-Core Version:    0.6.2
 */