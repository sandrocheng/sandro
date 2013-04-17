import android.content.SharedPreferences.Editor;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.RadioButtonDialog;

final class bsd
  implements AdapterView.OnItemClickListener
{
  bsd(bsb parambsb, RadioButtonDialog paramRadioButtonDialog, int[] paramArrayOfInt)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.a.dismiss();
    boolean[] arrayOfBoolean = new boolean[7];
    arrayOfBoolean[paramInt] = true;
    int i = 0;
    if (i < arrayOfBoolean.length)
    {
      if (arrayOfBoolean[i] != 0)
        this.b[i] = 1;
      while (true)
      {
        i++;
        break;
        this.b[i] = 0;
      }
    }
    bsb.a(this.c).c.putBoolean("scan_time_modified", true).commit();
    bsb.a(this.c).a(this.b);
    this.c.b = bsb.a(this.c, this.b);
    bsb.b(this.c);
    this.a.dismiss();
    this.c.b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bsd
 * JD-Core Version:    0.6.2
 */