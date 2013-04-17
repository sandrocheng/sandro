import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.tencent.qqpimsecure.widget.WidgetUpdateBoradcastReceiver;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class bsh
{
  private List<bsh.a> a = new ArrayList();
  private AlarmManager b;
  private Context c;

  public bsh(Context paramContext)
  {
    this.c = paramContext;
    this.b = ((AlarmManager)paramContext.getSystemService("alarm"));
  }

  private PendingIntent d()
  {
    String str = getClass().getSimpleName();
    Intent localIntent = new Intent(this.c, WidgetUpdateBoradcastReceiver.class);
    localIntent.putExtra("update_manager_name", str);
    return PendingIntent.getBroadcast(this.c, str.hashCode(), localIntent, 134217728);
  }

  private void e()
  {
    PendingIntent localPendingIntent = d();
    if (a() > 0L)
      this.b.setRepeating(1, 500L + System.currentTimeMillis(), a(), localPendingIntent);
  }

  protected abstract long a();

  public final void a(bsh.a parama)
  {
    try
    {
      getClass().getSimpleName();
      new StringBuilder(":addUpdater() - ").append(parama.a).toString();
      if (!this.a.contains(parama))
        this.a.add(parama);
      if (this.a.size() > 0)
        e();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected abstract Object b();

  public final void b(bsh.a parama)
  {
    try
    {
      getClass().getSimpleName();
      new StringBuilder(":removerUpdater() - ").append(parama.a).toString();
      this.a.remove(parama);
      if (this.a.size() > 0)
        e();
      while (true)
      {
        return;
        d();
        bss.a().a(getClass().getSimpleName());
      }
    }
    finally
    {
    }
  }

  public final void c()
  {
    getClass().getSimpleName();
    Object localObject = b();
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      bsh.a locala = (bsh.a)localIterator.next();
      if (locala != null)
        locala.a(localObject);
    }
  }

  public static abstract class a
  {
    String a;

    public a(String paramString)
    {
      this.a = paramString;
    }

    public abstract void a(Object paramObject);

    public boolean equals(Object paramObject)
    {
      return this.a.equals(((a)paramObject).a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bsh
 * JD-Core Version:    0.6.2
 */