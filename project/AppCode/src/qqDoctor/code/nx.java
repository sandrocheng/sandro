import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class nx extends np
{
  private nx()
  {
    super((byte)0);
  }

  public final boolean a()
  {
    return false;
  }

  public final void b(Activity paramActivity)
  {
    super.b(paramActivity);
    if (ho.a().as())
    {
      View localView = LayoutInflater.from(paramActivity).inflate(2130903045, null);
      TextView localTextView = (TextView)localView.findViewById(2131230738);
      String str = localTextView.getText().toString();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = qx.a().f();
      localTextView.setText(String.format(str, arrayOfObject));
      CheckBox localCheckBox = (CheckBox)localView.findViewById(2131230739);
      Dialog localDialog = new Dialog(paramActivity);
      localDialog.setIcon(2130837945);
      localDialog.setTitle(2131427328);
      localDialog.setView(localView);
      localDialog.setPositiveButton(2131427397, new ny(localCheckBox, localDialog), 2);
      localDialog.show();
    }
  }

  public final boolean i()
  {
    return false;
  }

  public final boolean n()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     nx
 * JD-Core Version:    0.6.2
 */