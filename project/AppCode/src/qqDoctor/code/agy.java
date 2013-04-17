import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofAccountLoginActivity.a;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import java.util.List;

public final class agy
  implements TextWatcher
{
  public agy(PickproofAccountLoginActivity.a parama)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = PickproofAccountLoginActivity.a.a(this.a).getText().toString().length();
    int j = PickproofAccountLoginActivity.a.b(this.a).getText().toString().length();
    OperatingModel localOperatingModel = (OperatingModel)this.a.getOperatingBarDataList().get(0);
    if ((i > 0) && (j > 0));
    for (boolean bool = true; ; bool = false)
    {
      localOperatingModel.setEnable(bool);
      this.a.refreshOperatingBar((OperatingModel)this.a.getOperatingBarDataList().get(0));
      if (i > 0)
        PickproofAccountLoginActivity.a.c(this.a);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     agy
 * JD-Core Version:    0.6.2
 */