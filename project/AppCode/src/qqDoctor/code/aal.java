import android.content.Context;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.FloatMath;
import java.util.ArrayList;
import java.util.Iterator;

public final class aal
  implements SensorEventListener
{
  private long a;
  private float b;
  private float c;
  private float d;
  private SensorManager e;
  private ArrayList<aal.a> f;
  private int g = 2000;

  public aal(Context paramContext)
  {
    this.e = ((SensorManager)paramContext.getSystemService("sensor"));
    this.f = new ArrayList();
  }

  public final void a()
  {
    if (this.e == null)
      throw new UnsupportedOperationException();
    Sensor localSensor = this.e.getDefaultSensor(1);
    if (localSensor == null)
      throw new UnsupportedOperationException();
    if (!this.e.registerListener(this, localSensor, 1))
      throw new UnsupportedOperationException();
  }

  public final void a(aal.a parama)
  {
    if (this.f.contains(parama));
    while (true)
    {
      return;
      this.f.add(parama);
    }
  }

  public final void b()
  {
    if (this.e != null)
      this.e.unregisterListener(this);
  }

  public final void onAccuracyChanged(Sensor paramSensor, int paramInt)
  {
  }

  public final void onSensorChanged(SensorEvent paramSensorEvent)
  {
    long l1 = System.currentTimeMillis();
    long l2 = l1 - this.a;
    if (l2 < 100L);
    while (true)
    {
      return;
      this.a = l1;
      float f1 = paramSensorEvent.values[0];
      float f2 = paramSensorEvent.values[1];
      float f3 = paramSensorEvent.values[2];
      float f4 = f1 - this.b;
      float f5 = f2 - this.c;
      float f6 = f3 - this.d;
      this.b = f1;
      this.c = f2;
      this.d = f3;
      if (10000.0F * (FloatMath.sqrt(f4 * f4 + f5 * f5 + f6 * f6) / (float)l2) > this.g)
      {
        Iterator localIterator = this.f.iterator();
        while (localIterator.hasNext())
          abp.a(((aal.a)localIterator.next()).a).sendBroadcast(new Intent("shake_screenshot_action"));
      }
    }
  }

  public static final class a
  {
    a(abp paramabp)
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aal
 * JD-Core Version:    0.6.2
 */