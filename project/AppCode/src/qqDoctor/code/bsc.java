import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.RadioButtonDialog;

final class bsc
  implements AdapterView.OnItemClickListener
{
  bsc(bsb parambsb, RadioButtonDialog paramRadioButtonDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.b.a = paramInt;
    jl localjl = bsb.a(this.b);
    int i = this.b.a;
    localjl.c.putInt("scanPlan", i).commit();
    bsb.a(this.b).c.putBoolean("scan_time_modified", true).commit();
    bsb.b(this.b);
    if (bsb.a(this.b).b.getInt("scanPlan", -1) == 2)
      this.b.a();
    while (true)
    {
      this.a.dismiss();
      return;
      this.b.b();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bsc
 * JD-Core Version:    0.6.2
 */