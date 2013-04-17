import com.tencent.tmsecure.module.aresengine.FilterResult;
import com.tencent.tmsecure.module.aresengine.IContactDao;
import com.tencent.tmsecure.module.aresengine.TelephonyEntity;
import java.util.ArrayList;

final class bvl extends buh.a
{
  bvl(bvk.a parama)
  {
  }

  final boolean a()
  {
    int i = 1;
    if ((this.b == 2) && (bvk.a.a(this.g).contains(this.a.phonenum, i)));
    while (true)
    {
      return i;
      int j = 0;
    }
  }

  final void b()
  {
    FilterResult localFilterResult = new FilterResult();
    localFilterResult.mFilterfiled = this.e;
    localFilterResult.mState = this.b;
    localFilterResult.mData = this.a;
    localFilterResult.mDotos.add(new bvm(this, localFilterResult));
    this.c = localFilterResult;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bvl
 * JD-Core Version:    0.6.2
 */