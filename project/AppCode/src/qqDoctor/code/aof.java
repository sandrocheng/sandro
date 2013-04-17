import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.ProgressBarView;
import com.tencent.qqpimsecure.uilib.view.ScoreRollBoxView;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import java.util.ArrayList;
import java.util.List;

final class aof extends Handler
{
  aof(aoa paramaoa)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if ((aoa.a(this.a) == null) || (aoa.a(this.a).i))
      return;
    lc locallc1 = (lc)paramMessage.obj;
    switch (paramMessage.what)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 8:
    case 9:
    case 11:
    case 5:
    case 6:
    case 7:
    case 10:
    case 100:
    case 101:
    }
    while (true)
    {
      label160: Object localObject = "";
      while ((paramMessage.what != 100) && (aoa.P(this.a)))
      {
        aoa.Q(this.a).setText((CharSequence)localObject);
        break;
        if (paramMessage.arg1 == 1)
        {
          if (!aoa.v(this.a).getAnimationing())
            aoa.v(this.a).startAnimation();
          aoa.a(this.a, 28 + 72 * ((Integer)locallc1.d).intValue() / 100);
          if (aoa.w(this.a) >= 100)
            aoa.a(this.a, 99);
          aoa.x(this.a).setProgressWithAnim(aoa.w(this.a));
          localObject = aoa.y(this.a).getString(2131428359) + (String)locallc1.c;
        }
        else if (paramMessage.arg1 == 3)
        {
          localObject = aoa.z(this.a).getString(2131428558);
        }
        else
        {
          List localList = (List)locallc1.c;
          String str9 = aoa.A(this.a).getString(2131428793);
          Object[] arrayOfObject3 = new Object[1];
          arrayOfObject3[0] = Integer.valueOf(localList.size());
          String str10 = String.format(str9, arrayOfObject3);
          ArrayList localArrayList1 = new ArrayList();
          ArrayList localArrayList2 = new ArrayList();
          int i = 0;
          if (i < localList.size())
          {
            QScanResultEntity localQScanResultEntity = (QScanResultEntity)localList.get(i);
            if (localQScanResultEntity.type == 3)
              localArrayList1.add(localQScanResultEntity);
            while (true)
            {
              i++;
              break;
              if (localQScanResultEntity.type == 8)
                localArrayList2.add(localQScanResultEntity);
            }
          }
          lc locallc2 = new lc();
          locallc2.a = 0;
          locallc2.c = localArrayList1;
          locallc2.e = locallc1.e;
          aoa.a(this.a, locallc2);
          lc locallc3 = new lc();
          locallc3.a = 12;
          locallc3.c = localArrayList2;
          aoa.a(this.a, locallc3);
          aoa.a(this.a, 100);
          aoa.x(this.a).setProgressWithAnim(aoa.w(this.a));
          localObject = str10;
          continue;
          if ((paramMessage.arg1 == 1) || (paramMessage.arg1 == 3))
            break label160;
          locallc1.c = Boolean.valueOf(((Boolean)locallc1.c).booleanValue());
          aoa.a(this.a, locallc1);
          aoa.a(this.a, 4);
          aoa.x(this.a).setProgressWithAnim(aoa.w(this.a));
          aoa.x(this.a).startAnimation();
          localObject = "";
          continue;
          if (paramMessage.arg1 == 1)
          {
            if (!aoa.v(this.a).getAnimationing())
              aoa.v(this.a).startAnimation();
            localObject = (String)locallc1.c;
          }
          else if (paramMessage.arg1 == 3)
          {
            localObject = aoa.B(this.a).getString(2131428797);
          }
          else
          {
            String str8 = aoa.C(this.a).getString(2131428799);
            aoa.a(this.a, locallc1);
            aoa.a(this.a, 15);
            aoa.x(this.a).setProgressWithAnim(aoa.w(this.a));
            aoa.v(this.a).setScore(aoa.D(this.a));
            localObject = str8;
            continue;
            if (paramMessage.arg1 == 3)
            {
              localObject = aoa.E(this.a).getString(2131428799);
              if (!aoa.v(this.a).getAnimationing())
                aoa.v(this.a).startAnimation();
            }
            else
            {
              aoa.x(this.a).setProgressWithAnim(27);
              String str7 = aoa.F(this.a).getString(2131428558);
              aoa.a(this.a, locallc1);
              aoa.v(this.a).setScore(aoa.D(this.a));
              localObject = str7;
              continue;
              if ((paramMessage.arg1 == 1) || (paramMessage.arg1 == 3))
                break label160;
              aoa.a(this.a, locallc1);
              localObject = "";
              continue;
              if ((paramMessage.arg1 == 1) || (paramMessage.arg1 == 3))
                break label160;
              aoa.a(this.a, locallc1);
              localObject = "";
              continue;
              if ((paramMessage.arg1 == 1) || (paramMessage.arg1 == 3))
                break label160;
              aoa.a(this.a, locallc1);
              localObject = "";
              continue;
              if ((paramMessage.arg1 == 1) || (paramMessage.arg1 == 3))
                break label160;
              aoa.a(this.a, locallc1);
              localObject = "";
              continue;
              if (paramMessage.arg1 == 1)
              {
                localObject = aoa.G(this.a).getString(2131428796);
              }
              else
              {
                if (paramMessage.arg1 == 3)
                  break label160;
                String str5 = aoa.H(this.a).getString(2131428794);
                Object[] arrayOfObject2 = new Object[1];
                arrayOfObject2[0] = ((Long)locallc1.c);
                String str6 = String.format(str5, arrayOfObject2);
                aoa.a(this.a, locallc1);
                localObject = str6;
                continue;
                if (paramMessage.arg1 == 1)
                {
                  localObject = aoa.I(this.a).getString(2131428798);
                }
                else
                {
                  if (paramMessage.arg1 == 3)
                    break label160;
                  String str3 = aoa.J(this.a).getString(2131428795);
                  Object[] arrayOfObject1 = new Object[1];
                  arrayOfObject1[0] = ((Long)locallc1.c);
                  String str4 = String.format(str3, arrayOfObject1);
                  aoa.a(this.a, locallc1);
                  localObject = str4;
                  continue;
                  if ((paramMessage.arg1 == 1) || (paramMessage.arg1 == 3))
                    break label160;
                  String str2 = aoa.K(this.a).getString(2131428797);
                  aoa.a(this.a, locallc1);
                  aoa.a(this.a, 8);
                  aoa.x(this.a).setProgressWithAnim(aoa.w(this.a));
                  aoa.v(this.a).setScore(aoa.D(this.a));
                  localObject = str2;
                  continue;
                  if (paramMessage.arg1 == 1)
                  {
                    if (!aoa.v(this.a).getAnimationing())
                      aoa.v(this.a).startAnimation();
                    localObject = aoa.L(this.a).getString(2131428210);
                  }
                  else if (paramMessage.arg1 == 3)
                  {
                    localObject = aoa.M(this.a).getString(2131428210);
                  }
                  else
                  {
                    String str1 = aoa.N(this.a).getString(2131428210);
                    aoa.a(this.a, locallc1);
                    aoa.a(this.a, 10);
                    aoa.x(this.a).setProgressWithAnim(aoa.w(this.a));
                    aoa.v(this.a).setScore(aoa.D(this.a));
                    localObject = str1;
                    continue;
                    aoa.O(this.a);
                    localObject = "";
                  }
                }
              }
            }
          }
        }
      }
      aoa.c(this.a).setClickable(true);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aof
 * JD-Core Version:    0.6.2
 */