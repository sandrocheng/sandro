import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.ui.activity.virus.VirusNotivicationDialog;
import com.tencent.qqpimsecure.ui.activity.virus.VirusNotivicationResultDialog;
import java.util.ArrayList;

public final class aht extends Handler
{
  public aht(VirusNotivicationDialog paramVirusNotivicationDialog)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default:
    case 0:
      while (true)
      {
        return;
        VirusNotivicationDialog.a(true);
      }
    case 1:
    }
    VirusNotivicationDialog.a(false);
    VirusNotivicationDialog.a();
    if (VirusNotivicationDialog.a(this.a).size() > 0)
    {
      Intent localIntent = new Intent(VirusNotivicationDialog.b(this.a), VirusNotivicationResultDialog.class);
      localIntent.putExtra("data", new mu(0L, 1, "", 1, 0, 1, 0, VirusNotivicationDialog.a(this.a)));
      VirusNotivicationDialog.b(this.a).startActivity(localIntent);
    }
    while (true)
    {
      VirusNotivicationDialog.d(this.a);
      break;
      if (!VirusNotivicationDialog.c(this.a))
        ha.a(VirusNotivicationDialog.b(this.a), VirusNotivicationDialog.b(this.a).getString(2131428052));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aht
 * JD-Core Version:    0.6.2
 */