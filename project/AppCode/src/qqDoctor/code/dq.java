import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import java.util.ArrayList;
import java.util.List;

public final class dq
  implements SensorEventListener
{
  private SensorManager a;
  private boolean b = false;
  private ArrayList<dq.a> c;
  private float d = 0.0F;
  private float e = 0.0F;
  private float f = 0.0F;

  public dq(Context paramContext)
  {
    this.a = ((SensorManager)paramContext.getSystemService("sensor"));
    this.c = new ArrayList();
  }

  public final void a()
  {
    List localList = this.a.getSensorList(1);
    if (localList.size() > 0)
    {
      Sensor localSensor = (Sensor)localList.get(0);
      if (localSensor != null)
        this.b = this.a.registerListener(this, localSensor, 2);
    }
  }

  public final void a(dq.a parama)
  {
    this.c.add(parama);
  }

  public final void b()
  {
    if (this.b)
    {
      this.c.clear();
      this.a.unregisterListener(this);
      this.b = false;
    }
  }

  public final void b(dq.a parama)
  {
    this.c.remove(parama);
  }

  public final void onAccuracyChanged(Sensor paramSensor, int paramInt)
  {
  }

  public final void onSensorChanged(SensorEvent paramSensorEvent)
  {
    this.d = paramSensorEvent.values[0];
    this.e = paramSensorEvent.values[1];
    this.f = paramSensorEvent.values[2];
    for (int i = 0; i < this.c.size(); i++)
      ((dq.a)this.c.get(i)).a(this.d, this.e, this.f);
  }

  public static abstract interface a
  {
    public abstract void a(float paramFloat1, float paramFloat2, float paramFloat3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     dq
 * JD-Core Version:    0.6.2
 */