import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import java.util.Iterator;
import java.util.List;

final class bhd
  implements TextWatcher
{
  bhd(bhc parambhc)
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
    int i = bhc.a(this.a).getText().toString().length();
    int j = bhc.b(this.a).getText().toString().length();
    Iterator localIterator = this.a.getOperatingBarDataList().iterator();
    if (localIterator.hasNext())
    {
      OperatingModel localOperatingModel = (OperatingModel)localIterator.next();
      if (localOperatingModel.getID() == 0)
        if ((i <= 0) || (j <= 0))
          break label112;
      label112: for (boolean bool = true; ; bool = false)
      {
        localOperatingModel.setEnable(bool);
        this.a.refreshOperatingBar(localOperatingModel);
        break;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bhd
 * JD-Core Version:    0.6.2
 */