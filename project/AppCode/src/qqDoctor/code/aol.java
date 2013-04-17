import android.content.Context;
import android.content.res.Resources;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.util.ArrayList;

final class aol
  implements Runnable
{
  aol(aoa paramaoa)
  {
  }

  public final void run()
  {
    int i = 1;
    aoa.o(this.a).setVisibility(8);
    aoa.ae(this.a).setVisibility(0);
    aoa.af(this.a).setVisibility(0);
    int j = 0;
    int k = 0;
    int m = 0;
    while (j < aoa.R(this.a).c.size())
    {
      if (((lc)aoa.R(this.a).c.get(j)).b == 1006)
        m = i;
      if ((((lc)aoa.R(this.a).c.get(j)).b == 1002) && (ScriptHelper.canRunAtRoot() != 0))
        k = i;
      j++;
    }
    int i2;
    if (m == 0)
    {
      i2 = 0;
      if (i2 < aoa.R(this.a).d.size())
      {
        if ((((lc)aoa.R(this.a).d.get(i2)).b != 2011) && (((lc)aoa.R(this.a).d.get(i2)).b != 2010))
          break label344;
        m = i;
      }
    }
    int i1;
    int n;
    if (m != 0)
    {
      aoa.Q(this.a).setText(aoa.ag(this.a).getString(2131427914));
      i = 0;
      i1 = 2131296308;
      n = 2130837904;
      label249: aoa.al(this.a).setVisibility(0);
      aoa.al(this.a).setImageResource(n);
      if ((aoa.am(this.a)) || (i == 0))
        break label602;
      aoa.ao(this.a).setText(aoa.an(this.a).getString(2131427910));
    }
    while (true)
    {
      aoa.ao(this.a).setTextColor(aoa.as(this.a).getResources().getColor(i1));
      aoa.at(this.a).notifyDataSetChanged();
      return;
      label344: i2++;
      break;
      if (k != 0)
      {
        aoa.Q(this.a).setText(aoa.ah(this.a).getString(2131427913));
        i1 = 2131296307;
        n = 2130837904;
        i = 0;
        break label249;
      }
      if (aoa.R(this.a).c.size() > 0)
      {
        String str3 = aoa.ai(this.a).getString(2131428242);
        Object[] arrayOfObject2 = new Object[i];
        arrayOfObject2[0] = Integer.valueOf(aoa.R(this.a).c.size());
        String str4 = String.format(str3, arrayOfObject2);
        aoa.Q(this.a).setText(str4);
        n = 2130837906;
        i1 = 2131296307;
        i = 0;
        break label249;
      }
      if (aoa.R(this.a).d.size() > 0)
      {
        String str1 = aoa.aj(this.a).getString(2131428244);
        Object[] arrayOfObject1 = new Object[i];
        arrayOfObject1[0] = Integer.valueOf(aoa.R(this.a).d.size());
        String str2 = String.format(str1, arrayOfObject1);
        aoa.Q(this.a).setText(str2);
        i1 = 2131296308;
        n = 2130837904;
        i = 0;
        break label249;
      }
      aoa.Q(this.a).setText(aoa.ak(this.a).getString(2131427917));
      n = 2130837907;
      i1 = 2131296309;
      break label249;
      label602: if (m != 0)
        aoa.ao(this.a).setText(aoa.ap(this.a).getString(2131427911));
      else if (k != 0)
        aoa.ao(this.a).setText(aoa.aq(this.a).getString(2131427912));
      else
        aoa.ao(this.a).setText(aoa.ar(this.a).getString(2131428248));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aol
 * JD-Core Version:    0.6.2
 */