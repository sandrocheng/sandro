import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import java.util.ArrayList;
import java.util.List;

public final class aip extends BaseAdapter
{
  private LayoutInflater a;
  private Context b;
  private ArrayList<lc> c;

  public aip(Context paramContext, ArrayList<lc> paramArrayList)
  {
    this.b = paramContext;
    this.c = paramArrayList;
    this.b = paramContext;
    this.a = LayoutInflater.from(this.b);
  }

  public final int getCount()
  {
    return this.c.size();
  }

  public final Object getItem(int paramInt)
  {
    return null;
  }

  public final long getItemId(int paramInt)
  {
    return 0L;
  }

  public final int getItemViewType(int paramInt)
  {
    int i;
    if (paramInt >= this.c.size())
      i = -1;
    while (true)
    {
      return i;
      lc locallc = (lc)this.c.get(paramInt);
      if ((locallc.b == 1001) || (locallc.b == 2001) || (locallc.b == 4001) || (locallc.b == 3001))
        i = 0;
      else
        i = 1;
    }
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramInt >= this.c.size())
      paramView = null;
    while (true)
    {
      return paramView;
      lc locallc = (lc)this.c.get(paramInt);
      if (getItemViewType(paramInt) == 0)
      {
        aip.b localb2;
        if (paramView == null)
        {
          paramView = LayoutInflater.from(this.b).inflate(2130903322, null);
          localb2 = new aip.b();
          localb2.a = ((TextView)paramView.findViewById(2131231033));
          localb2.b = ((TextView)paramView.findViewById(2131231607));
          paramView.setTag(localb2);
        }
        for (aip.b localb1 = localb2; ; localb1 = (aip.b)paramView.getTag())
        {
          localb1.b.setText("(" + locallc.c + ")");
          if (locallc.b != 1001)
            break label223;
          localb1.a.setText(this.b.getResources().getText(2131428157).toString());
          localb1.a.setTextColor(this.b.getResources().getColor(2131296307));
          localb1.b.setTextColor(this.b.getResources().getColor(2131296307));
          break;
        }
        label223: if (locallc.b == 2001)
        {
          localb1.a.setText(this.b.getResources().getText(2131428158).toString());
          localb1.a.setTextColor(this.b.getResources().getColor(2131296308));
          localb1.b.setTextColor(this.b.getResources().getColor(2131296308));
        }
        else if (locallc.b == 4001)
        {
          localb1.a.setText(this.b.getResources().getText(2131428160).toString());
          localb1.a.setTextColor(this.b.getResources().getColor(2131296309));
          localb1.b.setTextColor(this.b.getResources().getColor(2131296309));
        }
        else if (locallc.b == 3001)
        {
          localb1.a.setText(this.b.getResources().getText(2131428159).toString());
          localb1.a.setTextColor(this.b.getResources().getColor(2131296309));
          localb1.b.setTextColor(this.b.getResources().getColor(2131296309));
        }
      }
      else
      {
        aip.a locala;
        label596: int i;
        label956: Object localObject2;
        String str2;
        Object localObject4;
        Object localObject1;
        Object localObject3;
        if (paramView == null)
        {
          paramView = this.a.inflate(2130903321, null);
          locala = new aip.a();
          locala.a = ((TextView)paramView.findViewById(2131231608));
          locala.c = ((TextView)paramView.findViewById(2131231609));
          locala.b = ((TextView)paramView.findViewById(2131231610));
          locala.d = ((TextView)paramView.findViewById(2131231611));
          locala.e = ((TextView)paramView.findViewById(2131231612));
          locala.f = ((TextView)paramView.findViewById(2131231614));
          locala.g = ((ButtonView)paramView.findViewById(2131231615));
          locala.h = ((ImageView)paramView.findViewById(2131231613));
          paramView.setTag(locala);
          switch (locallc.b)
          {
          default:
            i = -1;
            localObject2 = "";
            str2 = "";
            localObject4 = "";
            localObject1 = "";
            localObject3 = "";
          case 2005:
          case 1003:
          case 2007:
          case 1005:
          case 2004:
          case 2002:
          case 2003:
          case 1004:
          case 2006:
          case 4002:
          case 4014:
          case 4003:
          case 4004:
          case 4010:
          case 4011:
          case 4005:
          case 4006:
          case 4007:
          case 4008:
          case 4009:
          case 3002:
          case 3003:
          case 3004:
          case 3005:
          case 3009:
          case 3006:
          case 3010:
          case 3013:
          case 2011:
          case 3007:
          case 1006:
          case 1007:
          case 1002:
          case 2008:
          case 2009:
          case 3008:
          case 2010:
          case 2012:
          case 4012:
          case 3011:
          case 2013:
          case 3012:
          case 4013:
          }
        }
        while (true)
        {
          locala.a.setText((CharSequence)localObject4);
          locala.b.setText((CharSequence)localObject2);
          locala.c.setText((CharSequence)localObject1);
          locala.d.setText((CharSequence)localObject3);
          locala.e.setText(str2);
          if (i == -1)
            break label3847;
          locala.g.setVisibility(8);
          locala.f.setVisibility(8);
          locala.h.setVisibility(0);
          locala.h.setImageResource(i);
          break;
          locala = (aip.a)paramView.getTag();
          break label596;
          CharSequence localCharSequence27 = this.b.getResources().getText(2131428170);
          i = 2130837904;
          localObject2 = "";
          localObject3 = "";
          str2 = "";
          localObject4 = localCharSequence27;
          localObject1 = "";
          continue;
          CharSequence localCharSequence26 = this.b.getResources().getText(2131428167);
          i = 2130837906;
          localObject1 = "";
          localObject2 = "";
          localObject3 = "";
          localObject4 = localCharSequence26;
          str2 = "";
          continue;
          CharSequence localCharSequence25 = this.b.getResources().getText(2131428169);
          i = 2130837904;
          localObject1 = "";
          localObject2 = "";
          localObject3 = "";
          localObject4 = localCharSequence25;
          str2 = "";
          continue;
          CharSequence localCharSequence24 = this.b.getResources().getText(2131428168);
          i = 2130837906;
          localObject1 = "";
          localObject2 = "";
          localObject3 = "";
          localObject4 = localCharSequence24;
          str2 = "";
          continue;
          CharSequence localCharSequence22 = this.b.getResources().getText(2131428184);
          CharSequence localCharSequence23 = this.b.getResources().getText(2131428185);
          String str38 = locallc.c;
          i = 2130837904;
          localObject2 = localCharSequence23;
          localObject3 = "";
          str2 = "";
          localObject4 = localCharSequence22;
          localObject1 = str38;
          continue;
          CharSequence localCharSequence20 = this.b.getResources().getText(2131428172);
          CharSequence localCharSequence21 = this.b.getResources().getText(2131428173);
          String str36 = locallc.c;
          String str37 = locallc.d + "%";
          i = 2130837904;
          localObject4 = localCharSequence20;
          localObject2 = localCharSequence21;
          localObject1 = str36;
          localObject3 = str37;
          str2 = "";
          continue;
          CharSequence localCharSequence19 = this.b.getResources().getText(2131428174);
          long l = 0L;
          List localList3 = (List)locallc.c;
          for (int j = 0; j < localList3.size(); j++)
            l += ((kw)localList3.get(j)).I();
          String str35 = a.b(l);
          i = 2130837904;
          localObject3 = "";
          localObject1 = str35;
          localObject2 = "";
          str2 = "";
          localObject4 = localCharSequence19;
          continue;
          CharSequence localCharSequence17 = this.b.getResources().getText(2131428177);
          CharSequence localCharSequence18 = this.b.getResources().getText(2131428178);
          String str34 = locallc.c;
          i = 2130837906;
          localObject2 = localCharSequence18;
          localObject3 = "";
          str2 = "";
          localObject4 = localCharSequence17;
          localObject1 = str34;
          continue;
          CharSequence localCharSequence15 = this.b.getResources().getText(2131428182);
          CharSequence localCharSequence16 = this.b.getResources().getText(2131428183);
          String str33 = locallc.c;
          i = 2130837904;
          localObject2 = localCharSequence16;
          localObject3 = "";
          str2 = "";
          localObject4 = localCharSequence15;
          localObject1 = str33;
          continue;
          CharSequence localCharSequence14 = this.b.getResources().getText(2131428194);
          i = 2130837907;
          localObject1 = "";
          localObject2 = "";
          localObject3 = "";
          localObject4 = localCharSequence14;
          str2 = "";
          continue;
          CharSequence localCharSequence13 = this.b.getResources().getText(2131428195);
          i = 2130837907;
          localObject1 = "";
          localObject2 = "";
          localObject3 = "";
          localObject4 = localCharSequence13;
          str2 = "";
          continue;
          CharSequence localCharSequence12 = this.b.getResources().getText(2131428198);
          i = 2130837907;
          localObject1 = "";
          localObject2 = "";
          localObject3 = "";
          localObject4 = localCharSequence12;
          str2 = "";
          continue;
          if (qx.a().h() == qx.a.q);
          for (CharSequence localCharSequence11 = this.b.getResources().getText(2131428202); ; localCharSequence11 = this.b.getResources().getText(2131428203))
          {
            localObject1 = "";
            localObject2 = "";
            localObject3 = "";
            str2 = "";
            localObject4 = localCharSequence11;
            i = 2130837907;
            break;
          }
          CharSequence localCharSequence10 = this.b.getResources().getText(2131428204);
          i = 2130837907;
          localObject1 = "";
          localObject2 = "";
          localObject3 = "";
          localObject4 = localCharSequence10;
          str2 = "";
          continue;
          CharSequence localCharSequence9 = this.b.getResources().getText(2131428205);
          i = 2130837907;
          localObject1 = "";
          localObject2 = "";
          localObject3 = "";
          localObject4 = localCharSequence9;
          str2 = "";
          continue;
          CharSequence localCharSequence8 = this.b.getResources().getText(2131428197);
          i = 2130837907;
          localObject1 = "";
          localObject2 = "";
          localObject3 = "";
          localObject4 = localCharSequence8;
          str2 = "";
          continue;
          CharSequence localCharSequence7 = this.b.getResources().getText(2131428196);
          i = 2130837907;
          localObject1 = "";
          localObject2 = "";
          localObject3 = "";
          localObject4 = localCharSequence7;
          str2 = "";
          continue;
          CharSequence localCharSequence6 = this.b.getResources().getText(2131428201);
          i = 2130837907;
          localObject1 = "";
          localObject2 = "";
          localObject3 = "";
          localObject4 = localCharSequence6;
          str2 = "";
          continue;
          CharSequence localCharSequence5 = this.b.getResources().getText(2131428199);
          i = 2130837907;
          localObject1 = "";
          localObject2 = "";
          localObject3 = "";
          localObject4 = localCharSequence5;
          str2 = "";
          continue;
          CharSequence localCharSequence4 = this.b.getResources().getText(2131428200);
          i = 2130837907;
          localObject1 = "";
          localObject2 = "";
          localObject3 = "";
          localObject4 = localCharSequence4;
          str2 = "";
          continue;
          String str27 = this.b.getString(2131428216);
          String str28 = str27 + xb.a;
          String str29 = str28 + this.b.getString(2131428217);
          String str30 = str29 + this.b.getString(2131428218);
          String str31 = str30 + a.c(xb.b);
          String str32 = str31 + this.b.getString(2131428219);
          i = 2130837907;
          localObject1 = "";
          localObject2 = "";
          localObject3 = "";
          localObject4 = str32;
          str2 = "";
          continue;
          String str26 = this.b.getString(2131428221);
          i = 2130837907;
          localObject1 = "";
          localObject2 = "";
          localObject3 = "";
          localObject4 = str26;
          str2 = "";
          continue;
          String str25 = this.b.getString(2131428222);
          i = 2130837907;
          localObject1 = "";
          localObject2 = "";
          localObject3 = "";
          localObject4 = str25;
          str2 = "";
          continue;
          String str24 = this.b.getString(2131428223);
          i = 2130837907;
          localObject1 = "";
          localObject2 = "";
          localObject3 = "";
          localObject4 = str24;
          str2 = "";
          continue;
          CharSequence localCharSequence3 = this.b.getResources().getText(2131427365);
          i = 2130837907;
          localObject1 = "";
          localObject2 = "";
          localObject3 = "";
          localObject4 = localCharSequence3;
          str2 = "";
          continue;
          ((Boolean)locallc.e).booleanValue();
          String str23 = this.b.getString(2131428226);
          i = 2130837907;
          localObject1 = "";
          localObject2 = "";
          localObject3 = "";
          localObject4 = str23;
          str2 = "";
          continue;
          localObject4 = this.b.getResources().getText(2131428206);
          localObject2 = this.b.getResources().getText(2131428556);
          localObject1 = xb.c;
          localObject3 = "";
          str2 = "";
          i = 2130837907;
          continue;
          localObject4 = this.b.getResources().getText(2131428207);
          localObject2 = this.b.getResources().getText(2131428556);
          localObject1 = xb.d;
          localObject3 = "";
          str2 = "";
          i = 2130837907;
          continue;
          String str22 = this.b.getString(2131428227);
          i = 2130837904;
          localObject1 = "";
          localObject2 = "";
          localObject3 = "";
          localObject4 = str22;
          str2 = "";
          continue;
          if (!(locallc.e instanceof Long))
            break label956;
          String str21 = this.b.getString(2131428166) + a.b(((Long)locallc.e).longValue());
          i = 2130837907;
          localObject1 = "";
          localObject2 = "";
          localObject3 = "";
          localObject4 = str21;
          str2 = "";
          continue;
          String str20 = this.b.getString(2131428141);
          i = 2130837906;
          localObject1 = "";
          localObject2 = "";
          localObject3 = "";
          localObject4 = str20;
          str2 = "";
          continue;
          List localList2 = (List)locallc.c;
          String str17;
          if ((localList2 != null) && (localList2.size() > 0))
            if (localList2.size() > 1)
            {
              String str19 = this.b.getString(2131428162);
              Object[] arrayOfObject7 = new Object[1];
              arrayOfObject7[0] = (((QScanResultEntity)localList2.get(0)).softName + this.b.getString(2131428657) + localList2.size());
              str17 = String.format(str19, arrayOfObject7);
            }
          while (true)
          {
            localObject1 = "";
            localObject2 = "";
            localObject3 = "";
            str2 = "";
            localObject4 = str17;
            i = 2130837906;
            break;
            String str18 = this.b.getString(2131428162);
            Object[] arrayOfObject6 = new Object[1];
            arrayOfObject6[0] = (((QScanResultEntity)localList2.get(0)).softName + localList2.size());
            str17 = String.format(str18, arrayOfObject6);
            continue;
            String str16 = this.b.getString(2131428162);
            Object[] arrayOfObject5 = new Object[1];
            arrayOfObject5[0] = Integer.valueOf(0);
            str17 = String.format(str16, arrayOfObject5);
          }
          List localList1 = (List)locallc.c;
          if (locallc.b == 2008)
          {
            localObject4 = this.b.getResources().getText(2131428555);
            localObject2 = this.b.getResources().getText(2131428556);
            localObject1 = localList1.size();
            localObject3 = "";
            str2 = "";
            i = 2130837904;
          }
          else
          {
            String str13;
            if ((localList1 != null) && (localList1.size() > 0))
              if (localList1.size() > 1)
              {
                String str15 = this.b.getString(2131428163);
                Object[] arrayOfObject4 = new Object[1];
                arrayOfObject4[0] = (((QScanResultEntity)localList1.get(0)).softName + this.b.getString(2131428657) + localList1.size());
                str13 = String.format(str15, arrayOfObject4);
              }
            while (true)
            {
              localObject1 = "";
              localObject2 = "";
              localObject3 = "";
              str2 = "";
              localObject4 = str13;
              i = 2130837906;
              break;
              String str14 = this.b.getString(2131428163);
              Object[] arrayOfObject3 = new Object[1];
              arrayOfObject3[0] = (((QScanResultEntity)localList1.get(0)).softName + localList1.size());
              str13 = String.format(str14, arrayOfObject3);
              continue;
              String str12 = this.b.getString(2131428163);
              Object[] arrayOfObject2 = new Object[1];
              arrayOfObject2[0] = Integer.valueOf(0);
              str13 = String.format(str12, arrayOfObject2);
            }
            String str11 = this.b.getString(2131428186);
            i = 2130837904;
            localObject1 = "";
            localObject2 = "";
            localObject3 = "";
            localObject4 = str11;
            str2 = "";
            continue;
            String str10 = this.b.getString(2131428187);
            i = 2130837907;
            localObject1 = "";
            localObject2 = "";
            localObject3 = "";
            localObject4 = str10;
            str2 = "";
            continue;
            String str9 = this.b.getString(2131428189);
            i = 2130837904;
            localObject1 = "";
            localObject2 = "";
            localObject3 = "";
            localObject4 = str9;
            str2 = "";
            continue;
            String str7 = this.b.getString(2131428208);
            CharSequence localCharSequence2 = this.b.getResources().getText(2131428209);
            String str8 = ((List)locallc.c).size();
            i = 2130837904;
            localObject2 = localCharSequence2;
            localObject3 = "";
            str2 = "";
            localObject4 = str7;
            localObject1 = str8;
            continue;
            CharSequence localCharSequence1 = this.b.getResources().getText(2131428211);
            i = 2130837907;
            localObject1 = "";
            localObject2 = "";
            localObject3 = "";
            localObject4 = localCharSequence1;
            str2 = "";
            continue;
            String str5 = this.b.getString(2131428212);
            Object[] arrayOfObject1 = new Object[1];
            arrayOfObject1[0] = xb.e;
            String str6 = String.format(str5, arrayOfObject1);
            i = 2130837907;
            localObject1 = "";
            localObject2 = "";
            localObject3 = "";
            localObject4 = str6;
            str2 = "";
            continue;
            String str4 = this.b.getString(2131428180);
            i = 2130837904;
            localObject1 = "";
            localObject2 = "";
            localObject3 = "";
            localObject4 = str4;
            str2 = "";
            continue;
            String str3 = this.b.getString(2131428181);
            i = 2130837907;
            localObject1 = "";
            localObject2 = "";
            localObject3 = "";
            localObject4 = str3;
            str2 = "";
            continue;
            String str1 = this.b.getString(2131428179);
            i = 2130837907;
            localObject1 = "";
            localObject2 = "";
            localObject3 = "";
            localObject4 = str1;
            str2 = "";
          }
        }
        label3847: if (!"".equals(""))
        {
          locala.g.setVisibility(8);
          locala.h.setVisibility(8);
          locala.f.setVisibility(0);
          locala.f.setText("");
        }
        else if (!"".equals(""))
        {
          locala.f.setVisibility(8);
          locala.h.setVisibility(8);
          if (qc.g);
        }
        else
        {
          locala.g.setVisibility(8);
          locala.h.setVisibility(8);
          locala.f.setVisibility(8);
        }
      }
    }
  }

  public final int getViewTypeCount()
  {
    return 2;
  }

  public final boolean hasStableIds()
  {
    return false;
  }

  public static final class a
  {
    TextView a;
    TextView b;
    TextView c;
    TextView d;
    TextView e;
    TextView f;
    ButtonView g;
    ImageView h;
  }

  static final class b
  {
    TextView a;
    TextView b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aip
 * JD-Core Version:    0.6.2
 */