import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
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
import com.tencent.tmsecure.module.aresengine.MmsContentConfigHeader;
import com.tencent.tmsecure.module.aresengine.MmsData;
import com.tencent.tmsecure.module.aresengine.MmsNotificationIndHeader;
import com.tencent.tmsecure.module.phoneservice.LocationManager;
import java.util.List;

public final class aiw extends BaseListAdapter<mk>
{
  private LocationManager a;
  private View.OnClickListener b;
  private View.OnClickListener c;
  private View.OnClickListener d;
  private View.OnClickListener e;
  private boolean f;
  private int g = 0;
  private int h = 0;
  private jm i;

  public aiw(Context paramContext, List<ListModel<mk>> paramList, avu paramavu)
  {
    super(paramContext, paramList);
    if (jm.b == null)
      jm.b = new jm();
    this.i = jm.b;
    this.g = this.i.b(0);
    this.h = this.i.b(1);
    this.a = ((LocationManager)ManagerCreator.getManager(LocationManager.class));
    paramavu.getMainView().findViewById(2131231059);
    boolean bool;
    if (u.a().b() > 1)
      bool = true;
    while (true)
    {
      this.f = bool;
      return;
      if (ft.e())
        bool = true;
      else
        bool = false;
    }
  }

  public final void a()
  {
    this.g = this.i.b(0);
    this.h = this.i.b(1);
  }

  public final void a(View.OnClickListener paramOnClickListener)
  {
    this.b = paramOnClickListener;
  }

  public final void b(View.OnClickListener paramOnClickListener)
  {
    this.c = paramOnClickListener;
  }

  public final void c(View.OnClickListener paramOnClickListener)
  {
    this.d = paramOnClickListener;
  }

  public final void d(View.OnClickListener paramOnClickListener)
  {
    this.e = paramOnClickListener;
  }

