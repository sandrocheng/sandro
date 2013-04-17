import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class asn
{
  public Dialog a;
  ImageView b;
  TextView c;
  int[] d;
  int e;
  Handler f = new aso(this);

  public asn(Context paramContext)
  {
    this.a = new Dialog(paramContext);
    this.a.getBodyParentLayout().setBackgroundDrawable(null);
    this.a.setTitlevisible(8);
    this.a.setIconVisibility(8);
    this.a.setCancelable(false);
    View localView = LayoutInflater.from(paramContext).inflate(2130903054, null);
    this.b = ((ImageView)localView.findViewById(2131230764));
    this.c = ((TextView)localView.findViewById(2131230765));
    this.a.setContentView(localView);
    this.d = new int[3];
    this.d[0] = 2130837742;
    this.d[1] = 2130837743;
    this.d[2] = 2130837744;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     asn
 * JD-Core Version:    0.6.2
 */