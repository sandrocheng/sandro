import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.powermanager.ui.DIYSaveModeActivity;
import com.tencent.powermanager.view.PowerManagerView;

public final class ee
  implements AdapterView.OnItemClickListener
{
  public ee(PowerManagerView paramPowerManagerView, dd paramdd, bf parambf)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    di localdi = this.b.a(paramInt);
    this.b.dismiss();
    switch (localdi.b)
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      return;
      if (this.c.a == PowerManagerView.l(this.a).c())
        PowerManagerView.i(this.a).a(PowerManagerView.o(this.a), 1, null);
      PowerManagerView.d(this.a).b(this.c, new ef(this));
      continue;
      Intent localIntent = new Intent(PowerManagerView.q(this.a), DIYSaveModeActivity.class);
      PowerManagerView.a(localIntent, this.c);
      localIntent.putExtra("savemode_is_new_ornot", false);
      if (this.c.a == PowerManagerView.l(this.a).c())
        ((Activity)PowerManagerView.r(this.a)).startActivityForResult(localIntent, 1001);
      else
        PowerManagerView.s(this.a).startActivity(localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ee
 * JD-Core Version:    0.6.2
 */