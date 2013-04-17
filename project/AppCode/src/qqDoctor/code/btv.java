import QQPIM.SoftListType;
import com.tencent.tmsecure.module.update.IUpdateObserver;
import com.tencent.tmsecure.module.update.UpdateInfo;

final class btv
  implements IUpdateObserver
{
  btv(btu parambtu)
  {
  }

  public final void onChanged(UpdateInfo paramUpdateInfo)
  {
    int i = paramUpdateInfo.flag;
    SoftListType localSoftListType = null;
    switch (i)
    {
    default:
    case 512:
    case 64:
    case 1024:
    case 128:
    case 2048:
    case 256:
    case 4096:
    case 8192:
    case 16384:
    case 32768:
    case 65536:
    case 131072:
    case 262144:
    case 524288:
    case 1048576:
    case 8388608:
    }
    while (true)
    {
      btu.a(this.a, localSoftListType);
      return;
      localSoftListType = SoftListType.WHITELIST_COMMON;
      continue;
      localSoftListType = SoftListType.BLACKLIST_ROM_THIRDPART;
      continue;
      localSoftListType = SoftListType.WHITELIST_UNUSUAL;
      continue;
      localSoftListType = SoftListType.BLACKLIST_ROM;
      continue;
      localSoftListType = SoftListType.BLACKLIST_WITHPLUGIN;
      continue;
      localSoftListType = SoftListType.WHITELIST_ROM;
      continue;
      localSoftListType = SoftListType.PRIVACYLOCKLIST_USUAL;
      continue;
      localSoftListType = SoftListType.BLACKLIST_KILL_PROCESSES;
      continue;
      localSoftListType = SoftListType.WHITELIST_KILL_PROCESS;
      continue;
      localSoftListType = SoftListType.WHITELIST_AUTO_ROOT;
      continue;
      localSoftListType = SoftListType.WHITELIST_PERMISSION_CONTROL;
      continue;
      localSoftListType = SoftListType.CAMERA_SOFTWARE_LIST;
      continue;
      localSoftListType = SoftListType.DEEPCLEAN_SOFTWARE_LIST;
      continue;
      localSoftListType = SoftListType.DEEPCLEAN_SOFT_PATH_LIST;
      continue;
      localSoftListType = SoftListType.PERMIS_MONITOR_LIST;
      continue;
      localSoftListType = SoftListType.NOTKILLLIST_KILL_PROCESSES;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     btv
 * JD-Core Version:    0.6.2
 */