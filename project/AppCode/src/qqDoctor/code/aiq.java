import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BaseListAdapter;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.phoneservice.LocationManager;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;

public final class aiq extends BaseListAdapter<ky>
{
  private View.OnClickListener a;
  private View.OnClickListener b;
  private View.OnClickListener c;
  private LocationManager d;
  private Date e;
  private SimpleDateFormat f;
  private SimpleDateFormat g;
  private SimpleDateFormat h;
  private SimpleDateFormat i;
  private int j;
  private int k;
  private jm l;

  public aiq(Context paramContext, List<ListModel<ky>> paramList)
  {
    super(paramContext, paramList);
    new ArrayList();
    this.e = new Date();
    this.j = 0;
    this.k = 0;
    if (jm.b == null)
      jm.b = new jm();
    this.l = jm.b;
    a();
    this.d = ((LocationManager)ManagerCreator.getManager(LocationManager.class));
    ho.a().af();
    this.f = new SimpleDateFormat(this.mContext.getString(2131427337) + " HH:mm");
    this.g = new SimpleDateFormat(this.mContext.getString(2131427336) + " HH:mm");
    this.h = new SimpleDateFormat("MM" + this.mContext.getString(2131428568) + "dd" + this.mContext.getString(2131428395) + " HH:mm");
    this.i = new SimpleDateFormat("yyyy/MM/dd HH:mm");
  }

  public final void a()
  {
    this.j = this.l.b(0);
    this.k = this.l.b(1);
  }

  public final void a(View.OnClickListener paramOnClickListener)
  {
    this.a = paramOnClickListener;
  }

  public final void b(View.OnClickListener paramOnClickListener)
  {
    this.b = paramOnClickListener;
  }

  public final void c(View.OnClickListener paramOnClickListener)
  {
    this.c = paramOnClickListener;
  }

