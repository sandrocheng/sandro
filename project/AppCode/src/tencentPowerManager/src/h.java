import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.SeekBar;
import com.tencent.powermanager.ui.DIYSaveModeActivity;

final class h
  implements View.OnClickListener
{
  h(e.a parama, CheckBox paramCheckBox, SeekBar paramSeekBar, de paramde)
  {
  }

  public final void onClick(View paramView)
  {
    e.a locala = this.a;
    boolean bool = this.b.isChecked();
    int i = 13 + this.c.getProgress();
    if (bool);
    for (DIYSaveModeActivity.b(locala.b.a).c = -1; ; DIYSaveModeActivity.b(locala.b.a).c = i)
    {
      locala.a.c = DIYSaveModeActivity.c(locala.b.a);
      DIYSaveModeActivity.d(locala.b.a).notifyDataSetChanged();
      this.d.dismiss();
      e.a = false;
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     h
 * JD-Core Version:    0.6.2
 */