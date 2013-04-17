import android.content.ContentValues;
import android.os.Handler;
import com.tencent.qqpimsecure.ui.activity.virus.VirusNotivicationDialog;
import java.util.ArrayList;

public final class ahv
  implements acj.a
{
  public ahv(VirusNotivicationDialog paramVirusNotivicationDialog)
  {
  }

  public final void a()
  {
    VirusNotivicationDialog.f(this.a).sendEmptyMessage(1);
  }

  public final void a(ms paramms)
  {
    VirusNotivicationDialog.a(this.a).remove(paramms);
    kl localkl = VirusNotivicationDialog.e(this.a);
    long l = paramms.a;
    int i = mt.b;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put(mt.l, Integer.valueOf(i));
    localkl.a.a("virus_notification", localContentValues, mt.c + "=" + l, null);
  }

  public final void b(ms paramms)
  {
    VirusNotivicationDialog.g(this.a);
    VirusNotivicationDialog.a(this.a).remove(paramms);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ahv
 * JD-Core Version:    0.6.2
 */