  public final int getItemViewType(int paramInt)
  {
    int j;
    if (paramInt == 0)
      j = -1;
    while (true)
    {
      return j;
      if (((mk)getItem(paramInt)).id > 0)
        j = 0;
      else
        j = 1;
    }
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    mk localmk = (mk)this.mDataList.get(paramInt);
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
        String str7 = this.mContext.getString(2131427463);
        int k = this.g;
        int m = this.h;
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = Integer.valueOf(k);
        arrayOfObject3[1] = Integer.valueOf(m);
        String str8 = String.format(str7, arrayOfObject3);
        String str9 = String.valueOf(k);
        String str10 = String.valueOf(m);
        int n = str8.indexOf(str9);
        int i1 = str8.indexOf(str10, n + str9.length());
        int i2 = this.mContext.getResources().getColor(2131296378);
        SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(str8);
        localSpannableStringBuilder.setSpan(new ForegroundColorSpan(i2), n, n + str9.length(), 34);
        localSpannableStringBuilder.setSpan(new ForegroundColorSpan(i2), i1, i1 + str10.length(), 34);
        locala1.a.setText(localSpannableStringBuilder);
      }
    while (true)
    {
      return paramView;
      locala1 = (aiw.a)paramView.getTag();
      break;
      if (getItemViewType(paramInt) == 0)
      {
        aiw.b localb;
        label473: label510: String str1;
        label542: label580: StringBuffer localStringBuffer2;
        if (paramView == null)
        {
          paramView = createItemView(paramInt, 2130903295);
          localb = new aiw.b();
          localb.a = ((TextView)paramView.findViewById(2131231565));
          localb.c = ((TextView)paramView.findViewById(2131231566));
          localb.d = ((TextView)paramView.findViewById(2131231567));
          localb.j = ((LinearLayout)paramView.findViewById(2131231512));
          localb.b = ((TextView)paramView.findViewById(2131231556));
          paramView.findViewById(2131231512);
          localb.e = paramView.findViewById(2131231568);
          localb.f = ((LinearLayout)paramView.findViewById(2131231520));
          localb.g = ((LinearLayout)paramView.findViewById(2131231550));
          localb.h = ((LinearLayout)paramView.findViewById(2131231551));
          localb.i = ((LinearLayout)paramView.findViewById(2131231552));
          localb.k = ((ImageView)paramView.findViewById(2131230855));
          paramView.setTag(localb);
          if ((localmk.a != 0) || (localmk.type == 2))
            break label1086;
          localb.a.setTextColor(this.mContext.getResources().getColor(2131296289));
          if ((localmk.name == null) || (localmk.name.length() <= 0))
            break label1110;
          localb.a.setText(localmk.name);
          int j = localmk.j;
          str1 = null;
          switch (j)
          {
          default:
            if (str1 == null)
            {
              String str6 = this.a.getLocation(localmk.a());
              if ((str6 != null) && (str6 != ""))
              {
                localb.c.setVisibility(0);
                localb.c.setText(String.format(this.mContext.getString(2131427461), new Object[] { str6 }));
                label651: localb.d.setVisibility(8);
                label661: if (localmk.a != 0)
                  break label1267;
                if (localmk.mmsData == null)
                  break label1253;
                if (localmk.protocolType != 0)
                  break label1216;
                localb.k.setImageResource(2130837893);
                label696: new StringBuilder("index  ").append(paramInt).toString();
                if ((localmk.mmsData == null) || (this.f))
                  break label1304;
                LinearLayout localLinearLayout7 = localb.g;
                ((TextView)localLinearLayout7.findViewById(2131230748)).setText(2131427412);
                ((ImageView)localLinearLayout7.findViewById(2131230869)).setImageResource(2130837938);
                localb.g.setOnClickListener(this.e);
                label782: LinearLayout localLinearLayout2 = localb.h;
                ((TextView)localLinearLayout2.findViewById(2131230748)).setText(2131427340);
                ((ImageView)localLinearLayout2.findViewById(2131230869)).setImageResource(2130837934);
                localb.h.setOnClickListener(this.c);
                if (localmk.protocolType != 1)
                  break label1561;
                LinearLayout localLinearLayout5 = localb.i;
                ((TextView)localLinearLayout5.findViewById(2131230748)).setText(2131427404);
                ((ImageView)localLinearLayout5.findViewById(2131230869)).setImageResource(2130837935);
                localb.i.setOnClickListener(this.d);
                localb.i.setVisibility(0);
                localStringBuffer2 = new StringBuffer();
                String str3 = this.mContext.getString(2131427462);
                Object[] arrayOfObject2 = new Object[1];
                arrayOfObject2[0] = a.a(localmk.date);
                localStringBuffer2.append(String.format(str3, arrayOfObject2));
                localStringBuffer2.append(this.mContext.getString(2131428428));
                if ((localmk != null) && (localmk.mmsData != null))
                  break label1421;
              }
            }
            break;
          case 2:
          case 1:
          case 3:
          }
        }
        label1086: label1216: for (String str4 = null; ; str4 = localmk.mmsData.mmsContentConfigHeader.subject)
          label1110: label1253: label1267: 
          do
          {
            if (str4 != null)
            {
              localStringBuffer2.append("：");
              localStringBuffer2.append(str4);
            }
            localb.b.setText(localStringBuffer2);
            if (!localmk.m)
              break label1768;
            localb.e.setVisibility(8);
            localb.f.setVisibility(8);
            localb.j.setBackgroundDrawable(this.mContext.getResources().getDrawable(2130837920));
            break;
            localb = (aiw.b)paramView.getTag();
            break label473;
            localb.a.setTextColor(this.mContext.getResources().getColor(2131296286));
            break label510;
            localb.a.setText(localmk.a());
            break label542;
            str1 = this.mContext.getString(2131427458);
            break label580;
            str1 = this.mContext.getString(2131427459);
            break label580;
            str1 = this.mContext.getString(2131427460);
            break label580;
            localb.c.setVisibility(8);
            break label651;
            localb.c.setVisibility(8);
            localb.d.setVisibility(0);
            localb.d.setText(str1);
            break label661;
            if (localmk.protocolType == 1)
            {
              localb.k.setImageResource(2130837900);
              break label696;
            }
            localb.k.setImageResource(2130837919);
            break label696;
            localb.k.setImageResource(2130837893);
            break label696;
            if (localmk.protocolType == 1)
            {
              localb.k.setImageResource(2130837901);
              break label696;
            }
            localb.k.setImageResource(2130837894);
            break label696;
            if (localmk.k)
            {
              LinearLayout localLinearLayout6 = localb.g;
              ((TextView)localLinearLayout6.findViewById(2131230748)).setText(2131427413);
              ((ImageView)localLinearLayout6.findViewById(2131230869)).setImageResource(2130837937);
              localb.g.setOnClickListener(null);
              break label782;
            }
            LinearLayout localLinearLayout1 = localb.g;
            ((TextView)localLinearLayout1.findViewById(2131230748)).setText(2131427411);
            ((ImageView)localLinearLayout1.findViewById(2131230869)).setImageResource(2130837936);
            localb.g.setOnClickListener(this.b);
            break label782;
            MmsNotificationIndHeader localMmsNotificationIndHeader = localmk.mmsData.mmsNotificationIndHeader;
            str4 = null;
            if (localMmsNotificationIndHeader != null)
            {
              String str5 = localmk.mmsData.mmsNotificationIndHeader.subject;
              str4 = null;
              if (str5 != null)
              {
                boolean bool = localmk.mmsData.mmsNotificationIndHeader.subject.equals("");
                str4 = null;
                if (!bool)
                  str4 = localmk.mmsData.mmsNotificationIndHeader.subject;
              }
            }
          }
          while ((localmk.mmsData.mmsContentConfigHeader == null) || (localmk.mmsData.mmsContentConfigHeader.subject == null) || (localmk.mmsData.mmsContentConfigHeader.subject.equals("")));
        label1304: label1561: if (TextUtils.isEmpty(localmk.a()))
        {
          LinearLayout localLinearLayout4 = localb.i;
          ((TextView)localLinearLayout4.findViewById(2131230748)).setText(2131427405);
          ((ImageView)localLinearLayout4.findViewById(2131230869)).setImageResource(2130837935);
          localb.a.setText(2131428624);
        }
        while (true)
        {
          label1421: localb.i.setOnClickListener(this.d);
          localb.i.setVisibility(0);
          StringBuffer localStringBuffer1 = new StringBuffer();
          String str2 = this.mContext.getString(2131427462);
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = a.a(localmk.date);
          localStringBuffer1.append(String.format(str2, arrayOfObject1));
          localStringBuffer1.append(localmk.getBody());
          localb.b.setText(localStringBuffer1.toString());
          break;
          LinearLayout localLinearLayout3 = localb.i;
          ((TextView)localLinearLayout3.findViewById(2131230748)).setText(2131427404);
          ((ImageView)localLinearLayout3.findViewById(2131230869)).setImageResource(2130837935);
        }
        label1768: localb.e.setVisibility(0);
        localb.f.setVisibility(0);
        localb.j.setBackgroundDrawable(this.mContext.getResources().getDrawable(2130837924));
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
  }

  public static final class b
  {
    public TextView a;
    public TextView b;
    public TextView c;
    public TextView d;
    public View e;
    public LinearLayout f;
    public LinearLayout g;
    public LinearLayout h;
    public LinearLayout i;
    public LinearLayout j;
    public ImageView k;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aiw
 * JD-Core Version:    0.6.2
 */