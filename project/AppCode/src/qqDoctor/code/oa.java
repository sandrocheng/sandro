import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class oa extends np
{
  private oa()
  {
    super((byte)0);
  }

  public final boolean a()
  {
    return false;
  }

  public final void b(Activity paramActivity)
  {
    if (ho.a().as())
    {
      View localView = LayoutInflater.from(paramActivity).inflate(2130903051, null);
      ((TextView)localView.findViewById(2131230761)).setText(2131428874);
      CheckBoxView localCheckBoxView = (CheckBoxView)localView.findViewById(2131230739);
      localCheckBoxView.setChecked(true);
      Dialog localDialog = new Dialog(paramActivity);
      localDialog.setTitle(2131428875);
      localDialog.setView(localView);
      localDialog.setPositiveButton(2131427397, new ob(localCheckBoxView, localDialog), 2);
      localDialog.setPositiveButton(2131427410, new oc(localDialog, paramActivity), 2);
      localDialog.show();
    }
  }

  public final boolean j()
  {
    return false;
  }

  public final String k()
  {
    return "ZTE";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     oa
 * JD-Core Version:    0.6.2
 */