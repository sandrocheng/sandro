import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.ui.activity.privacy.PrivacySafeSettingActivity;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.qqpimsecure.view.privacy.LockPatternView;
import com.tencent.qqpimsecure.view.privacy.LockPatternView.c;
import java.util.LinkedList;

public final class bgt extends BaseView
{
  TextView a;
  LockPatternView b;
  private ImageView c;
  private ImageView d;
  private ImageView e;
  private ImageView f;
  private ImageView g;
  private ImageView h;
  private ImageView i;
  private ImageView j;
  private ImageView k;
  private ImageView l;
  private int m;
  private String n;
  private LinkedList<Integer> o = new LinkedList();
  private int p;
  private String q;
  private int r;
  private yj s;
  private String t = this.v.cd();
  private Intent u;
  private ho v = ho.a();
  private LockPatternView.c w = new bgu(this);
  private int x = -1;
  private Runnable y = new bgv(this);

  public bgt(Context paramContext)
  {
    super(paramContext, 2130903356);
    this.s = new yj(paramContext);
  }

  private void a()
  {
    LinkedList localLinkedList = this.b.d();
    int[] arrayOfInt;
    StringBuffer localStringBuffer;
    String str2;
    if (localLinkedList != null)
    {
      int i3 = localLinkedList.size();
      if (i3 > 0)
      {
        arrayOfInt = new int[i3];
        for (int i4 = 0; i4 < i3; i4++)
          arrayOfInt[i4] = ((Integer)localLinkedList.get(i4)).intValue();
        ho localho = ho.a();
        localStringBuffer = new StringBuffer();
        if (arrayOfInt.length != 0)
          break label312;
        str2 = "";
        localho.y(k.a(str2));
      }
    }
    this.v.ck();
    if ((this.r == 3) || (this.r == 2))
    {
      ha.b(this.mContext, this.mContext.getString(2131430140));
      label135: if ((this.p == 2) && (this.q != null) && (!this.q.equals("")))
        sv.c = this.q;
      if (((this.r != me.a) && (this.r != me.b)) || (!this.v.ce()))
        break label379;
      String str1 = this.v.ci();
      int i1 = 0;
      if (str1 != null)
      {
        boolean bool = str1.equals("");
        i1 = 0;
        if (!bool)
          i1 = 1;
      }
      if (i1 != 0)
        break label379;
      this.v.cf();
      getActivity().finish();
      Context localContext = this.mContext;
      int i2 = this.p;
      Intent localIntent = new Intent(localContext, PrivacySafeSettingActivity.class);
      a.a(localIntent, i2, -1, null);
      localContext.startActivity(localIntent);
    }
    while (true)
    {
      new Thread(new bgw(this)).start();
      return;
      label312: for (int i5 = 0; i5 < arrayOfInt.length; i5++)
        localStringBuffer.append(arrayOfInt[i5]);
      str2 = localStringBuffer.toString();
      break;
      if (this.r != me.a)
        break label135;
      ha.b(this.mContext, this.mContext.getString(2131430141));
      break label135;
      label379: getActivity().finish();
      yj.a(this.mContext, this.p);
    }
  }