  public final int getItemViewType(int paramInt)
  {
    if (((ky)getItem(paramInt)).id > 0);
    for (int m = 0; ; m = -1)
      return m;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ky localky1 = (ky)this.mDataList.get(paramInt);
    kz localkz = (kz)localky1;
    if (getItemViewType(paramInt) == -1)
      if (paramView == null)
      {
        paramView = createItemView(paramInt, 2130903294);
        locala2 = new aiw.a();
        locala2.b = ((TextView)paramView.findViewById(2131231130));
        locala2.a = ((TextView)paramView.findViewById(2131231563));
        paramView.setTag(locala2);
        locala1 = locala2;
        locala1.b.setText(this.mContext.getString(2131427457));
        str6 = this.mContext.getString(2131427463);
        n = this.j;
        i1 = this.k;
        arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(n);
        arrayOfObject[1] = Integer.valueOf(i1);
        str7 = String.format(str6, arrayOfObject);
        str8 = String.valueOf(n);
        str9 = String.valueOf(i1);
        i2 = str7.indexOf(str8);
        i3 = str7.indexOf(str9, i2 + str8.length());
        i4 = this.mContext.getResources().getColor(2131296378);
        localSpannableStringBuilder = new SpannableStringBuilder(str7);
        localSpannableStringBuilder.setSpan(new ForegroundColorSpan(i4), i2, i2 + str8.length(), 34);
        localSpannableStringBuilder.setSpan(new ForegroundColorSpan(i4), i3, i3 + str9.length(), 34);
        locala1.a.setText(localSpannableStringBuilder);
      }
    while (getItemViewType(paramInt) != 0)
      while (true)
      {
        aiw.a locala2;
        String str6;
        int n;
        int i1;
        Object[] arrayOfObject;
        String str7;
        String str8;
        String str9;
        int i2;
        int i3;
        int i4;
        SpannableStringBuilder localSpannableStringBuilder;
        return paramView;
        aiw.a locala1 = (aiw.a)paramView.getTag();
      }
    aiq.a locala;
    String str1;
    String str5;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903324);
      locala = new aiq.a((byte)0);
      locala.a = ((TextView)paramView.findViewById(2131231577));
      locala.b = ((TextView)paramView.findViewById(2131231513));
      locala.c = ((TextView)paramView.findViewById(2131231565));
      paramView.findViewById(2131231514);
      locala.h = ((LinearLayout)paramView.findViewById(2131231512));
      locala.d = ((LinearLayout)paramView.findViewById(2131231520));
      locala.i = paramView.findViewById(2131231568);
      locala.e = ((LinearLayout)paramView.findViewById(2131231580));
      locala.f = ((LinearLayout)paramView.findViewById(2131231581));
      locala.g = ((LinearLayout)paramView.findViewById(2131231582));
      locala.k = ((LinearLayout)paramView.findViewById(2131231578));
      locala.j = paramView.findViewById(2131231579);
      paramView.setTag(locala);
      locala.a.setTextColor(this.mContext.getResources().getColor(2131296286));
      locala.b.setTextColor(this.mContext.getResources().getColor(2131296288));
      str1 = localky1.phonenum;
      if (str1 == null)
        break label1662;
      str5 = this.d.getLocation(str1);
      if (str5.length() <= 0)
        break label1662;
    }
    label729: label892: label1662: for (String str2 = str1 + "(" + str5 + ")"; ; str2 = str1)
    {
      String str3 = localky1.name;
      if ((str3 == null) || ("".equals(str3)))
        str3 = this.mContext.getResources().getString(2131428361);
      locala.a.setText(str3);
      locala.b.setText(localkz.a() + " " + a.a(localky1.date));
      locala.k.removeAllViews();
      LayoutInflater localLayoutInflater = LayoutInflater.from(this.mContext);
      Iterator localIterator = localkz.b().iterator();
      if (localIterator.hasNext())
      {
        ky localky2 = (ky)localIterator.next();
        View localView = localLayoutInflater.inflate(2130903043, null);
        TextView localTextView1 = (TextView)localView.findViewById(2131230734);
        String str4;
        TextView localTextView2;
        ImageView localImageView;
        if (a.a(this.e.getTime(), localky2.date) == 0)
        {
          str4 = this.f.format(Long.valueOf(localky2.date));
          localTextView1.setText(str4);
          localTextView2 = (TextView)localView.findViewById(2131230735);
          if (localky2.type != 3)
            break label1125;
          localTextView2.setText(this.mContext.getString(2131427387) + localky2.duration / 1000L + this.mContext.getString(2131428403));
          localImageView = (ImageView)localView.findViewById(2131230736);
          switch (localky2.type)
          {
          default:
            localImageView.setImageResource(2130837895);
          case 1:
          case 2:
          case 3:
          }
        }
        while (true)
        {
          locala.k.addView(localView);
          break label729;
          locala = (aiq.a)paramView.getTag();
          break;
          if (a.a(this.e.getTime(), localky2.date) == 1)
          {
            str4 = this.g.format(Long.valueOf(localky2.date));
            break label810;
          }
          long l1 = this.e.getTime();
          long l2 = localky2.date;
          GregorianCalendar localGregorianCalendar1 = new GregorianCalendar();
          GregorianCalendar localGregorianCalendar2 = new GregorianCalendar();
          localGregorianCalendar1.setTimeInMillis(l1);
          localGregorianCalendar2.setTimeInMillis(l2);
          if (localGregorianCalendar1.get(1) == localGregorianCalendar2.get(1));
          for (int m = 1; ; m = 0)
          {
            if (m == 0)
              break label1105;
            str4 = this.h.format(Long.valueOf(localky2.date));
            break;
          }
          str4 = this.i.format(Long.valueOf(localky2.date));
          break label810;
          if (localky2.duration < 60L)
          {
            localTextView2.setText(localky2.duration + this.mContext.getString(2131428403));
            break label892;
          }
          StringBuffer localStringBuffer = new StringBuffer();
          localStringBuffer.append(localky2.duration / 60L);
          localStringBuffer.append(this.mContext.getString(2131428404));
          if (localky2.duration % 60L != 0L)
          {
            localStringBuffer.append(localky2.duration % 60L);
            localStringBuffer.append(this.mContext.getString(2131428403));
          }
          localTextView2.setText(localStringBuffer.toString());
          break label892;
          localImageView.setImageResource(2130837895);
          continue;
          localImageView.setImageResource(2130837905);
          continue;
          localImageView.setImageResource(2130837899);
        }
      }
      locala.c.setText(str2);
      ((TextView)locala.e.findViewById(2131230748)).setText(2131427384);
      ((ImageView)locala.e.findViewById(2131230869)).setImageResource(2130837933);
      locala.e.setOnClickListener(this.a);
      ((TextView)locala.f.findViewById(2131230748)).setText(2131427721);
      ((ImageView)locala.f.findViewById(2131230869)).setImageResource(2130837939);
      locala.f.setOnClickListener(this.b);
      ((TextView)locala.g.findViewById(2131230748)).setText(2131427340);
      ((ImageView)locala.g.findViewById(2131230869)).setImageResource(2130837934);
      locala.g.setOnClickListener(this.c);
      if (localky1.f)
      {
        locala.d.setVisibility(8);
        locala.i.setVisibility(8);
        locala.e.setVisibility(8);
        locala.f.setVisibility(8);
        locala.g.setVisibility(8);
        locala.k.setVisibility(8);
        locala.j.setVisibility(8);
        locala.h.setBackgroundDrawable(this.mContext.getResources().getDrawable(2130837920));
        break;
      }
      locala.d.setVisibility(0);
      locala.i.setVisibility(0);
      locala.e.setVisibility(0);
      locala.f.setVisibility(0);
      locala.g.setVisibility(0);
      locala.j.setVisibility(0);
      locala.k.setVisibility(0);
      locala.h.setBackgroundDrawable(this.mContext.getResources().getDrawable(2130837924));
      break;
    }
  }

  public final int getViewTypeCount()
  {
    return 2;
  }

  static final class a
  {
    public TextView a;
    public TextView b;
    public TextView c;
    public LinearLayout d;
    public LinearLayout e;
    public LinearLayout f;
    public LinearLayout g;
    public LinearLayout h;
    public View i;
    public View j;
    public LinearLayout k;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aiq
 * JD-Core Version:    0.6.2
 */