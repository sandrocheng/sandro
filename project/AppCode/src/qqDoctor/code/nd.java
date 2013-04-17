import QQPIM.SUI;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.qqpimsecure.service.QQPimApplication;
import java.util.ArrayList;
import java.util.Iterator;

public final class nd
{
  private static nd e = null;
  private SharedPreferences a = null;
  private SharedPreferences.Editor b = null;
  private SharedPreferences c = null;
  private SharedPreferences.Editor d = null;

  private nd(Context paramContext)
  {
    this.a = paramContext.getSharedPreferences("actionStats", 0);
    this.b = this.a.edit();
    this.c = paramContext.getSharedPreferences("mulValueActionStats", 0);
    this.d = this.c.edit();
  }

  private ArrayList<Integer> a(String paramString)
  {
    String str = this.c.getString(paramString, null);
    Object localObject = null;
    if (str == null);
    while (true)
    {
      return localObject;
      localObject = new ArrayList();
      String[] arrayOfString = str.split("\\|");
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++)
        ((ArrayList)localObject).add(Integer.valueOf(arrayOfString[j]));
    }
  }

  public static ArrayList<SUI> a(ArrayList<kt> paramArrayList)
  {
    if (paramArrayList == null);
    ArrayList localArrayList;
    for (Object localObject = null; ; localObject = localArrayList)
    {
      return localObject;
      localArrayList = new ArrayList();
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext())
      {
        kt localkt = (kt)localIterator.next();
        if (localkt.b > 0)
        {
          SUI localSUI = new SUI();
          switch (localkt.a)
          {
          case 33:
          case 40:
          case 41:
          case 42:
          case 43:
          case 44:
          case 45:
          case 46:
          case 47:
          case 48:
          case 49:
          case 50:
          case 51:
          case 52:
          case 53:
          case 54:
          case 55:
          case 56:
          case 57:
          case 58:
          case 59:
          case 60:
          case 61:
          case 62:
          case 63:
          case 64:
          case 65:
          case 66:
          case 67:
          case 68:
          case 69:
          default:
            localSUI.setId(localkt.a);
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 10:
          case 11:
          case 12:
          case 13:
          case 14:
          case 15:
          case 16:
          case 17:
          case 18:
          case 19:
          case 20:
          case 21:
          case 22:
          case 23:
          case 24:
          case 25:
          case 26:
          case 27:
          case 28:
          case 29:
          case 30:
          case 31:
          case 32:
          case 34:
          case 35:
          case 36:
          case 37:
          case 38:
          case 39:
          case 70:
          }
          while (true)
          {
            localSUI.setDesc(localkt.b);
            localSUI.setTime((int)(localkt.c / 1000L));
            if (localkt.d != 0)
            {
              localSUI.ivalues = new ArrayList();
              localSUI.ivalues.add(Integer.valueOf(localkt.d));
            }
            localArrayList.add(localSUI);
            break;
            localSUI.setId(20001);
            continue;
            localSUI.setId(20002);
            continue;
            localSUI.setId(20003);
            continue;
            localSUI.setId(20004);
            continue;
            localSUI.setId(20005);
            continue;
            localSUI.setId(20006);
            continue;
            localSUI.setId(20007);
            continue;
            localSUI.setId(20008);
            continue;
            localSUI.setId(20009);
            continue;
            localSUI.setId(20047);
            continue;
            localSUI.setId(20048);
            continue;
            localSUI.setId(20049);
            continue;
            localSUI.setId(20050);
            continue;
            localSUI.setId(20052);
            continue;
            localSUI.setId(20053);
            continue;
            localSUI.setId(20054);
            continue;
            localSUI.setId(20014);
            continue;
            localSUI.setId(20055);
            continue;
            localSUI.setId(20056);
            continue;
            localSUI.setId(20057);
            continue;
            localSUI.setId(20058);
            continue;
            localSUI.setId(20059);
            continue;
            localSUI.setId(20060);
            continue;
            localSUI.setId(20061);
            continue;
            localSUI.setId(20062);
            continue;
            localSUI.setId(20063);
            continue;
            localSUI.setId(20064);
            continue;
            localSUI.setId(20065);
            continue;
            localSUI.setId(20066);
            continue;
            localSUI.setId(20067);
            continue;
            localSUI.setId(20051);
            continue;
            localSUI.setId(20068);
            continue;
            localSUI.setId(26000);
            continue;
            localSUI.setId(26001);
            continue;
            localSUI.setId(26002);
            continue;
            localSUI.setId(26003);
            continue;
            localSUI.setId(26004);
            continue;
            localSUI.setId(26005);
            continue;
            localSUI.setId(26036);
          }
        }
      }
    }
  }

  public static nd a()
  {
    try
    {
      if (e == null)
        e = new nd(QQPimApplication.a());
      nd localnd = e;
      return localnd;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void a(int paramInt, String paramString)
  {
    long l = System.currentTimeMillis();
    ArrayList localArrayList = b(this.a.getString(paramString, null), paramInt);
    for (int i = 0; ; i++)
    {
      int j = localArrayList.size();
      int k = 0;
      if (i < j)
      {
        if (l == ((kt)localArrayList.get(i)).c)
        {
          ((kt)localArrayList.get(i)).b = (1 + ((kt)localArrayList.get(i)).b);
          k = 1;
        }
      }
      else
      {
        if (k == 0)
        {
          kt localkt = new kt();
          localkt.a = paramInt;
          localkt.c = l;
          localkt.b = 1;
          localArrayList.add(localkt);
        }
        String str = b(localArrayList);
        this.b.putString(paramString, str).commit();
        return;
      }
    }
  }

  private void a(int paramInt1, String paramString, int paramInt2)
  {
    long l = System.currentTimeMillis();
    ArrayList localArrayList = b(this.a.getString(paramString, null), paramInt1);
    for (int i = 0; ; i++)
    {
      int j = localArrayList.size();
      int k = 0;
      if (i < j)
      {
        if (l == ((kt)localArrayList.get(i)).c)
        {
          ((kt)localArrayList.get(i)).b = (1 + ((kt)localArrayList.get(i)).b);
          k = 1;
        }
      }
      else
      {
        if (k == 0)
        {
          kt localkt = new kt();
          localkt.a = paramInt1;
          localkt.c = l;
          localkt.b = 1;
          localkt.d = paramInt2;
          localArrayList.add(localkt);
        }
        String str = b(localArrayList);
        this.b.putString(paramString, str).commit();
        return;
      }
    }
  }

  public static void a(ArrayList<kt> paramArrayList, int paramInt)
  {
    kt localkt = new kt();
    localkt.a = paramInt;
    localkt.c = System.currentTimeMillis();
    localkt.b = 1;
    paramArrayList.add(localkt);
  }

  private void a(ArrayList<kt> paramArrayList, String paramString, int paramInt)
  {
    paramArrayList.addAll(b(this.a.getString(paramString, null), paramInt));
  }

  private SUI b(int paramInt)
  {
    SUI localSUI = new SUI();
    localSUI.setId(paramInt);
    switch (paramInt)
    {
    default:
      if (localSUI.getIvalues() == null)
        localSUI = null;
      break;
    case 26301:
    case 26302:
    case 26420:
    case 26464:
    case 26465:
    }
    while (true)
    {
      return localSUI;
      localSUI.setIvalues(a("EMID_Secure_Before_OneKeyAnaly_UseMemory_Percent"));
      break;
      localSUI.setIvalues(a("EMID_Secure_After_OneKeyAnaly_UseMemory_Percent"));
      break;
      localSUI.setIvalues(a("EMID_Secure_Ram_Used_Revert_percent_After_Clean"));
      break;
      localSUI.setIvalues(a("EMID_Secure_Root_Status"));
      break;
      localSUI.setIvalues(a("EMID_Secure_Installed_digit"));
      break;
      localSUI.setDesc("1");
      localSUI.setTime((int)(System.currentTimeMillis() / 1000L));
    }
  }

  private static String b(ArrayList<kt> paramArrayList)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (int i = 0; i < paramArrayList.size(); i++)
    {
      localStringBuffer.append(((kt)paramArrayList.get(i)).c);
      localStringBuffer.append("&");
      localStringBuffer.append(((kt)paramArrayList.get(i)).b);
      if (((kt)paramArrayList.get(i)).d != 0)
      {
        localStringBuffer.append("&");
        localStringBuffer.append(((kt)paramArrayList.get(i)).d);
      }
      localStringBuffer.append(";");
    }
    return localStringBuffer.toString();
  }

  private static ArrayList<kt> b(String paramString, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramString == null);
    label14: int i;
    do
    {
      return localArrayList;
      i = paramString.indexOf(";");
    }
    while (i == -1);
    kt localkt = new kt();
    String str1 = paramString.substring(0, i);
    String str2;
    if (str1.indexOf("&") != -1)
    {
      localkt.a = paramInt;
      localkt.c = Long.parseLong(str1.substring(0, str1.indexOf("&")));
      if (localkt.c == 0L)
        localkt.c = System.currentTimeMillis();
      str2 = str1.substring(1 + str1.indexOf("&"));
      if (str2.indexOf("&") == -1)
        break label195;
      localkt.b = Integer.parseInt(str2.substring(0, str2.indexOf("&")));
      localkt.d = Integer.parseInt(str2.substring(1 + str2.indexOf("&")));
    }
    while (true)
    {
      localArrayList.add(localkt);
      if (i == paramString.length())
        break;
      paramString = paramString.substring(i + 1);
      break label14;
      label195: localkt.b = Integer.parseInt(str2);
    }
  }

  private void c(String paramString, int paramInt)
  {
    String str1 = this.c.getString(paramString, null);
    if (str1 == null);
    for (String str2 = String.valueOf(paramInt); ; str2 = str1 + "|" + String.valueOf(paramInt))
    {
      this.d.putString(paramString, str2).commit();
      return;
    }
  }

  public final void a(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 31:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 32:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 70:
    case 26041:
    case 26042:
    case 26043:
    case 26044:
    case 26045:
    case 26046:
    case 26047:
    case 26048:
    case 26049:
    case 26050:
    case 26051:
    case 26052:
    case 26053:
    case 26054:
    case 26055:
    case 26056:
    case 26057:
    case 26058:
    case 26059:
    case 26060:
    case 26061:
    case 26062:
    case 26063:
    case 26064:
    case 26065:
    case 26066:
    case 26067:
    case 26068:
    case 26069:
    case 26070:
    case 26071:
    case 26072:
    case 26073:
    case 26074:
    case 26075:
    case 26076:
    case 26077:
    case 26078:
    case 26079:
    case 26080:
    case 26081:
    case 26082:
    case 26083:
    case 26084:
    case 26085:
    case 26086:
    case 26087:
    case 26088:
    case 26089:
    case 26090:
    case 26091:
    case 26092:
    case 26093:
    case 26094:
    case 26095:
    case 26096:
    case 26097:
    case 26098:
    case 26099:
    case 26100:
    case 26101:
    case 26102:
    case 26103:
    case 26104:
    case 26105:
    case 26106:
    case 26107:
    case 26108:
    case 26109:
    case 26110:
    case 26112:
    case 26113:
    case 26114:
    case 26115:
    case 26116:
    case 26117:
    case 26118:
    case 26119:
    case 26120:
    case 26121:
    case 26122:
    case 26123:
    case 26124:
    case 26125:
    case 26132:
    case 26134:
    case 26135:
    case 26136:
    case 26137:
    case 26138:
    case 26139:
    case 26140:
    case 26141:
    case 26142:
    case 26143:
    case 26144:
    case 26145:
    case 26146:
    case 26147:
    case 26148:
    case 26149:
    case 26150:
    case 26151:
    case 26152:
    case 26153:
    case 26154:
    case 26155:
    case 26156:
    case 26157:
    case 26158:
    case 26159:
    case 26160:
    case 26161:
    case 26162:
    case 26163:
    case 26164:
    case 26165:
    case 26166:
    case 26167:
    case 26168:
    case 26169:
    case 26170:
    case 26171:
    case 26172:
    case 26184:
    case 26185:
    case 26186:
    case 26187:
    case 26188:
    case 26189:
    case 26190:
    case 26191:
    case 26192:
    case 26193:
    case 26195:
    case 26196:
    case 26197:
    case 26198:
    case 26199:
    case 26200:
    case 26201:
    case 26202:
    case 26212:
    case 26213:
    case 26214:
    case 26215:
    case 26219:
    case 26220:
    case 26221:
    case 26222:
    case 26223:
    case 26224:
    case 26225:
    case 26231:
    case 26232:
    case 26233:
    case 26234:
    case 26235:
    case 26236:
    case 26237:
    case 26238:
    case 26239:
    case 26240:
    case 26241:
    case 26242:
    case 26243:
    case 26244:
    case 26245:
    case 26246:
    case 26247:
    case 26248:
    case 26249:
    case 26250:
    case 26251:
    case 26252:
    case 26253:
    case 26254:
    case 26255:
    case 26256:
    case 26257:
    case 26258:
    case 26259:
    case 26262:
    case 26263:
    case 26264:
    case 26265:
    case 26266:
    case 26267:
    case 26268:
    case 26269:
    case 26270:
    case 26271:
    case 26272:
    case 26273:
    case 26274:
    case 26275:
    case 26276:
    case 26277:
    case 26278:
    case 26279:
    case 26280:
    case 26281:
    case 26283:
    case 26285:
    case 26286:
    case 26287:
    case 26288:
    case 26289:
    case 26290:
    case 26291:
    case 26292:
    case 26293:
    case 26294:
    case 26295:
    case 26296:
    case 26297:
    case 26298:
    case 26299:
    case 26300:
    case 26301:
    case 26302:
    case 26307:
    case 26308:
    case 26309:
    case 26310:
    case 26311:
    case 26312:
    case 26313:
    case 26314:
    case 26315:
    case 26316:
    case 26317:
    case 26318:
    case 26319:
    case 26320:
    case 26321:
    case 26322:
    case 26323:
    case 26324:
    case 26325:
    case 26326:
    case 26327:
    case 26328:
    case 26329:
    case 26330:
    case 26341:
    case 26342:
    case 26343:
    case 26344:
    case 26345:
    case 26346:
    case 26347:
    case 26348:
    case 26349:
    case 26350:
    case 26351:
    case 200:
    case 201:
    case 26355:
    case 26356:
    case 26357:
    case 26359:
    case 26358:
    case 26360:
    case 26361:
    case 26362:
    case 26363:
    case 26364:
    case 26365:
    case 26366:
    case 26367:
    case 26368:
    case 26369:
    case 26370:
    case 26371:
    case 26372:
    case 26373:
    case 26374:
    case 26375:
    case 26376:
    case 26377:
    case 26378:
    case 26379:
    case 26380:
    case 26381:
    case 26382:
    case 26383:
    case 26384:
    case 26385:
    case 26386:
    case 26387:
    case 26388:
    case 26390:
    case 26391:
    case 26392:
    case 26394:
    case 26393:
    case 26395:
    case 26396:
    case 26397:
    case 26398:
    case 26399:
    case 26400:
    case 26403:
    case 26401:
    case 26402:
    case 26405:
    case 26406:
    case 26407:
    case 26408:
    case 26409:
    case 26410:
    case 26411:
    case 26412:
    case 26413:
    case 26414:
    case 26415:
    case 26416:
    case 26417:
    case 26418:
    case 26421:
    case 26422:
    case 26423:
    case 26424:
    case 26425:
    case 26426:
    case 26427:
    case 26428:
    case 26429:
    case 26430:
    case 26431:
    case 26432:
    case 26433:
    case 26434:
    case 26435:
    case 26436:
    case 26437:
    case 26438:
    case 26439:
    case 26440:
    case 26442:
    case 26441:
    case 26445:
    case 26449:
    case 26450:
    case 26451:
    case 26452:
    case 26453:
    case 26454:
    case 26455:
    case 26456:
    case 26457:
    case 26458:
    case 26459:
    case 26460:
    case 26461:
    case 26462:
    case 26467:
    case 26468:
    case 26469:
    }
    while (true)
    {
      return;
      a(paramInt, "FILTER_SAVE_SUC_STR");
      continue;
      a(paramInt, "INTO_FILTERINFO_STR");
      continue;
      a(paramInt, "START_KILL_STR");
      continue;
      a(paramInt, "UPDATE_VIRUS_BASE_STR");
      continue;
      a(paramInt, "INTO_SECRET_STR");
      continue;
      a(paramInt, "ONEKEY_CLEAR_STR");
      continue;
      a(paramInt, "INTO_PRO_MANAGE_STR");
      continue;
      a(paramInt, "INTO_APP_MANAGE_STR");
      continue;
      a(paramInt, "DOWNLOAD_STR");
      continue;
      a(paramInt, "DAY_BEST_TAB_STR");
      continue;
      a(paramInt, "PRESS_AD_STR");
      continue;
      a(paramInt, "PRESS_FIRST_SEND_STR");
      continue;
      a(paramInt, "ONE_KEY_CHECK_STR");
      continue;
      a(paramInt, "ONE_KEY_OPTIMIZATION_STR");
      continue;
      a(paramInt, "USED_COPY_STR");
      continue;
      a(paramInt, "USED_RESET_STR");
      continue;
      a(paramInt, "CHARGE_SMS_CHECK_STR");
      continue;
      a(paramInt, "LOCATION_CHECK_STR");
      continue;
      a(paramInt, "OPEN_IPCALL_STR");
      continue;
      a(paramInt, "SET_IPCALL_STR");
      continue;
      a(paramInt, "KILL_ONE_P_STR");
      continue;
      a(paramInt, "KILL_ALL_P_STR");
      continue;
      a(paramInt, "CLEAR_ONE_RUBISH_STR");
      continue;
      a(paramInt, "CLEAR_All_RUBISH_STR");
      continue;
      a(paramInt, "ADD_WHITE_NAME_STR");
      continue;
      a(paramInt, "ADD_NET_WIDGET_STR");
      continue;
      a(paramInt, "INTO_NETSETTING_STR");
      continue;
      a(paramInt, "GET_ROOT_STR");
      continue;
      a(paramInt, "MOTION_APP_CHANGE_STR");
      continue;
      a(paramInt, "SAVE_APP_CHANGE_STR");
      continue;
      a(paramInt, "LOG_APP_CHANGE_STR");
      continue;
      a(paramInt, "ACTION_UNINSTALLATION_STR");
      continue;
      a(paramInt, "Editor_RUNNING_ONEKEY_DO");
      continue;
      a(paramInt, "Editor_OPEN_PHONE_ONEKEY_DO");
      continue;
      a(paramInt, "Editor_ANTI_THEFT_SWITH");
      continue;
      a(paramInt, "Editor_PHONE_CUT_SWITH");
      continue;
      a(paramInt, "Editor_PUSH_FUNTION");
      continue;
      a(paramInt, "Editor_INTO_MAIN_MENU");
      continue;
      a(paramInt, "Editor_INTO_PHONE_KEY_SMALL");
      continue;
      a(paramInt, "Editor_INTO_MAINVIEW");
      continue;
      a(paramInt, "Editor_INTO_MYSOFTWARE_ONEKEYANALY");
      continue;
      a(paramInt, "Editor_INTO_MYSOFTWARE_UPDATE");
      continue;
      a(paramInt, "Editor_INTO_MYSOFTWARE_UNINSTALL");
      continue;
      a(paramInt, "Editor_INTO_MYSOFTWARE_APKMANAGER");
      continue;
      a(paramInt, "Editor_INTO_MYSOFTWARE_SOFTWARE_MOVE");
      continue;
      a(paramInt, "Editor_INTO_MARKET_CATEGORY");
      continue;
      a(paramInt, "Editor_INTO_MARKET_NECESSARY");
      continue;
      a(paramInt, "Editor_INTO_MARKET_SEARCH");
      continue;
      a(paramInt, "Editor_INTO_MARKET_DOWNLOAD_MANAGER");
      continue;
      a(paramInt, "Editor_INTO_SYNC_BACKUP_CONTACT");
      continue;
      a(paramInt, "Editor_INTO_SYNC_RESTORE_CONTACT");
      continue;
      a(paramInt, "Editor_INTO_SYNC_ACCOUNT_SETTING");
      continue;
      a(paramInt, "Editor_INTO_MAINVIEW_MYSOFTWARE");
      continue;
      a(paramInt, "Editor_INTO_MAINVIEW_MARKET");
      continue;
      a(paramInt, "Editor_INTO_MAINVIEW_INTERCEPT");
      continue;
      a(paramInt, "Editor_INTO_MIANVIEW_VIRUS_SCAN");
      continue;
      a(paramInt, "Editor_INTO_MAINVIEW_COMMON_TOOLS");
      continue;
      a(paramInt, "Editor_INTO_NOTIFICATION_VIRUS_SCAN");
      continue;
      a(paramInt, "Editor_INTO_NOTIFICATION_SMS_CHECK");
      continue;
      a(paramInt, "Editor_INTO_NOTIFICATION_SECURESPACE");
      continue;
      a(paramInt, "Editor_INTO_NOTIFICATION_UPDATE");
      continue;
      a(paramInt, "Editor_INTO_NOTIFICATION_DOWNLOAD");
      continue;
      a(paramInt, "Editor_INTO_BOTIFICATION_SCREENSHOT");
      continue;
      a(paramInt, "Editor_INTO_PROCESSMAIN_MANAGER");
      continue;
      a(paramInt, "Editor_INTO_PROCESSMAIN_BOOT_OPTIMIZE");
      continue;
      a(paramInt, "Editor_INTO_PROCESSMAIN_DATA_CLEAR");
      continue;
      a(paramInt, "Editor_INTO_VIRUS_QUICKSCAN");
      continue;
      a(paramInt, "Editor_INTO_VIRUS_FULL_SCAN");
      continue;
      a(paramInt, "Editor_INTO_VIRUS_UPDATE");
      continue;
      a(paramInt, "Editor_INTO_VIRUS_RECORD");
      continue;
      a(paramInt, "Editor_INTO_PERMISSION_SETTING");
      continue;
      a(paramInt, "Editor_INTO_PERMISSION_SOFTWARE");
      continue;
      a(paramInt, "Editor_INTO_PERMISSION_LOG");
      continue;
      a(paramInt, "Editor_INTO_TOOLS_SCREEN_SHOT");
      continue;
      a(paramInt, "Editor_INTO_TOOLS_IPCALL");
      continue;
      a(paramInt, "Editor_INTO_TOOLS_LOCATION");
      continue;
      a(paramInt, "Editor_INTO_TOOLS_NUMBER_QUERY");
      continue;
      a(paramInt, "Editor_INTO_TOOLS_PASSWORD_VER");
      continue;
      a(paramInt, "Editor_MYSOFTWARE_ANALY_UNINSTALL");
      continue;
      a(paramInt, "Editor_MYSOFTWARE_UPDATE_ALL");
      continue;
      a(paramInt, "Editor_MYSOFTWARE_UPDATE_ONE");
      continue;
      a(paramInt, "Editor_MYSOFTWARE_UNINSTALL_PERSONAL");
      continue;
      a(paramInt, "Editor_BATTERY_CHANGE_MODE");
      continue;
      a(paramInt, "Editor_BATTERY_ADD_DIYMODE");
      continue;
      a(paramInt, "Editor_BATTERY_OPEN");
      continue;
      a(paramInt, "Editor_BATTERY_CLOSE");
      continue;
      a(paramInt, "Editor_BATTERY_SETTING");
      continue;
      a(paramInt, "Editor_WEBDISK_SETTING");
      continue;
      a(paramInt, "Editor_WEBDISK_CHANGE_TAB");
      continue;
      a(paramInt, "Editor_NETWORK_AUTOADJUST");
      continue;
      a(paramInt, "Editor_NETWORK_WAP_SORT");
      continue;
      a(paramInt, "Editor_NETWORK_SETTING");
      continue;
      a(paramInt, "Editor_SMSCHARGE_CHECK_SCAN");
      continue;
      a(paramInt, "Editor_INTERCEPT_FILTER_SETTING");
      continue;
      a(paramInt, "Editor_INTERCEPT_CONTACT_LIST_BACKUP");
      continue;
      a(paramInt, "Editor_INTERCEPT_CONTACT_LIST_RESTORE");
      continue;
      a(paramInt, "Editor_INTERCEPT_ADD_BLACK_CONTACT");
      continue;
      a(paramInt, "Editor_INTERCEPT_ADD_WHITE_CONTACT");
      continue;
      a(paramInt, "Editor_INTERCEPT_ADD_KEYWORD");
      continue;
      a(paramInt, "Editor_SECURE_SPACE_ADD_CONTACT");
      continue;
      a(paramInt, "Editor_PICKPROOF_OPEN");
      continue;
      a(paramInt, "Editor_PICKPROOF_GUIDE_FINISH");
      continue;
      a(paramInt, "Editor_PROCESSMAIN_ONE_KEY_OPTIMIZE");
      continue;
      a(paramInt, "Editor_PROCESSMAIN_PRO_MRG_STOPALL");
      continue;
      a(paramInt, "Editor_PERMISSION_OPEN");
      continue;
      a(paramInt, "Editor_PERMISSION_SOFTWARE_SET");
      continue;
      a(paramInt, "Editor_PERMISSION_SECURESPACE");
      continue;
      a(paramInt, "Editor_TOOLS_SCREEN_SHOT_OPEN");
      continue;
      a(paramInt, "Editor_MAINVIEW_OPTIMIZE_FINISH");
      continue;
      a(paramInt, "Editor_INTO_NET_MANAGER");
      continue;
      a(paramInt, "Editor_INTO_PHONE_UP");
      continue;
      a(paramInt, "Editor_INTO_SAVE_POWER");
      continue;
      a(paramInt, "Editor_INTO_SYNC_COPY");
      continue;
      a(paramInt, "Editor_INTO_OPEN_UP");
      continue;
      a(paramInt, "Editor_INTO_APK_MAANGER");
      continue;
      a(paramInt, "Editor_INTO_US_MAANGER");
      continue;
      a(paramInt, "Editor_INTO_PAY_SMS");
      continue;
      a(paramInt, "Editor_INTO_IP_CALL");
      continue;
      a(paramInt, "Editor_INTO_PHONE_CHECK");
      continue;
      a(paramInt, "Editor_INTO_INTO_SAVE_PHONE");
      continue;
      a(paramInt, "Editor_INTO_PHONE_CUT");
      continue;
      a(paramInt, "Editor_INTO_INTO_COMMON_FUNTION");
      continue;
      a(paramInt, "Editor_INTO_WEBDISK");
      continue;
      a(paramInt, "Editor_State_NetWorkTraffic_Window_Open");
      continue;
      a(paramInt, "Editor_TaskManagerWidgetMini_Open");
      continue;
      a(paramInt, "Editor_TaskManagerWidgetMini_Close");
      continue;
      a(paramInt, "Editor_KillProcess_WidgetMini");
      continue;
      a(paramInt, "Editor_TaskManagerWidget_Open");
      continue;
      a(paramInt, "Editor_TaskManagerWidger_Close");
      continue;
      a(paramInt, "Editor_TaskManagerWidget_INTO_MainView");
      continue;
      a(paramInt, "Editor_OneKeyOptimize_TaskManagerWidger");
      continue;
      a(paramInt, "Editor_NetSetWidget_Open");
      continue;
      a(paramInt, "Editor_NetSetWidget_Close");
      continue;
      a(paramInt, "Editor_NetSetWidget_INTO_MainView");
      continue;
      a(paramInt, "Editor_NetSetWidget_Wifi_Open");
      continue;
      a(paramInt, "Editor_NetSetWidget_Wifi_Close");
      continue;
      a(paramInt, "Editor_NetSetWidget_GPRS_Open");
      continue;
      a(paramInt, "Editor_NetSetWidget_GPRS_Close");
      continue;
      a(paramInt, "Editor_NetSetWidget_NET_WAP_Change");
      continue;
      a(paramInt, "Editor_NetSetWidget_INTO_SettingView");
      continue;
      a(paramInt, "Editor_MainView_CheckDBUpdate");
      continue;
      a(paramInt, "Editor_MainView_CheckVersionUpdate");
      continue;
      a(paramInt, "Editor_Market_INTO_MySoftware");
      continue;
      a(paramInt, "Editor_Market_Advertise_Position1");
      continue;
      a(paramInt, "Editor_Market_Advertise_Position2");
      continue;
      a(paramInt, "Editor_Market_Advertise_Position3");
      continue;
      a(paramInt, "Editor_Market_SOFTWARE_CATEGORY");
      continue;
      a(paramInt, "Editor_Market_TAB_NEW_PRODUCT");
      continue;
      a(paramInt, "Editor_ACTIVATE_QQSECURE_UI");
      continue;
      a(paramInt, "Editor_SETTINGS_STOP_SERVICE");
      continue;
      a(paramInt, "Editor_SETTINGS_START_SERVICE");
      continue;
      a(paramInt, "Editor_SETTINGS_STOP_ASSISTANT");
      continue;
      a(paramInt, "Editor_SETTINGS_START_ASSISTANT");
      continue;
      a(paramInt, "Editor_ASSISTANT_OPTIMIZE");
      continue;
      a(paramInt, "Editor_ASSISTANT_EXPAND_MORE");
      continue;
      a(paramInt, "Editor_ASSISTANT_CLOSE_MORE");
      continue;
      a(paramInt, "Editor_ASSISTANT_CLOSE_FLOW_WINDOW");
      continue;
      a(paramInt, "Editor_ASSISTANT_OPEN_FLOW_WINDOW");
      continue;
      a(paramInt, "Editor_ASSISTANT_SWITCH_GPRS");
      continue;
      a(paramInt, "Editor_ASSISTANT_SWITCH_WIFI");
      continue;
      a(paramInt, "Editor_ASSISTANT_SWITCH_BELL");
      continue;
      a(paramInt, "Editor_STOP_TASK_CANCEL_ADVICE");
      continue;
      a(paramInt, "Editor_STOP_TASK_ACCEPT_ADVICE");
      continue;
      a(paramInt, "Editor_Private_Secure_INTO_Permission_Monitor");
      continue;
      a(paramInt, "Editor_Private_Secure_INTO_File_Save");
      continue;
      a(paramInt, "Editor_Private_Secure_INTO_Privacy_Lock");
      continue;
      a(paramInt, "Editor_Notification_INTO_Intercept");
      continue;
      a(paramInt, "Editor_ONEKEY_CHECK_Cancel_On_Switch");
      continue;
      a(paramInt, "Editor_ONEKEY_CHECK_Cancel_On_AutoRun");
      continue;
      a(paramInt, "Editor_ONEKEY_CHECK_Cancel_On_CacheData");
      continue;
      a(paramInt, "Editor_ONEKEY_CHECK_Cancel_On_Virus");
      continue;
      a(paramInt, "Editor_NETWORK_MANAGER_INTO_NetWork_Filter");
      continue;
      a(paramInt, "Editor_NETWORK_MANAGER_NetWork_Filter_OperSwitch");
      continue;
      a(paramInt, "Editor_ImportContactInfo_Import");
      continue;
      a(paramInt, "Editor_ImportContactInfo_Cancel");
      continue;
      a(paramInt, "Editor_VirusTabView_INTO_ProfessionalKiller");
      continue;
      a(paramInt, "Editor_VirusTabView_Finish_QuickScan");
      continue;
      a(paramInt, "Editor_VirusTabView_Finish_FullScan");
      continue;
      a(paramInt, "Editor_Market_INTO_Software_Rank");
      continue;
      a(paramInt, "Editor_Market_INTO_Game");
      continue;
      a(paramInt, "Editor_New_Secure_OPEN_PHONE_ONEKEY_DO");
      continue;
      a(paramInt, "Editor_ACTION_Secure_QQPHONEBOOK_PUSH_OK");
      continue;
      a(paramInt, "Editor_ACTION_Secure_QQPHONEBOOK_PUSH_CAMCEL");
      continue;
      a(paramInt, "Editor_PUSH_WANDOUJIA");
      continue;
      a(paramInt, "Editor_Secure_MAINVIEW_Move_Desktop_Panel_Boxes");
      continue;
      a(paramInt, "Editor_Secure_NETWORK_MANAGER_Flow_Auto_Adjust_Config");
      continue;
      a(paramInt, "Editor_Secure_NETWORK_MANAGER_GPRS_Used_For_Month_Config");
      continue;
      a(paramInt, "Editor_Secure_NETWORK_MANAGER_GPRS_Used_For_Month_Config_Confirm");
      continue;
      a(paramInt, "Editor_Secure_NETWORK_MANAGER_GPRS_Used_For_Month_Config_By_SMS");
      continue;
      a(paramInt, "Editor_Secure_NETWORK_MANAGER_GPRS_Used_For_Month_Config_By_Phone");
      continue;
      a(paramInt, "Editor_Secure_NETWORK_MANAGER_GPRS_TotalLimit_For_Month_Config");
      continue;
      a(paramInt, "Editor_Secure_NETWORK_MANAGER_GPRS_Closing_Day_Config");
      continue;
      a(paramInt, "Editor_Secure_Notification_Recommend_Weekly");
      continue;
      a(paramInt, "Editor_Secure_Market_Create_Desktop_Shortcut");
      continue;
      a(paramInt, "Editor_Secure_MYSOFTWARE_ONEKEYANALY_Unistall");
      continue;
      a(paramInt, "Editor_Secure_PROCESSMAIN_INTO_SettingView");
      continue;
      a(paramInt, "Editor_Secure_PROCESSMAIN_Add_OneKeyAnaly_WhiteList");
      continue;
      a(paramInt, "Editor_Secure_PROCESSMAIN_Add_OneKeyAnaly_WhiteList_Confirm");
      continue;
      a(paramInt, "Editor_Secure_VirusTabView_Show_Menu");
      continue;
      a(paramInt, "Editor_Secure_VirusTabView_INTO_Menu_SettingView");
      continue;
      a(paramInt, "Editor_Secure_VirusTabView_Cancel_QuickScan");
      continue;
      a(paramInt, "Editor_Secure_VirusTabView_Cancel_FullScan");
      continue;
      a(paramInt, "Editor_Secure_PROCESSMAIN_WhileList_Setting_Hint_Set_Immediately");
      continue;
      a(paramInt, "Editor_Secure_PROCESSMAIN_WhileList_Setting_Hint_Never_Ask");
      continue;
      a(paramInt, "Editor_Secure_Notification_Prompt_VirusLib_Update");
      continue;
      a(paramInt, "Editor_Secure_Notification_VirusLib_Update_And_Scan");
      continue;
      a(paramInt, "Editor_Secure_Notification_VirusLib_Update_Cancel");
      continue;
      a(paramInt, "Editor_Secure_Notification_Prompt_New_ProfessionalKiller");
      continue;
      a(paramInt, "Editor_Secure_Outside_VirusTabView_Kill_Immediately");
      continue;
      a(paramInt, "Editor_Secure_Outside_VirusTabView_Dont_Kill_Now");
      continue;
      a(paramInt, "Editor_Secure_MAINVIEW_Show_Menu");
      continue;
      a(paramInt, "Editor_Secure_MAINVIEW_Into_Menu_Setting");
      continue;
      a(paramInt, "Editor_Secure_MAINVIEW_Into_Menu_Feedback");
      continue;
      a(paramInt, "Editor_Secure_MAINVIEW_Into_Menu_CheckUpdate");
      continue;
      a(paramInt, "Editor_Secure_MAINVIEW_Into_Menu_Feedback_Problem");
      continue;
      a(paramInt, "Editor_Secure_MAINVIEW_Into_Menu_Feedback_Location");
      continue;
      a(paramInt, "Editor_Secure_MAINVIEW_Into_Menu_CheckUpdate_Update_Immediately");
      continue;
      a(paramInt, "Editor_Secure_MAINVIEW_Into_Menu_CheckUpdate_Update_NextTime");
      continue;
      a(paramInt, "Editor_Secure_MAINVIEW_Into_Menu_About");
      continue;
      a(paramInt, "Editor_Secure_MAINVIEW_Into_Menu_Recommend_To_Friend");
      continue;
      a(paramInt, "Editor_Secure_MAINVIEW_Into_Menu_OperatingActivity");
      continue;
      a(paramInt, "Editor_Secure_Battery_Open_Deep_Save");
      continue;
      a(paramInt, "editor_assistant_switch_audio");
      continue;
      a(paramInt, "editor_assistant_open");
      continue;
      a(paramInt, "editor_system_setting_assistant_style_number");
      continue;
      a(paramInt, "editor_system_setting_assistant_style_rocket");
      continue;
      a(paramInt, "editor_assistant_setting");
      continue;
      a(paramInt, "editor_assistant_setting_open");
      continue;
      a(paramInt, "editor_assistant_setting_style_number");
      continue;
      a(paramInt, "editor_assistant_setting_style_rocket");
      continue;
      a(paramInt, "editor_assistant_move_to_fire");
      continue;
      a(paramInt, "editor_assistant_rocket_launch_success");
      continue;
      a(paramInt, "editor_commontools_wandoujia_enabled");
      continue;
      a(paramInt, "editor_commontools_wandoujia_next_time");
      continue;
      a(paramInt, "editor_commontools_wandoujia_open");
      continue;
      a(paramInt, "editor_securespace_restore_sms_from_sdcard");
      continue;
      a(paramInt, "editor_securespace_restore_sms_from_sdcard_cancel");
      continue;
      a(paramInt, "editor_sync_assist_download_immediatly");
      continue;
      a(paramInt, "editor_sync_assist_download_later");
      continue;
      a(paramInt, "editor_sync_assist_download_from_yellow_text");
      continue;
      a(paramInt, "editor_sync_assist_into_qqsyncassist");
      continue;
      a(paramInt, "editor_recommend_weekly_popup_download");
      continue;
      a(paramInt, "editor_notification_remind_updatevirusbase");
      continue;
      a(paramInt, "editor_notification_update_virus_database");
      continue;
      a(paramInt, "editor_notification_cancel_update_virusbase");
      continue;
      a(paramInt, "editor_notification_enter_kill_tool");
      continue;
      a(paramInt, "editor_enter_qqpim");
      continue;
      a(paramInt, "editor_notification_adblock");
      continue;
      a(paramInt, "editor_into_tools_adblock");
      continue;
      a(paramInt, "editor_adblock_allow_this_notify");
      continue;
      a(paramInt, "editor_adblock_ban_this_notify");
      continue;
      a(paramInt, "editor_adblock_allow_suspicious_notify");
      continue;
      a(paramInt, "editor_adblock_ban_suspicious_notify");
      continue;
      a(paramInt, "editor_adblock_menu_clean_history");
      continue;
      a(paramInt, "editor_adblock_into_setting");
      continue;
      a(paramInt, "editor_adblock_into_setting_notification_service");
      continue;
      a(paramInt, "editor_adblock_report_adapplication");
      continue;
      a(paramInt, "editor_adblock_notify_times");
      continue;
      a(paramInt, "editor_before_onekeyanaly_usememory_percent");
      continue;
      a(paramInt, "editor_after_onekeyanaly_usememory_percent");
      continue;
      a(paramInt, "editor_websiteremind_remindwindow_iknow");
      continue;
      a(paramInt, "editor_websiteremind_remindwindow_neverremind");
      continue;
      a(paramInt, "editor_settings_websiteremind_open_or_close");
      continue;
      a(paramInt, "editor_settings_websiteremind_keep_open");
      continue;
      a(paramInt, "editor_settings_websiteremind_keep_close");
      continue;
      a(paramInt, "editor_network_manager_click_flow_not_right");
      continue;
      a(paramInt, "editor_network_manager_report_flow_not_right");
      continue;
      a(paramInt, "editor_network_manager_adjust_flow_not_right");
      continue;
      a(paramInt, "editor_block_sms_report_single_message");
      continue;
      a(paramInt, "editor_block_sms_delete_single_message");
      continue;
      a(paramInt, "editor_block_sms_addblacklist_single_message");
      continue;
      a(paramInt, "editor_block_sms_addwhitelist_single_message");
      continue;
      a(paramInt, "editor_block_sms_restore_single_message");
      continue;
      a(paramInt, "editor_block_sms_reportview_report_sysmessage");
      continue;
      a(paramInt, "editor_block_sms_reportview_report_blockedmessage");
      continue;
      a(paramInt, "editor_block_sms_report_single_calllog");
      continue;
      a(paramInt, "editor_block_sms_addblacklist_single_calllog");
      continue;
      a(paramInt, "editor_block_sms_addcontact_single_calllog");
      continue;
      a(paramInt, "editor_block_sms_call_single_calllog");
      continue;
      a(paramInt, "editor_block_sms_sendsms_single_calllog");
      continue;
      a(paramInt, "editor_block_sms_reportview_report_syscall");
      continue;
      a(paramInt, "editor_block_sms_reportview_report_blockedcall");
      continue;
      a(paramInt, "editor_secure_space_create_desktop");
      continue;
      a(paramInt, "editor_notification_contact_backup");
      continue;
      a(paramInt, "editor_save_power_from_notification");
      continue;
      a(paramInt, "editor_charge_vindicator_from_notification");
      continue;
      a(paramInt, "editor_charge_vindicator_from_save_power");
      continue;
      a(paramInt, "editor_usmanager_filesave_havefile_users");
      continue;
      a(paramInt, "editor_usmanager_privacylock_havesoftware_users");
      continue;
      a(paramInt, "editor_usmanager_securespace_havecontent_users");
      continue;
      a(paramInt, "editor_usmanager_permissionmonitor_open_users");
      continue;
      a(paramInt, "editor_usmanager_file_save_encrypt");
      continue;
      a(paramInt, "editor_usmanager_file_save_decrytion");
      continue;
      a(paramInt, "editor_usmanager_privacy_lock_addlock");
      continue;
      a(paramInt, "editor_usmanager_privacy_lock_releaselock");
      continue;
      a(paramInt, "Editor_ACTION_TrafficAutoAdjust_Close");
      continue;
      a(paramInt, "Editor_ACTION_NetWorkTraffic_Window_Close");
      continue;
      a(paramInt, "editor_malicoous_urls_dialog_i_know");
      continue;
      a(paramInt, "editor_close_service_keep_open");
      continue;
      a(paramInt, "editor_desk_assist_fly_mode");
      continue;
      a(paramInt, "editor_desk_assist_fly_gps");
      continue;
      a(paramInt, "editor_desk_assist_fly_shock");
      continue;
      a(paramInt, "editor_desk_assist_fly_screen_rotation");
      continue;
      a(paramInt, "editore_desk_assist_fly_slide_time_deskassis_area");
      continue;
      a(paramInt, "editor_desk_assist_fly_running_process_num");
      continue;
      a(paramInt, "editor_desk_assist_fly_processmanager_click_num");
      continue;
      a(paramInt, "editor_desk_assist_fly_processmanager_back_click_num");
      continue;
      a(paramInt, "editor_rocket_egg_share_dialog_microblog");
      continue;
      a(paramInt, "editor_rocket_egg_share_dialog_back_btn");
      continue;
      a(paramInt, "editor_rocket_egg_share_dialog_no_notifi_checkbox");
      continue;
      a(paramInt, "editor_rocket_egg_introduction_dialog_i_know");
      continue;
      a(paramInt, "editor_rocket_egg_introduction_dialog_more");
      continue;
      a(paramInt, "editor_rocket_egg_award_winning_dialog_get");
      continue;
      a(paramInt, "editor_rocket_egg_award_winning_dialog_no_get");
      continue;
      a(paramInt, "editor_rocket_egg_giveup_award_winning_dialog_click_wrong");
      continue;
      a(paramInt, "editor_rocket_egg_giveup_award_winning_dialog_click_right");
      continue;
      a(paramInt, "editor_rocket_egg_sure_award_winning_dialog_has_get");
      continue;
      a(paramInt, "editor_rocket_egg_sure_award_winning_dialog_try_again");
      continue;
      a(paramInt, "editor_about_givescore");
      continue;
      a(paramInt, "editor_about_givescore_comein");
      continue;
      a(paramInt, "editor_about_givescore_next");
      continue;
      a(paramInt, "editor_update_self_mode_googleplay");
      continue;
      a(paramInt, "editor_update_self_mode_offical");
      continue;
      a(paramInt, "editor_mobile_antithief_open");
      continue;
      a(paramInt, "editor_mobile_antithief_next");
      continue;
      a(paramInt, "editor_mobile_antithief_guide_open");
      continue;
      a(paramInt, "editor_mobile_antithief_guide_land");
      continue;
      a(paramInt, "editor_mobile_antithief_guide_skip");
      continue;
      a(paramInt, "editor_mobile_antithief_guide_finish");
      continue;
      a(paramInt, "editor_mobile_antithief_by_protected_info");
      continue;
      a(paramInt, "editor_mobile_antithief_close");
      continue;
      a(paramInt, "editor_get_root_superuser_mode");
      continue;
      a(paramInt, "editor_malicoous_urls_dialog_time");
      continue;
      a(paramInt, "editor_malicoous_urls_toast_time");
      continue;
      a(paramInt, "editor_private_smsbox_face_recognition_update");
      continue;
      a(paramInt, "editor_private_smsbox_face_recognition_click");
      continue;
      a(paramInt, "editor_private_smsbox_face_recognition_independent_password_setting");
      continue;
      a(paramInt, "editor_private_protect_password_setting");
      continue;
      a(paramInt, "editor_password_center_switch_password_mode");
      continue;
      a(paramInt, "editor_powermanager_download_powermanager");
      continue;
      a(paramInt, "editor_powermanager_install_powermanager");
      continue;
      a(paramInt, "editor_tarffic_monitor_setting_auto_traffic_redress");
      continue;
      a(paramInt, "editor_mysoftware_software_update_cancel_ignore");
      continue;
      a(paramInt, "editor_mysoftware_software_update_ignore");
      continue;
      a(paramInt, "editor_mysoftware_software_update_ignore_list");
      continue;
      a(paramInt, "editor_secure_settings_desktopstyle");
      continue;
      a(paramInt, "editor_secure_assistant_setting_style");
      continue;
      a(paramInt, "editor_secure_rocket_style");
      continue;
      a(paramInt, "editor_secure_moon_style");
      continue;
      a(paramInt, "editor_secure_remind_after_10_2_entersetting");
      continue;
      a(paramInt, "editor_secure_remind_after_10_2_cancle");
      continue;
      a(paramInt, "editor_secure_adbblock_setting");
      continue;
      a(paramInt, "editor_secure_websitecheck_keepvisit");
      continue;
      a(paramInt, "editor_secure_websitecheck_stopvisit");
      continue;
      a(paramInt, "editor_secure_tool_qqpimcenter_useimmediatly");
      continue;
      a(paramInt, "editor_secure_tool_qqpimcenter_saylater");
      continue;
      a(paramInt, "editor_secure_uninstall_one_key_analysis_dialog");
      continue;
      a(paramInt, "editor_secure_uninstall_one_key_analysis_dialog_go_to_analysis");
      continue;
      a(paramInt, "editor_secure_intercept_resume_message");
      continue;
      a(paramInt, "editor_secure_intercept_recover_sms_sure");
      continue;
      a(paramInt, "editor_secure_tools_recharge");
      continue;
      a(paramInt, "editor_secure_network_manager_config_change_sure");
      continue;
      a(paramInt, "editor_secure_us_manager_software_lock_open");
      continue;
      a(paramInt, "editor_secure_us_manager_software_lock_close");
      continue;
      a(paramInt, "editor_secure_us_manager_software_lock_click");
      continue;
      a(paramInt, "editor_secure_us_manager_unlock_by_photo");
      continue;
      a(paramInt, "editor_secure_us_manager_unlock_by_faceverify");
      continue;
      a(paramInt, "editor_secure_us_manager_use_photo_lock");
      continue;
      a(paramInt, "editor_secure_us_manager_open_password_protect");
      continue;
      a(paramInt, "editor_secure_us_manager_faceverify_failed");
      continue;
      a(paramInt, "editor_secure_us_manager_faceverify_success");
      continue;
      a(paramInt, "editor_secure_into_notification_movesoftware");
      continue;
      a(paramInt, "editor_secure_mainview_guide_user_intercept_prority_sure");
      continue;
      a(paramInt, "editor_secure_mainview_guide_user_intercept_prority_cancel");
      continue;
      a(paramInt, "editor_secure_intercept_guide_user_intercept_prority_sure");
      continue;
      a(paramInt, "editor_secure_intercept_guide_user_intercept_prority_cancel");
      continue;
      a(paramInt, "editor_secure_privatecontact_call");
      continue;
      a(paramInt, "editor_secure_privatecontact_send");
      continue;
      a(paramInt, "editor_secure_privatecontact_delete");
      continue;
      a(paramInt, "editor_secure_mobile_antithief_by_lost_phone_link");
      continue;
      a(paramInt, "editor_secure_one_key_optimize_not_optimize_infact");
      continue;
      a(paramInt, "editor_secure_mobile_antithief_click_have_no_qq");
      continue;
      a(paramInt, "editor_secure_into_deep_clean");
      continue;
      a(paramInt, "editor_secure_deep_clean_into_system_rubbish");
      continue;
      a(paramInt, "editor_secure_deep_clean_remnants_onekey_all");
      continue;
      a(paramInt, "editor_secure_deep_clean_remnants_onekey_not_all");
      continue;
      a(paramInt, "editor_secure_deep_clean_system_rubbish_onekey_all");
      continue;
      a(paramInt, "editor_secure_deep_clean_system_rubbish_onekey_not_all");
      continue;
      a(paramInt, "editor_secure_mainview_click_menu_connect_computer");
      continue;
      a(paramInt, "editor_secure_into_connectassistant_downloadview");
      continue;
      a(paramInt, "editor_secure_connectassistant_downloadview_click_download");
      continue;
      a(paramInt, "editor_secure_network_manager_click_call_check_gprs");
      continue;
      a(paramInt, "editor_secure_network_manager_click_recomand");
      continue;
      a(paramInt, "editor_secure_network_manager_not_click_recomand");
      continue;
      a(paramInt, "editor_secure_benchmark_click_entrance");
      continue;
      a(paramInt, "editor_secure_benchmark_click_download");
      continue;
      a(paramInt, "editor_secure_intercept_receive_mark_unfamily_remind");
      continue;
      a(paramInt, "editor_secure_intercept_click_notification_mark_unfamily");
      continue;
      a(paramInt, "editor_secure_intercept_notification_mark_unfamily_mark");
    }
  }

  public final void a(int paramInt1, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
    case 26174:
    case 26175:
    case 26176:
    case 26177:
    case 26178:
    case 26179:
    case 26180:
    case 26419:
    case 26389:
    }
    while (true)
    {
      return;
      a(paramInt1, "Editor_Secure_NetError_CloudScan", paramInt2);
      continue;
      a(paramInt1, "Editor_Secure_NetError_UpdateVirusBase", paramInt2);
      continue;
      a(paramInt1, "Editor_Secure_NetError_CheckDataBase", paramInt2);
      continue;
      a(paramInt1, "Editor_Secure_NetError_CheckSoftVersion", paramInt2);
      continue;
      a(paramInt1, "Editor_Secure_NetError_CheckMySoftware", paramInt2);
      continue;
      a(paramInt1, "Editor_Secure_NetError_SoftwareGame", paramInt2);
      continue;
      a(paramInt1, "Editor_Secure_NetError_QQNetDisk", paramInt2);
      continue;
      a(paramInt1, "editor_secure_cloudmanager_connect", paramInt2);
      continue;
      a(paramInt1, "editor_get_root_result", paramInt2);
    }
  }

  public final boolean a(String paramString, int paramInt)
  {
    if (b(this.a.getString(paramString, null), paramInt).size() > 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ArrayList<kt> b()
  {
    ArrayList localArrayList = new ArrayList();
    a(localArrayList, "FILTER_SAVE_SUC_STR", 1);
    a(localArrayList, "INTO_FILTERINFO_STR", 2);
    a(localArrayList, "START_KILL_STR", 3);
    a(localArrayList, "UPDATE_VIRUS_BASE_STR", 4);
    a(localArrayList, "INTO_SECRET_STR", 5);
    a(localArrayList, "ONEKEY_CLEAR_STR", 6);
    a(localArrayList, "INTO_PRO_MANAGE_STR", 7);
    a(localArrayList, "INTO_APP_MANAGE_STR", 8);
    a(localArrayList, "DOWNLOAD_STR", 9);
    a(localArrayList, "DAY_BEST_TAB_STR", 10);
    a(localArrayList, "PRESS_AD_STR", 11);
    a(localArrayList, "PRESS_FIRST_SEND_STR", 12);
    a(localArrayList, "ONE_KEY_CHECK_STR", 13);
    a(localArrayList, "ONE_KEY_OPTIMIZATION_STR", 31);
    a(localArrayList, "USED_COPY_STR", 14);
    a(localArrayList, "USED_RESET_STR", 15);
    a(localArrayList, "CHARGE_SMS_CHECK_STR", 16);
    a(localArrayList, "LOCATION_CHECK_STR", 17);
    a(localArrayList, "OPEN_IPCALL_STR", 18);
    a(localArrayList, "SET_IPCALL_STR", 19);
    a(localArrayList, "KILL_ONE_P_STR", 20);
    a(localArrayList, "KILL_ALL_P_STR", 21);
    a(localArrayList, "CLEAR_ONE_RUBISH_STR", 22);
    a(localArrayList, "CLEAR_All_RUBISH_STR", 23);
    a(localArrayList, "ADD_WHITE_NAME_STR", 24);
    a(localArrayList, "ADD_NET_WIDGET_STR", 25);
    a(localArrayList, "INTO_NETSETTING_STR", 26);
    a(localArrayList, "GET_ROOT_STR", 27);
    a(localArrayList, "MOTION_APP_CHANGE_STR", 28);
    a(localArrayList, "SAVE_APP_CHANGE_STR", 29);
    a(localArrayList, "LOG_APP_CHANGE_STR", 30);
    a(localArrayList, "ACTION_UNINSTALLATION_STR", 32);
    a(localArrayList, "Editor_RUNNING_ONEKEY_DO", 34);
    a(localArrayList, "Editor_OPEN_PHONE_ONEKEY_DO", 35);
    a(localArrayList, "Editor_ANTI_THEFT_SWITH", 36);
    a(localArrayList, "Editor_PHONE_CUT_SWITH", 37);
    a(localArrayList, "Editor_PUSH_FUNTION", 38);
    a(localArrayList, "Editor_INTO_MAIN_MENU", 39);
    a(localArrayList, "Editor_INTO_PHONE_KEY_SMALL", 70);
    a(localArrayList, "Editor_INTO_MAINVIEW", 26041);
    a(localArrayList, "Editor_INTO_MYSOFTWARE_ONEKEYANALY", 26042);
    a(localArrayList, "Editor_INTO_MYSOFTWARE_UPDATE", 26043);
    a(localArrayList, "Editor_INTO_MYSOFTWARE_UNINSTALL", 26044);
    a(localArrayList, "Editor_INTO_MYSOFTWARE_APKMANAGER", 26045);
    a(localArrayList, "Editor_INTO_MYSOFTWARE_SOFTWARE_MOVE", 26046);
    a(localArrayList, "Editor_INTO_MARKET_CATEGORY", 26047);
    a(localArrayList, "Editor_INTO_MARKET_NECESSARY", 26048);
    a(localArrayList, "Editor_INTO_MARKET_SEARCH", 26049);
    a(localArrayList, "Editor_INTO_MARKET_DOWNLOAD_MANAGER", 26050);
    a(localArrayList, "Editor_INTO_SYNC_BACKUP_CONTACT", 26051);
    a(localArrayList, "Editor_INTO_SYNC_RESTORE_CONTACT", 26052);
    a(localArrayList, "Editor_INTO_SYNC_ACCOUNT_SETTING", 26053);
    a(localArrayList, "Editor_INTO_MAINVIEW_MYSOFTWARE", 26054);
    a(localArrayList, "Editor_INTO_MAINVIEW_MARKET", 26055);
    a(localArrayList, "Editor_INTO_MAINVIEW_INTERCEPT", 26056);
    a(localArrayList, "Editor_INTO_MIANVIEW_VIRUS_SCAN", 26057);
    a(localArrayList, "Editor_INTO_MAINVIEW_COMMON_TOOLS", 26058);
    a(localArrayList, "Editor_INTO_NOTIFICATION_VIRUS_SCAN", 26059);
    a(localArrayList, "Editor_INTO_NOTIFICATION_SMS_CHECK", 26060);
    a(localArrayList, "Editor_INTO_NOTIFICATION_SECURESPACE", 26061);
    a(localArrayList, "Editor_INTO_NOTIFICATION_UPDATE", 26062);
    a(localArrayList, "Editor_INTO_NOTIFICATION_DOWNLOAD", 26063);
    a(localArrayList, "Editor_INTO_BOTIFICATION_SCREENSHOT", 26064);
    a(localArrayList, "Editor_INTO_PROCESSMAIN_MANAGER", 26065);
    a(localArrayList, "Editor_INTO_PROCESSMAIN_BOOT_OPTIMIZE", 26066);
    a(localArrayList, "Editor_INTO_PROCESSMAIN_DATA_CLEAR", 26067);
    a(localArrayList, "Editor_INTO_VIRUS_QUICKSCAN", 26068);
    a(localArrayList, "Editor_INTO_VIRUS_FULL_SCAN", 26069);
    a(localArrayList, "Editor_INTO_VIRUS_UPDATE", 26070);
    a(localArrayList, "Editor_INTO_VIRUS_RECORD", 26071);
    a(localArrayList, "Editor_INTO_PERMISSION_SETTING", 26072);
    a(localArrayList, "Editor_INTO_PERMISSION_SOFTWARE", 26073);
    a(localArrayList, "Editor_INTO_PERMISSION_LOG", 26074);
    a(localArrayList, "Editor_INTO_TOOLS_SCREEN_SHOT", 26075);
    a(localArrayList, "Editor_INTO_TOOLS_IPCALL", 26076);
    a(localArrayList, "Editor_INTO_TOOLS_LOCATION", 26077);
    a(localArrayList, "Editor_INTO_TOOLS_NUMBER_QUERY", 26078);
    a(localArrayList, "Editor_INTO_TOOLS_PASSWORD_VER", 26079);
    a(localArrayList, "Editor_MYSOFTWARE_ANALY_UNINSTALL", 26080);
    a(localArrayList, "Editor_MYSOFTWARE_UPDATE_ALL", 26081);
    a(localArrayList, "Editor_MYSOFTWARE_UPDATE_ONE", 26082);
    a(localArrayList, "Editor_MYSOFTWARE_UNINSTALL_PERSONAL", 26083);
    a(localArrayList, "Editor_BATTERY_CHANGE_MODE", 26084);
    a(localArrayList, "Editor_BATTERY_ADD_DIYMODE", 26085);
    a(localArrayList, "Editor_BATTERY_OPEN", 26086);
    a(localArrayList, "Editor_BATTERY_CLOSE", 26087);
    a(localArrayList, "Editor_BATTERY_SETTING", 26088);
    a(localArrayList, "Editor_WEBDISK_SETTING", 26089);
    a(localArrayList, "Editor_WEBDISK_CHANGE_TAB", 26090);
    a(localArrayList, "Editor_NETWORK_AUTOADJUST", 26091);
    a(localArrayList, "Editor_NETWORK_WAP_SORT", 26092);
    a(localArrayList, "Editor_NETWORK_SETTING", 26093);
    a(localArrayList, "Editor_SMSCHARGE_CHECK_SCAN", 26094);
    a(localArrayList, "Editor_INTERCEPT_FILTER_SETTING", 26095);
    a(localArrayList, "Editor_INTERCEPT_CONTACT_LIST_BACKUP", 26096);
    a(localArrayList, "Editor_INTERCEPT_CONTACT_LIST_RESTORE", 26097);
    a(localArrayList, "Editor_INTERCEPT_ADD_BLACK_CONTACT", 26098);
    a(localArrayList, "Editor_INTERCEPT_ADD_WHITE_CONTACT", 26099);
    a(localArrayList, "Editor_INTERCEPT_ADD_KEYWORD", 26100);
    a(localArrayList, "Editor_SECURE_SPACE_ADD_CONTACT", 26101);
    a(localArrayList, "Editor_PICKPROOF_OPEN", 26102);
    a(localArrayList, "Editor_PICKPROOF_GUIDE_FINISH", 26103);
    a(localArrayList, "Editor_PROCESSMAIN_ONE_KEY_OPTIMIZE", 26104);
    a(localArrayList, "Editor_PROCESSMAIN_PRO_MRG_STOPALL", 26105);
    a(localArrayList, "Editor_PERMISSION_OPEN", 26106);
    a(localArrayList, "Editor_PERMISSION_SOFTWARE_SET", 26107);
    a(localArrayList, "Editor_PERMISSION_SECURESPACE", 26108);
    a(localArrayList, "Editor_TOOLS_SCREEN_SHOT_OPEN", 26109);
    a(localArrayList, "Editor_MAINVIEW_OPTIMIZE_FINISH", 26110);
    a(localArrayList, "Editor_INTO_NET_MANAGER", 26112);
    a(localArrayList, "Editor_INTO_PHONE_UP", 26113);
    a(localArrayList, "Editor_INTO_SAVE_POWER", 26114);
    a(localArrayList, "Editor_INTO_SYNC_COPY", 26115);
    a(localArrayList, "Editor_INTO_OPEN_UP", 26116);
    a(localArrayList, "Editor_INTO_APK_MAANGER", 26117);
    a(localArrayList, "Editor_INTO_US_MAANGER", 26118);
    a(localArrayList, "Editor_INTO_PAY_SMS", 26119);
    a(localArrayList, "Editor_INTO_IP_CALL", 26120);
    a(localArrayList, "Editor_INTO_PHONE_CHECK", 26121);
    a(localArrayList, "Editor_INTO_INTO_SAVE_PHONE", 26122);
    a(localArrayList, "Editor_INTO_PHONE_CUT", 26123);
    a(localArrayList, "Editor_INTO_INTO_COMMON_FUNTION", 26124);
    a(localArrayList, "Editor_INTO_WEBDISK", 26125);
    a(localArrayList, "Editor_State_NetWorkTraffic_Window_Open", 26132);
    a(localArrayList, "Editor_TaskManagerWidgetMini_Open", 26134);
    a(localArrayList, "Editor_TaskManagerWidgetMini_Close", 26135);
    a(localArrayList, "Editor_KillProcess_WidgetMini", 26136);
    a(localArrayList, "Editor_TaskManagerWidget_Open", 26137);
    a(localArrayList, "Editor_TaskManagerWidger_Close", 26138);
    a(localArrayList, "Editor_TaskManagerWidget_INTO_MainView", 26139);
    a(localArrayList, "Editor_OneKeyOptimize_TaskManagerWidger", 26140);
    a(localArrayList, "Editor_NetSetWidget_Open", 26141);
    a(localArrayList, "Editor_NetSetWidget_Close", 26142);
    a(localArrayList, "Editor_NetSetWidget_INTO_MainView", 26143);
    a(localArrayList, "Editor_NetSetWidget_Wifi_Open", 26144);
    a(localArrayList, "Editor_NetSetWidget_Wifi_Close", 26145);
    a(localArrayList, "Editor_NetSetWidget_GPRS_Open", 26146);
    a(localArrayList, "Editor_NetSetWidget_GPRS_Close", 26147);
    a(localArrayList, "Editor_NetSetWidget_NET_WAP_Change", 26148);
    a(localArrayList, "Editor_NetSetWidget_INTO_SettingView", 26149);
    a(localArrayList, "Editor_MainView_CheckDBUpdate", 26150);
    a(localArrayList, "Editor_MainView_CheckVersionUpdate", 26151);
    a(localArrayList, "Editor_Market_INTO_MySoftware", 26152);
    a(localArrayList, "Editor_Market_Advertise_Position1", 26153);
    a(localArrayList, "Editor_Market_Advertise_Position2", 26154);
    a(localArrayList, "Editor_Market_Advertise_Position3", 26155);
    a(localArrayList, "Editor_Market_SOFTWARE_CATEGORY", 26156);
    a(localArrayList, "Editor_Market_TAB_NEW_PRODUCT", 26157);
    a(localArrayList, "Editor_ACTIVATE_QQSECURE_UI", 26158);
    a(localArrayList, "Editor_SETTINGS_STOP_SERVICE", 26159);
    a(localArrayList, "Editor_SETTINGS_START_SERVICE", 26160);
    a(localArrayList, "Editor_SETTINGS_STOP_ASSISTANT", 26161);
    a(localArrayList, "Editor_SETTINGS_START_ASSISTANT", 26162);
    a(localArrayList, "Editor_ASSISTANT_OPTIMIZE", 26163);
    a(localArrayList, "Editor_ASSISTANT_EXPAND_MORE", 26164);
    a(localArrayList, "Editor_ASSISTANT_CLOSE_MORE", 26165);
    a(localArrayList, "Editor_ASSISTANT_CLOSE_FLOW_WINDOW", 26166);
    a(localArrayList, "Editor_ASSISTANT_OPEN_FLOW_WINDOW", 26167);
    a(localArrayList, "Editor_ASSISTANT_SWITCH_GPRS", 26168);
    a(localArrayList, "Editor_ASSISTANT_SWITCH_WIFI", 26169);
    a(localArrayList, "Editor_ASSISTANT_SWITCH_BELL", 26170);
    a(localArrayList, "Editor_STOP_TASK_CANCEL_ADVICE", 26171);
    a(localArrayList, "Editor_STOP_TASK_ACCEPT_ADVICE", 26172);
    a(localArrayList, "Editor_Private_Secure_INTO_Permission_Monitor", 26184);
    a(localArrayList, "Editor_Private_Secure_INTO_File_Save", 26185);
    a(localArrayList, "Editor_Private_Secure_INTO_Privacy_Lock", 26186);
    a(localArrayList, "Editor_Notification_INTO_Intercept", 26187);
    a(localArrayList, "Editor_ONEKEY_CHECK_Cancel_On_Switch", 26188);
    a(localArrayList, "Editor_ONEKEY_CHECK_Cancel_On_AutoRun", 26189);
    a(localArrayList, "Editor_ONEKEY_CHECK_Cancel_On_CacheData", 26190);
    a(localArrayList, "Editor_ONEKEY_CHECK_Cancel_On_Virus", 26191);
    a(localArrayList, "Editor_NETWORK_MANAGER_INTO_NetWork_Filter", 26192);
    a(localArrayList, "Editor_NETWORK_MANAGER_NetWork_Filter_OperSwitch", 26193);
    a(localArrayList, "Editor_ImportContactInfo_Import", 26195);
    a(localArrayList, "Editor_ImportContactInfo_Cancel", 26195);
    a(localArrayList, "Editor_VirusTabView_INTO_ProfessionalKiller", 26197);
    a(localArrayList, "Editor_VirusTabView_Finish_QuickScan", 26198);
    a(localArrayList, "Editor_VirusTabView_Finish_FullScan", 26199);
    a(localArrayList, "Editor_Market_INTO_Software_Rank", 26200);
    a(localArrayList, "Editor_Market_INTO_Game", 26201);
    a(localArrayList, "Editor_New_Secure_OPEN_PHONE_ONEKEY_DO", 26202);
    a(localArrayList, "Editor_Secure_NetError_CloudScan", 26174);
    a(localArrayList, "Editor_Secure_NetError_UpdateVirusBase", 26175);
    a(localArrayList, "Editor_Secure_NetError_CheckDataBase", 26176);
    a(localArrayList, "Editor_Secure_NetError_CheckSoftVersion", 26177);
    a(localArrayList, "Editor_Secure_NetError_CheckMySoftware", 26178);
    a(localArrayList, "Editor_Secure_NetError_SoftwareGame", 26179);
    a(localArrayList, "Editor_Secure_NetError_QQNetDisk", 26180);
    a(localArrayList, "Editor_ACTION_Secure_QQPHONEBOOK_PUSH_OK", 26212);
    a(localArrayList, "Editor_ACTION_Secure_QQPHONEBOOK_PUSH_CAMCEL", 26213);
    a(localArrayList, "Editor_PUSH_WANDOUJIA", 26214);
    a(localArrayList, "Editor_Secure_MAINVIEW_Move_Desktop_Panel_Boxes", 26215);
    a(localArrayList, "Editor_Secure_NETWORK_MANAGER_Flow_Auto_Adjust_Config", 26219);
    a(localArrayList, "Editor_Secure_NETWORK_MANAGER_GPRS_Used_For_Month_Config", 26220);
    a(localArrayList, "Editor_Secure_NETWORK_MANAGER_GPRS_Used_For_Month_Config_Confirm", 26221);
    a(localArrayList, "Editor_Secure_NETWORK_MANAGER_GPRS_Used_For_Month_Config_By_SMS", 26222);
    a(localArrayList, "Editor_Secure_NETWORK_MANAGER_GPRS_Used_For_Month_Config_By_Phone", 26223);
    a(localArrayList, "Editor_Secure_NETWORK_MANAGER_GPRS_TotalLimit_For_Month_Config", 26224);
    a(localArrayList, "Editor_Secure_NETWORK_MANAGER_GPRS_Closing_Day_Config", 26225);
    a(localArrayList, "Editor_Secure_Notification_Recommend_Weekly", 26231);
    a(localArrayList, "Editor_Secure_Market_Create_Desktop_Shortcut", 26232);
    a(localArrayList, "Editor_Secure_MYSOFTWARE_ONEKEYANALY_Unistall", 26233);
    a(localArrayList, "Editor_Secure_PROCESSMAIN_INTO_SettingView", 26234);
    a(localArrayList, "Editor_Secure_PROCESSMAIN_Add_OneKeyAnaly_WhiteList", 26235);
    a(localArrayList, "Editor_Secure_PROCESSMAIN_Add_OneKeyAnaly_WhiteList_Confirm", 26236);
    a(localArrayList, "Editor_Secure_VirusTabView_Show_Menu", 26237);
    a(localArrayList, "Editor_Secure_VirusTabView_INTO_Menu_SettingView", 26238);
    a(localArrayList, "Editor_Secure_VirusTabView_Cancel_QuickScan", 26239);
    a(localArrayList, "Editor_Secure_VirusTabView_Cancel_FullScan", 26240);
    a(localArrayList, "Editor_Secure_PROCESSMAIN_WhileList_Setting_Hint_Set_Immediately", 26241);
    a(localArrayList, "Editor_Secure_PROCESSMAIN_WhileList_Setting_Hint_Never_Ask", 26242);
    a(localArrayList, "Editor_Secure_Notification_Prompt_VirusLib_Update", 26243);
    a(localArrayList, "Editor_Secure_Notification_VirusLib_Update_And_Scan", 26244);
    a(localArrayList, "Editor_Secure_Notification_VirusLib_Update_Cancel", 26245);
    a(localArrayList, "Editor_Secure_Notification_Prompt_New_ProfessionalKiller", 26246);
    a(localArrayList, "Editor_Secure_Outside_VirusTabView_Kill_Immediately", 26247);
    a(localArrayList, "Editor_Secure_Outside_VirusTabView_Dont_Kill_Now", 26248);
    a(localArrayList, "Editor_Secure_MAINVIEW_Show_Menu", 26249);
    a(localArrayList, "Editor_Secure_MAINVIEW_Into_Menu_Setting", 26250);
    a(localArrayList, "Editor_Secure_MAINVIEW_Into_Menu_Feedback", 26251);
    a(localArrayList, "Editor_Secure_MAINVIEW_Into_Menu_CheckUpdate", 26252);
    a(localArrayList, "Editor_Secure_MAINVIEW_Into_Menu_Feedback_Problem", 26253);
    a(localArrayList, "Editor_Secure_MAINVIEW_Into_Menu_Feedback_Location", 26254);
    a(localArrayList, "Editor_Secure_MAINVIEW_Into_Menu_CheckUpdate_Update_Immediately", 26255);
    a(localArrayList, "Editor_Secure_MAINVIEW_Into_Menu_CheckUpdate_Update_NextTime", 26256);
    a(localArrayList, "Editor_Secure_MAINVIEW_Into_Menu_About", 26257);
    a(localArrayList, "Editor_Secure_MAINVIEW_Into_Menu_Recommend_To_Friend", 26258);
    a(localArrayList, "Editor_Secure_MAINVIEW_Into_Menu_OperatingActivity", 26259);
    a(localArrayList, "Editor_Secure_Battery_Open_Deep_Save", 26262);
    a(localArrayList, "editor_assistant_switch_audio", 26263);
    a(localArrayList, "editor_assistant_open", 26264);
    a(localArrayList, "editor_system_setting_assistant_style_number", 26265);
    a(localArrayList, "editor_system_setting_assistant_style_rocket", 26266);
    a(localArrayList, "editor_assistant_setting", 26267);
    a(localArrayList, "editor_assistant_setting_open", 26268);
    a(localArrayList, "editor_assistant_setting_style_number", 26269);
    a(localArrayList, "editor_assistant_setting_style_rocket", 26270);
    a(localArrayList, "editor_assistant_move_to_fire", 26271);
    a(localArrayList, "editor_assistant_rocket_launch_success", 26272);
    a(localArrayList, "editor_commontools_wandoujia_enabled", 26273);
    a(localArrayList, "editor_commontools_wandoujia_next_time", 26274);
    a(localArrayList, "editor_commontools_wandoujia_open", 26275);
    a(localArrayList, "editor_securespace_restore_sms_from_sdcard", 26276);
    a(localArrayList, "editor_securespace_restore_sms_from_sdcard_cancel", 26277);
    a(localArrayList, "editor_sync_assist_download_immediatly", 26278);
    a(localArrayList, "editor_sync_assist_download_later", 26279);
    a(localArrayList, "editor_sync_assist_download_from_yellow_text", 26280);
    a(localArrayList, "editor_sync_assist_into_qqsyncassist", 26281);
    a(localArrayList, "editor_recommend_weekly_popup_download", 26283);
    a(localArrayList, "editor_notification_remind_updatevirusbase", 26285);
    a(localArrayList, "editor_notification_update_virus_database", 26286);
    a(localArrayList, "editor_notification_cancel_update_virusbase", 26287);
    a(localArrayList, "editor_notification_enter_kill_tool", 26288);
    a(localArrayList, "editor_enter_qqpim", 26289);
    a(localArrayList, "editor_notification_adblock", 26290);
    a(localArrayList, "editor_into_tools_adblock", 26291);
    a(localArrayList, "editor_adblock_allow_this_notify", 26292);
    a(localArrayList, "editor_adblock_ban_this_notify", 26293);
    a(localArrayList, "editor_adblock_allow_suspicious_notify", 26294);
    a(localArrayList, "editor_adblock_ban_suspicious_notify", 26295);
    a(localArrayList, "editor_adblock_menu_clean_history", 26296);
    a(localArrayList, "editor_adblock_into_setting", 26297);
    a(localArrayList, "editor_adblock_into_setting_notification_service", 26298);
    a(localArrayList, "editor_adblock_report_adapplication", 26299);
    a(localArrayList, "editor_adblock_notify_times", 26300);
    a(localArrayList, "editor_before_onekeyanaly_usememory_percent", 26301);
    a(localArrayList, "editor_after_onekeyanaly_usememory_percent", 26302);
    a(localArrayList, "editor_websiteremind_remindwindow_iknow", 26307);
    a(localArrayList, "editor_websiteremind_remindwindow_neverremind", 26308);
    a(localArrayList, "editor_settings_websiteremind_open_or_close", 26309);
    a(localArrayList, "editor_settings_websiteremind_keep_open", 26310);
    a(localArrayList, "editor_settings_websiteremind_keep_close", 26311);
    a(localArrayList, "editor_network_manager_click_flow_not_right", 26312);
    a(localArrayList, "editor_network_manager_report_flow_not_right", 26313);
    a(localArrayList, "editor_network_manager_adjust_flow_not_right", 26314);
    a(localArrayList, "editor_block_sms_report_single_message", 26315);
    a(localArrayList, "editor_block_sms_delete_single_message", 26316);
    a(localArrayList, "editor_block_sms_addblacklist_single_message", 26317);
    a(localArrayList, "editor_block_sms_addwhitelist_single_message", 26318);
    a(localArrayList, "editor_block_sms_restore_single_message", 26319);
    a(localArrayList, "editor_block_sms_reportview_report_sysmessage", 26320);
    a(localArrayList, "editor_block_sms_reportview_report_blockedmessage", 26321);
    a(localArrayList, "editor_block_sms_report_single_calllog", 26322);
    a(localArrayList, "editor_block_sms_addblacklist_single_calllog", 26323);
    a(localArrayList, "editor_block_sms_addcontact_single_calllog", 26324);
    a(localArrayList, "editor_block_sms_call_single_calllog", 26325);
    a(localArrayList, "editor_block_sms_sendsms_single_calllog", 26326);
    a(localArrayList, "editor_block_sms_reportview_report_syscall", 26327);
    a(localArrayList, "editor_block_sms_reportview_report_blockedcall", 26328);
    a(localArrayList, "editor_secure_space_create_desktop", 26329);
    a(localArrayList, "editor_notification_contact_backup", 26330);
    a(localArrayList, "editor_save_power_from_notification", 26341);
    a(localArrayList, "editor_charge_vindicator_from_notification", 26342);
    a(localArrayList, "editor_charge_vindicator_from_save_power", 26343);
    a(localArrayList, "editor_usmanager_filesave_havefile_users", 26344);
    a(localArrayList, "editor_usmanager_privacylock_havesoftware_users", 26345);
    a(localArrayList, "editor_usmanager_securespace_havecontent_users", 26346);
    a(localArrayList, "editor_usmanager_permissionmonitor_open_users", 26347);
    a(localArrayList, "editor_usmanager_file_save_encrypt", 26348);
    a(localArrayList, "editor_usmanager_file_save_decrytion", 26349);
    a(localArrayList, "editor_usmanager_privacy_lock_addlock", 26350);
    a(localArrayList, "editor_usmanager_privacy_lock_releaselock", 26351);
    a(localArrayList, "editor_malicoous_urls_dialog_i_know", 26355);
    a(localArrayList, "editor_close_service_keep_open", 26356);
    a(localArrayList, "editor_desk_assist_fly_mode", 26357);
    a(localArrayList, "editor_desk_assist_fly_gps", 26359);
    a(localArrayList, "editor_desk_assist_fly_shock", 26358);
    a(localArrayList, "editor_desk_assist_fly_screen_rotation", 26360);
    a(localArrayList, "editore_desk_assist_fly_slide_time_deskassis_area", 26361);
    a(localArrayList, "editor_desk_assist_fly_running_process_num", 26362);
    a(localArrayList, "editor_desk_assist_fly_processmanager_click_num", 26363);
    a(localArrayList, "editor_desk_assist_fly_processmanager_back_click_num", 26364);
    a(localArrayList, "editor_rocket_egg_share_dialog_microblog", 26365);
    a(localArrayList, "editor_rocket_egg_share_dialog_back_btn", 26366);
    a(localArrayList, "editor_rocket_egg_share_dialog_no_notifi_checkbox", 26367);
    a(localArrayList, "editor_rocket_egg_introduction_dialog_i_know", 26368);
    a(localArrayList, "editor_rocket_egg_introduction_dialog_more", 26369);
    a(localArrayList, "editor_rocket_egg_award_winning_dialog_get", 26370);
    a(localArrayList, "editor_rocket_egg_award_winning_dialog_no_get", 26371);
    a(localArrayList, "editor_rocket_egg_giveup_award_winning_dialog_click_wrong", 26372);
    a(localArrayList, "editor_rocket_egg_giveup_award_winning_dialog_click_right", 26373);
    a(localArrayList, "editor_rocket_egg_sure_award_winning_dialog_has_get", 26374);
    a(localArrayList, "editor_rocket_egg_sure_award_winning_dialog_try_again", 26375);
    a(localArrayList, "editor_about_givescore", 26376);
    a(localArrayList, "editor_about_givescore_comein", 26377);
    a(localArrayList, "editor_about_givescore_next", 26378);
    a(localArrayList, "editor_update_self_mode_googleplay", 26379);
    a(localArrayList, "editor_update_self_mode_offical", 26380);
    a(localArrayList, "editor_mobile_antithief_open", 26381);
    a(localArrayList, "editor_mobile_antithief_next", 26382);
    a(localArrayList, "editor_mobile_antithief_guide_open", 26383);
    a(localArrayList, "editor_mobile_antithief_guide_land", 26384);
    a(localArrayList, "editor_mobile_antithief_guide_skip", 26385);
    a(localArrayList, "editor_mobile_antithief_guide_finish", 26386);
    a(localArrayList, "editor_mobile_antithief_by_protected_info", 26387);
    a(localArrayList, "editor_mobile_antithief_close", 26388);
    a(localArrayList, "editor_get_root_result", 26389);
    a(localArrayList, "editor_get_root_superuser_mode", 26390);
    a(localArrayList, "editor_malicoous_urls_dialog_time", 26391);
    a(localArrayList, "editor_malicoous_urls_toast_time", 26392);
    a(localArrayList, "editor_private_smsbox_face_recognition_update", 26394);
    a(localArrayList, "editor_private_smsbox_face_recognition_click", 26393);
    a(localArrayList, "editor_private_smsbox_face_recognition_independent_password_setting", 26395);
    a(localArrayList, "editor_private_protect_password_setting", 26396);
    a(localArrayList, "editor_password_center_switch_password_mode", 26396);
    a(localArrayList, "editor_powermanager_download_powermanager", 26398);
    a(localArrayList, "editor_powermanager_install_powermanager", 26399);
    a(localArrayList, "editor_tarffic_monitor_setting_auto_traffic_redress", 26400);
    a(localArrayList, "editor_mysoftware_software_update_cancel_ignore", 26403);
    a(localArrayList, "editor_mysoftware_software_update_ignore", 26401);
    a(localArrayList, "editor_mysoftware_software_update_ignore_list", 26402);
    a(localArrayList, "editor_secure_settings_desktopstyle", 26405);
    a(localArrayList, "editor_secure_assistant_setting_style", 26406);
    a(localArrayList, "editor_secure_rocket_style", 26407);
    a(localArrayList, "editor_secure_moon_style", 26408);
    a(localArrayList, "editor_secure_remind_after_10_2_entersetting", 26409);
    a(localArrayList, "editor_secure_remind_after_10_2_cancle", 26410);
    a(localArrayList, "editor_secure_adbblock_setting", 26411);
    a(localArrayList, "editor_secure_websitecheck_keepvisit", 26412);
    a(localArrayList, "editor_secure_websitecheck_stopvisit", 26413);
    a(localArrayList, "editor_secure_tool_qqpimcenter_useimmediatly", 26414);
    a(localArrayList, "editor_secure_tool_qqpimcenter_saylater", 26415);
    a(localArrayList, "editor_secure_uninstall_one_key_analysis_dialog", 26416);
    a(localArrayList, "editor_secure_uninstall_one_key_analysis_dialog_go_to_analysis", 26417);
    a(localArrayList, "editor_secure_intercept_resume_message", 26418);
    a(localArrayList, "editor_secure_cloudmanager_connect", 26419);
    a(localArrayList, "editor_secure_intercept_recover_sms_sure", 26421);
    a(localArrayList, "editor_secure_tools_recharge", 26422);
    a(localArrayList, "editor_secure_network_manager_config_change_sure", 26423);
    a(localArrayList, "editor_secure_us_manager_software_lock_open", 26424);
    a(localArrayList, "editor_secure_us_manager_software_lock_close", 26425);
    a(localArrayList, "editor_secure_us_manager_software_lock_click", 26426);
    a(localArrayList, "editor_secure_us_manager_unlock_by_photo", 26427);
    a(localArrayList, "editor_secure_us_manager_unlock_by_faceverify", 26428);
    a(localArrayList, "editor_secure_us_manager_use_photo_lock", 26429);
    a(localArrayList, "editor_secure_us_manager_open_password_protect", 26430);
    a(localArrayList, "editor_secure_us_manager_faceverify_failed", 26431);
    a(localArrayList, "editor_secure_us_manager_faceverify_success", 26432);
    a(localArrayList, "editor_secure_into_notification_movesoftware", 26433);
    a(localArrayList, "editor_secure_mainview_guide_user_intercept_prority_sure", 26434);
    a(localArrayList, "editor_secure_mainview_guide_user_intercept_prority_cancel", 26435);
    a(localArrayList, "editor_secure_intercept_guide_user_intercept_prority_sure", 26436);
    a(localArrayList, "editor_secure_intercept_guide_user_intercept_prority_cancel", 26437);
    a(localArrayList, "editor_secure_privatecontact_call", 26438);
    a(localArrayList, "editor_secure_privatecontact_send", 26439);
    a(localArrayList, "editor_secure_privatecontact_delete", 26440);
    a(localArrayList, "editor_secure_mobile_antithief_by_lost_phone_link", 26442);
    a(localArrayList, "editor_secure_one_key_optimize_not_optimize_infact", 26441);
    a(localArrayList, "editor_secure_mobile_antithief_click_have_no_qq", 26445);
    a(localArrayList, "editor_secure_into_deep_clean", 26449);
    a(localArrayList, "editor_secure_deep_clean_into_system_rubbish", 26450);
    a(localArrayList, "editor_secure_deep_clean_remnants_onekey_all", 26451);
    a(localArrayList, "editor_secure_deep_clean_remnants_onekey_not_all", 26452);
    a(localArrayList, "editor_secure_deep_clean_system_rubbish_onekey_all", 26453);
    a(localArrayList, "editor_secure_deep_clean_system_rubbish_onekey_not_all", 26454);
    a(localArrayList, "editor_secure_mainview_click_menu_connect_computer", 26455);
    a(localArrayList, "editor_secure_into_connectassistant_downloadview", 26456);
    a(localArrayList, "editor_secure_connectassistant_downloadview_click_download", 26457);
    a(localArrayList, "editor_secure_network_manager_click_call_check_gprs", 26458);
    a(localArrayList, "editor_secure_network_manager_click_recomand", 26459);
    a(localArrayList, "editor_secure_network_manager_not_click_recomand", 26460);
    a(localArrayList, "editor_secure_benchmark_click_entrance", 26461);
    a(localArrayList, "editor_secure_benchmark_click_download", 26462);
    a(localArrayList, "editor_secure_intercept_receive_mark_unfamily_remind", 26467);
    a(localArrayList, "editor_secure_intercept_click_notification_mark_unfamily", 26468);
    a(localArrayList, "editor_secure_intercept_notification_mark_unfamily_mark", 26469);
    return localArrayList;
  }

  public final void b(int paramInt1, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
    case 26301:
    case 26302:
    case 26420:
    case 26464:
    case 26465:
    }
    while (true)
    {
      return;
      c("EMID_Secure_Before_OneKeyAnaly_UseMemory_Percent", paramInt2);
      continue;
      c("EMID_Secure_After_OneKeyAnaly_UseMemory_Percent", paramInt2);
      continue;
      c("EMID_Secure_Ram_Used_Revert_percent_After_Clean", paramInt2);
      continue;
      c("EMID_Secure_Root_Status", paramInt2);
      continue;
      c("EMID_Secure_Installed_digit", paramInt2);
    }
  }

  public final void c()
  {
    this.b.clear().commit();
  }

  public final void d()
  {
    this.d.clear().commit();
  }

  public final ArrayList<SUI> e()
  {
    ArrayList localArrayList = new ArrayList();
    SUI localSUI1 = b(26301);
    if (localSUI1 != null)
      localArrayList.add(localSUI1);
    SUI localSUI2 = b(26302);
    if (localSUI2 != null)
      localArrayList.add(localSUI2);
    SUI localSUI3 = b(26420);
    if (localSUI3 != null)
      localArrayList.add(localSUI3);
    SUI localSUI4 = b(26464);
    if (localSUI4 != null)
      localArrayList.add(localSUI4);
    SUI localSUI5 = b(26465);
    if (localSUI5 != null)
      localArrayList.add(localSUI5);
    return localArrayList;
  }

  public final void f()
  {
    new Thread(new ne(this)).start();
  }

  public final void g()
  {
    new Thread(new nf(this)).start();
  }

  public final void h()
  {
    new Thread(new ng(this)).start();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     nd
 * JD-Core Version:    0.6.2
 */