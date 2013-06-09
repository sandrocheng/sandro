package org.antivirus.tuneup;

import java.util.Calendar;
import org.antivirus.AVSettings;

final class bc
  implements Runnable
{
  bc(ba paramba)
  {
  }

  public final void run()
  {
    if (AVSettings.isDataCountRestart())
    {
      Calendar localCalendar = ba.e();
      this.a.a(localCalendar.getTimeInMillis());
      this.a.j();
    }
    while (true)
    {
      return;
      this.a.g();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.bc
 * JD-Core Version:    0.6.2
 */