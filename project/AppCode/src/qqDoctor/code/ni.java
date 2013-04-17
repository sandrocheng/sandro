import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class ni extends np
{
  private ni()
  {
    super((byte)0);
  }

  public final void b(Activity paramActivity)
  {
    if (ho.a().as())
    {
      View localView = LayoutInflater.from(paramActivity).inflate(2130903051, null);
      ((TextView)localView.findViewById(2131230761)).setText(2131429784);
      CheckBoxView localCheckBoxView = (CheckBoxView)localView.findViewById(2131230739);
      localCheckBoxView.setChecked(true);
      Dialog localDialog = new Dialog(paramActivity);
      localDialog.setTitle(2131428875);
      localDialog.setView(localView);
      localDialog.setPositiveButton(2131427397, new nj(localCheckBoxView, localDialog), 2);
      localDialog.setPositiveButton(2131427410, new nk(localDialog, paramActivity), 2);
      localDialog.show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ni
 * JD-Core Version:    0.6.2
 */