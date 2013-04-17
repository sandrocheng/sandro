import com.tencent.tmsecure.module.aresengine.CallLogEntity;

final class bvz extends buh.a
{
  bvz(bvp.b paramb)
  {
  }

  final boolean a()
  {
    int i = 1;
    CallLogEntity localCallLogEntity = (CallLogEntity)this.a;
    String str = localCallLogEntity.phonenum;
    boolean bool = false;
    int k;
    if (str != null)
    {
      int j = str.length();
      bool = false;
      if (j > 2)
      {
        if (!bvp.b.h(this.g))
          break label84;
        if (localCallLogEntity.type == 2)
          break label78;
        k = i;
        if (localCallLogEntity.duration > 5L)
          break label104;
      }
    }
    while (true)
    {
      bool = k & i;
      return bool;
      label78: k = 0;
      break;
      label84: if (localCallLogEntity.type == i)
      {
        k = i;
        break;
      }
      k = 0;
      break;
      label104: i = 0;
    }
  }

  final void b()
  {
    bvp.b.a(this.g, this, null, false, false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bvz
 * JD-Core Version:    0.6.2
 */