import android.content.res.Resources;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.powermanager.ui.DIYSaveModeActivity;
import com.tencent.powermanager.uilib.view.CheckBoxListItemView;
import java.util.List;

public final class ck
  implements AdapterView.OnItemClickListener
{
  public ck(DIYSaveModeActivity paramDIYSaveModeActivity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = 1;
    bg localbg = (bg)DIYSaveModeActivity.a(this.a).get(paramInt - 1);
    switch (paramInt)
    {
    case 7:
    default:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
      while (true)
      {
        return;
        e.a(this.a, DIYSaveModeActivity.b(this.a).c, new e.a(this, localbg));
        continue;
        int j = DIYSaveModeActivity.b(this.a).d;
        String[] arrayOfString2 = this.a.getResources().getStringArray(2130968578);
        String[] arrayOfString3 = this.a.getResources().getStringArray(2130968579);
        int k = 0;
        switch (j)
        {
        case 15000:
        default:
        case 30000:
        case 60000:
        case 120000:
        case 600000:
        case -1:
        }
        while (true)
        {
          e.a(this.a, k, arrayOfString2, this.a.getString(2131099736), new cl(this, arrayOfString3, localbg));
          break;
          k = i;
          continue;
          k = 2;
          continue;
          k = 3;
          continue;
          k = 4;
          continue;
          k = 5;
        }
        CheckBoxListItemView localCheckBoxListItemView6 = (CheckBoxListItemView)paramView;
        if (!localCheckBoxListItemView6.c());
        while (true)
        {
          localCheckBoxListItemView6.setCheckBoxOn(i);
          localbg.e = localCheckBoxListItemView6.c();
          DIYSaveModeActivity.b(this.a).f = localCheckBoxListItemView6.c();
          break;
          i = 0;
        }
        CheckBoxListItemView localCheckBoxListItemView5 = (CheckBoxListItemView)paramView;
        if (!localCheckBoxListItemView5.c());
        while (true)
        {
          localCheckBoxListItemView5.setCheckBoxOn(i);
          localbg.e = localCheckBoxListItemView5.c();
          DIYSaveModeActivity.b(this.a).g = localCheckBoxListItemView5.c();
          break;
          i = 0;
        }
        CheckBoxListItemView localCheckBoxListItemView4 = (CheckBoxListItemView)paramView;
        if (!localCheckBoxListItemView4.c());
        while (true)
        {
          localCheckBoxListItemView4.setCheckBoxOn(i);
          localbg.e = localCheckBoxListItemView4.c();
          DIYSaveModeActivity.b(this.a).h = localCheckBoxListItemView4.c();
          break;
          i = 0;
        }
        String[] arrayOfString1 = this.a.getResources().getStringArray(2130968577);
        this.a.getResources().getStringArray(2130968576);
        e.a(this.a, DIYSaveModeActivity.b(this.a).e, arrayOfString1, this.a.getString(2131099737), new cm(this, localbg, arrayOfString1));
      }
    case 9:
      CheckBoxListItemView localCheckBoxListItemView3 = (CheckBoxListItemView)paramView;
      if (!localCheckBoxListItemView3.c());
      while (true)
      {
        localCheckBoxListItemView3.setCheckBoxOn(i);
        localbg.e = localCheckBoxListItemView3.c();
        DIYSaveModeActivity.b(this.a).i = localCheckBoxListItemView3.c();
        break;
        i = 0;
      }
    case 10:
      CheckBoxListItemView localCheckBoxListItemView2 = (CheckBoxListItemView)paramView;
      if (!localCheckBoxListItemView2.c());
      while (true)
      {
        localCheckBoxListItemView2.setCheckBoxOn(i);
        localbg.e = localCheckBoxListItemView2.c();
        DIYSaveModeActivity.b(this.a).j = localCheckBoxListItemView2.c();
        break;
        i = 0;
      }
    case 11:
    }
    CheckBoxListItemView localCheckBoxListItemView1 = (CheckBoxListItemView)paramView;
    if (!localCheckBoxListItemView1.c());
    while (true)
    {
      localCheckBoxListItemView1.setCheckBoxOn(i);
      localbg.e = localCheckBoxListItemView1.c();
      DIYSaveModeActivity.b(this.a).k = localCheckBoxListItemView1.c();
      break;
      i = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ck
 * JD-Core Version:    0.6.2
 */