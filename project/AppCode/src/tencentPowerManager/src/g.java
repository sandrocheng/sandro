import android.app.Activity;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;

final class g
  implements SeekBar.OnSeekBarChangeListener
{
  g(aq paramaq, Activity paramActivity, TextView paramTextView)
  {
  }

  public final void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    this.a.a(paramInt + 13, this.b);
    this.c.setText(100 * (paramInt + 13) / 255 + "%");
  }

  public final void onStartTrackingTouch(SeekBar paramSeekBar)
  {
  }

  public final void onStopTrackingTouch(SeekBar paramSeekBar)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     g
 * JD-Core Version:    0.6.2
 */