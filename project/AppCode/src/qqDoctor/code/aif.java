import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
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
import java.util.List;

public final class aif extends BaseListAdapter<ky>
{
  private View.OnClickListener a;
  private View.OnClickListener b;
  private View.OnClickListener c;
  private LocationManager d;
  private int e;
  private int f;
  private jm g;
  private jb h;

  public aif(Context paramContext, List<ListModel<ky>> paramList)
  {
    super(paramContext, paramList);
    new ArrayList();
    new Date();
    this.e = 0;
    this.f = 0;
    if (jm.b == null)
      jm.b = new jm();
    this.g = jm.b;
    this.h = jb.a();
    a();
    this.d = ((LocationManager)ManagerCreator.getManager(LocationManager.class));
    ho.a().af();
    new SimpleDateFormat(this.mContext.getString(2131427337) + " HH:mm");
    new SimpleDateFormat(this.mContext.getString(2131427336) + " HH:mm");
    new SimpleDateFormat("MM" + this.mContext.getString(2131428568) + "dd" + this.mContext.getString(2131428395) + " HH:mm");
    new SimpleDateFormat("yyyy/MM/dd HH:mm");
  }

  public final void a()
  {
    this.e = this.g.b(0);
    this.f = this.g.b(1);
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
    for (int i = 0; ; i = -1)
      return i;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ky localky = (ky)this.mDataList.get(paramInt);
    aiw.a locala1;
    if (getItemViewType(paramInt) == -1)
      if (paramView == null)
      {
        paramView = createItemView(paramInt, 2130903294);
        aiw.a locala2 = new aiw.a();
        locala2.b = ((TextView)paramView.findViewById(2131231130));
        locala2.a = ((TextView)paramView.findViewById(2131231563));
        paramView.setTag(locala2);
        locala1 = locala2;
        locala1.b.setText(this.mContext.getString(2131427457));
        String str5 = this.mContext.getString(2131427463);
        int i = this.e;
        int j = this.f;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(i);
        arrayOfObject[1] = Integer.valueOf(j);
        String str6 = String.format(str5, arrayOfObject);
        String str7 = String.valueOf(i);
        String str8 = String.valueOf(j);
        int k = str6.indexOf(str7);
        int m = str6.indexOf(str8, k + str7.length());
        int n = this.mContext.getResources().getColor(2131296378);
        SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(str6);
        localSpannableStringBuilder.setSpan(new ForegroundColorSpan(n), k, k + str7.length(), 34);
        localSpannableStringBuilder.setSpan(new ForegroundColorSpan(n), m, m + str8.length(), 34);
        locala1.a.setText(localSpannableStringBuilder);
      }
    while (true)
    {
      return paramView;
      locala1 = (aiw.a)paramView.getTag();
      break;
      if (getItemViewType(paramInt) == 0)
      {
        aif.a locala;
        if (paramView == null)
        {
          paramView = createItemView(paramInt, 2130903303);
          locala = new aif.a();
          locala.a = ((TextView)paramView.findViewById(2131231577));
          locala.b = ((TextView)paramView.findViewById(2131231513));
          locala.c = ((TextView)paramView.findViewById(2131231565));
          paramView.findViewById(2131231514);
          locala.d = ((TextView)paramView.findViewById(2131231570));
          locala.i = ((LinearLayout)paramView.findViewById(2131231512));
          locala.e = ((LinearLayout)paramView.findViewById(2131231520));
          locala.j = paramView.findViewById(2131231568);
          locala.f = ((LinearLayout)paramView.findViewById(2131231580));
          locala.g = ((LinearLayout)paramView.findViewById(2131231581));
          locala.h = ((LinearLayout)paramView.findViewById(2131231582));
          locala.l = ((LinearLayout)paramView.findViewById(2131231578));
          locala.k = paramView.findViewById(2131231579);
          paramView.setTag(locala);
          label506: locala.a.setTextColor(this.mContext.getResources().getColor(2131296286));
          locala.b.setTextColor(this.mContext.getResources().getColor(2131296288));
          String str1 = localky.phonenum;
          if (str1 != null)
          {
            String str4 = this.d.getLocation(str1);
            if (str4.length() > 0)
              str1 = str1 + "(" + str4 + ")";
          }
          String str2 = localky.name;
          if ((str2 == null) || ("".equals(str2)))
          {
            str2 = localky.phonenum;
            if ((str2 == null) || ("".equals(str2)))
              str2 = this.mContext.getResources().getString(2131428361);
          }
          locala.a.setText(str2);
          locala.b.setText(a.a(localky.date));
          locala.c.setText(str1);
          String str3 = this.h.a(localky.phonenum, localky.e);
          if (str3 == null)
            break label1031;
          locala.d.setText(str3);
          locala.d.setVisibility(0);
          label753: ((TextView)locala.f.findViewById(2131230748)).setText(2131427414);
          ((ImageView)locala.f.findViewById(2131230869)).setImageResource(2130837932);
          locala.f.setOnClickListener(this.a);
          if (localky.e != 0)
            break label1086;
          ((TextView)locala.g.findViewById(2131230748)).setText(2131428937);
          ((ImageView)locala.g.findViewById(2131230869)).setImageResource(2130837937);
        }
        while (true)
        {
          locala.g.setOnClickListener(this.b);
          ((TextView)locala.h.findViewById(2131230748)).setText(2131427404);
          ((ImageView)locala.h.findViewById(2131230869)).setImageResource(2130837935);
          locala.h.setOnClickListener(this.c);
          if (!localky.f)
            break label1129;
          locala.e.setVisibility(8);
          locala.j.setVisibility(8);
          locala.f.setVisibility(8);
          locala.g.setVisibility(8);
          locala.h.setVisibility(8);
          locala.l.setVisibility(8);
          locala.k.setVisibility(8);
          locala.i.setBackgroundDrawable(this.mContext.getResources().getDrawable(2130837920));
          break;
          locala = (aif.a)paramView.getTag();
          break label506;
          label1031: if (localky.type == 3)
          {
            locala.d.setText(this.mContext.getResources().getString(2131428366));
            locala.d.setVisibility(0);
            break label753;
          }
          locala.d.setVisibility(8);
          break label753;
          label1086: ((TextView)locala.g.findViewById(2131230748)).setText(2131428939);
          ((ImageView)locala.g.findViewById(2131230869)).setImageResource(2130837936);
        }
        label1129: locala.e.setVisibility(0);
        locala.j.setVisibility(0);
        locala.f.setVisibility(0);
        locala.g.setVisibility(0);
        locala.h.setVisibility(0);
        locala.i.setBackgroundDrawable(this.mContext.getResources().getDrawable(2130837924));
      }
    }
  }

  public final int getViewTypeCount()
  {
    return 2;
  }

  public static final class a
  {
    public TextView a;
    public TextView b;
    public TextView c;
    public TextView d;
    public LinearLayout e;
    public LinearLayout f;
    public LinearLayout g;
    public LinearLayout h;
    public LinearLayout i;
    public View j;
    public View k;
    public LinearLayout l;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aif
 * JD-Core Version:    0.6.2
 */