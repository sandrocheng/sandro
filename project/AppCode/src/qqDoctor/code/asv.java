import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.ImageView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import java.util.List;

final class asv
  implements AdapterView.OnItemClickListener
{
  asv(asq paramasq)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    CheckBoxView localCheckBoxView = (CheckBoxView)paramView.findViewById(2131231559);
    ImageView localImageView = (ImageView)paramView.findViewById(2131231558);
    lo locallo = (lo)asq.a(this.a).get(paramInt);
    boolean bool;
    int i;
    label80: int j;
    if (!locallo.a)
    {
      bool = true;
      locallo.a = bool;
      localCheckBoxView.setChecked(locallo.a);
      if (!locallo.a)
        break label214;
      i = 2130837752;
      localImageView.setBackgroundResource(i);
      j = asq.g(this.a);
      if (!locallo.a)
        break label221;
      asq.h(this.a);
    }
    while (true)
    {
      if ((j == 1) && (asq.g(this.a) == 0))
      {
        asq.e(this.a).setClickable(false);
        asq.e(this.a).startAnimation(asq.j(this.a));
      }
      if ((j == 0) && (asq.g(this.a) == 1))
      {
        asq.e(this.a).setClickable(true);
        asq.e(this.a).startAnimation(asq.k(this.a));
      }
      asq.d(this.a);
      return;
      bool = false;
      break;
      label214: i = 2130838220;
      break label80;
      label221: asq.i(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     asv
 * JD-Core Version:    0.6.2
 */