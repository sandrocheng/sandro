package org.antivirus.tuneup;

final class bl
  implements Runnable
{
  bl(bk parambk)
  {
  }

  public final void run()
  {
    if (TrafficMeterActivity.g(this.a.b) != null)
      TrafficMeterActivity.g(this.a.b).notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.bl
 * JD-Core Version:    0.6.2
 */