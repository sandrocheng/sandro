import com.tencent.tmsecure.module.aresengine.AbsSysDao;
import com.tencent.tmsecure.module.aresengine.FilterResult;
import com.tencent.tmsecure.module.aresengine.IContactDao;
import com.tencent.tmsecure.module.aresengine.ILastCallLogDao;
import com.tencent.tmsecure.module.aresengine.TelephonyEntity;
import java.util.ArrayList;

final class buk extends buh.a
{
  buk(buj.a parama, int paramInt)
  {
  }

  final boolean a()
  {
    boolean bool1 = true;
    boolean bool2;
    Object localObject;
    if (this.b != 2)
    {
      bool2 = bool1;
      int i = this.h;
      localObject = null;
      switch (i)
      {
      case 32:
      default:
        label80: if ((localObject != null) || (this.h != 32))
          break;
      case 1:
      case 2:
      case 4:
      case 8:
      case 16:
      }
    }
    while (true)
    {
      return bool1;
      bool2 = false;
      break;
      localObject = buj.a.a(this.g);
      break label80;
      localObject = buj.a.b(this.g);
      break label80;
      localObject = buj.a.c(this.g);
      break label80;
      localObject = buj.a.d(this.g);
      break label80;
      localObject = buj.a.e(this.g);
      break label80;
      if ((localObject instanceof IContactDao))
        bool1 = bool2 & ((IContactDao)localObject).contains(this.a.phonenum, 0);
      else if ((localObject instanceof ILastCallLogDao))
        bool1 = bool2 & ((ILastCallLogDao)localObject).contains(this.a.phonenum);
      else if ((localObject instanceof AbsSysDao))
        bool1 = bool2 & ((AbsSysDao)localObject).contains(this.a.phonenum);
      else
        bool1 = false;
    }
  }

  final void b()
  {
    FilterResult localFilterResult = new FilterResult();
    localFilterResult.mData = this.a;
    localFilterResult.mParams = this.d;
    localFilterResult.mState = this.b;
    localFilterResult.mFilterfiled = this.e;
    if ((this.b != 0) && (this.b == 1))
    {
      localFilterResult.isBlocked = true;
      localFilterResult.mDotos.add(new bul(this));
    }
    this.c = localFilterResult;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     buk
 * JD-Core Version:    0.6.2
 */