  private void a(int paramInt)
  {
    int i1 = 2130837694;
    this.m = paramInt;
    switch (paramInt)
    {
    case 102:
    default:
    case 101:
    case 103:
    }
    ImageView localImageView9;
    label173: String str;
    do
    {
      do
      {
        while (true)
        {
          return;
          this.b.c();
          this.a.setTextColor(this.mContext.getResources().getColor(2131296262));
          this.a.setText(this.n);
          this.c.setImageResource(2130837689);
          this.d.setImageResource(2130837693);
          this.e.setImageResource(2130837693);
          this.f.setImageResource(2130837693);
          this.g.setImageResource(2130837693);
          this.h.setImageResource(2130837693);
          this.i.setImageResource(2130837693);
          this.j.setImageResource(2130837693);
          this.k.setImageResource(2130837693);
          localImageView9 = this.l;
          i1 = 2130837693;
          localImageView9.setImageResource(i1);
        }
        this.b.c();
        this.a.setTextColor(this.mContext.getResources().getColor(2131296262));
        this.a.setText(this.mContext.getString(2131430087));
        this.c.setImageResource(2130837689);
      }
      while ((this.o == null) || (this.o.size() == 0));
      str = this.o.toString();
    }
    while (str == null);
    ImageView localImageView1 = this.d;
    int i2;
    label282: int i3;
    label308: int i4;
    label334: int i5;
    label360: int i6;
    label386: int i7;
    label412: int i8;
    label438: ImageView localImageView8;
    if (str.contains("0"))
    {
      i2 = i1;
      localImageView1.setImageResource(i2);
      ImageView localImageView2 = this.e;
      if (!str.contains("1"))
        break label498;
      i3 = i1;
      localImageView2.setImageResource(i3);
      ImageView localImageView3 = this.f;
      if (!str.contains("2"))
        break label506;
      i4 = i1;
      localImageView3.setImageResource(i4);
      ImageView localImageView4 = this.g;
      if (!str.contains("3"))
        break label514;
      i5 = i1;
      localImageView4.setImageResource(i5);
      ImageView localImageView5 = this.h;
      if (!str.contains("4"))
        break label522;
      i6 = i1;
      localImageView5.setImageResource(i6);
      ImageView localImageView6 = this.i;
      if (!str.contains("5"))
        break label530;
      i7 = i1;
      localImageView6.setImageResource(i7);
      ImageView localImageView7 = this.j;
      if (!str.contains("6"))
        break label538;
      i8 = i1;
      localImageView7.setImageResource(i8);
      localImageView8 = this.k;
      if (!str.contains("7"))
        break label546;
    }
    label514: label522: label530: label538: label546: for (int i9 = i1; ; i9 = 2130837693)
    {
      localImageView8.setImageResource(i9);
      localImageView9 = this.l;
      if (!str.contains("8"))
        break;
      break label173;
      i2 = 2130837693;
      break label282;
      label498: i3 = 2130837693;
      break label308;
      label506: i4 = 2130837693;
      break label334;
      i5 = 2130837693;
      break label360;
      i6 = 2130837693;
      break label386;
      i7 = 2130837693;
      break label412;
      i8 = 2130837693;
      break label438;
    }
  }

  public final void onBackClick()
  {
    if (this.p == 2)
      this.s.a();
    super.onBackClick();
  }

  public final void onCreate()
  {
    super.onCreate();
    this.u = getActivity().getIntent();
    if (this.u != null)
    {
      this.r = this.u.getIntExtra("action", -1);
      this.p = this.u.getIntExtra("type", -1);
      if (this.p == 2)
        this.q = this.u.getStringExtra("PkgName");
    }
    String str = this.v.cd();
    if ((str != null) && (!str.equals("")));
    for (this.n = this.mContext.getString(2131430085); ; this.n = this.mContext.getString(2131430086))
    {
      this.b = ((LockPatternView)findViewById(2131230725));
      this.b.setOnPatternListener(this.w);
      View localView = LayoutInflater.from(this.mContext).inflate(2130903194, null);
      this.b.setHeaderView(localView);
      this.c = ((ImageView)findViewById(2131230905));
      this.d = ((ImageView)findViewById(2131231188));
      this.e = ((ImageView)findViewById(2131231189));
      this.f = ((ImageView)findViewById(2131231190));
      this.g = ((ImageView)findViewById(2131231191));
      this.h = ((ImageView)findViewById(2131231192));
      this.i = ((ImageView)findViewById(2131231193));
      this.j = ((ImageView)findViewById(2131231194));
      this.k = ((ImageView)findViewById(2131231195));
      this.l = ((ImageView)findViewById(2131231196));
      this.a = ((TextView)findViewById(2131230906));
      a(101);
      return;
    }
  }

  public final void onHandlerMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      if (this.x != -1)
      {
        a(this.x);
        continue;
        a();
      }
    }
  }

  public final void onResume()
  {
    super.onResume();
    this.b.a();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427733);
    paramFrameworkTemplateUI.setBackButtonStyle((byte)2);
    paramFrameworkTemplateUI.setBackGroundColor(this.mContext, 2131296276);
    paramFrameworkTemplateUI.setOptionButtonStyle((byte)16);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
    paramFrameworkTemplateUI.setTitleBarLayoutPadding();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bgt
 * JD-Core Version:    0.6.2
 */