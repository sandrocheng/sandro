.class public abstract Lcom/avast/android/generic/ae;
.super Ljava/lang/Object;
.source "SettingsApi.java"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:Ljava/lang/String;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/content/SharedPreferences;

.field private e:Landroid/content/SharedPreferences;

.field private f:Landroid/content/SharedPreferences$Editor;

.field private g:Ljava/lang/Object;

.field private h:Ljava/util/HashMap;

.field private i:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/avast/android/generic/ae;->a:Ljava/lang/Object;

    .line 322
    const-string v0, "0000"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/ae;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/ae;->b([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avast/android/generic/ae;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    sget-object v0, Lcom/avast/android/generic/af;->a:Lcom/avast/android/generic/af;

    invoke-direct {p0, p1, v0}, Lcom/avast/android/generic/ae;-><init>(Landroid/content/Context;Lcom/avast/android/generic/af;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/avast/android/generic/af;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v2, p0, Lcom/avast/android/generic/ae;->f:Landroid/content/SharedPreferences$Editor;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/ae;->g:Ljava/lang/Object;

    .line 55
    iput-object v2, p0, Lcom/avast/android/generic/ae;->h:Ljava/util/HashMap;

    .line 56
    iput-object v2, p0, Lcom/avast/android/generic/ae;->i:Ljava/util/Set;

    .line 63
    iput-object p1, p0, Lcom/avast/android/generic/ae;->c:Landroid/content/Context;

    .line 65
    sget-object v0, Lcom/avast/android/generic/af;->a:Lcom/avast/android/generic/af;

    if-ne p2, v0, :cond_0

    .line 66
    const-string v0, "prefs"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ae;->d:Landroid/content/SharedPreferences;

    .line 68
    const-string v0, "prefs_sync"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ae;->e:Landroid/content/SharedPreferences;

    .line 77
    :goto_0
    return-void

    .line 72
    :cond_0
    const-string v0, "temporary"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ae;->d:Landroid/content/SharedPreferences;

    .line 74
    const-string v0, "temporary_sync"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ae;->e:Landroid/content/SharedPreferences;

    goto :goto_0
.end method

.method private S()V
    .locals 2

    .prologue
    .line 89
    iget-object v1, p0, Lcom/avast/android/generic/ae;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/ae;->f:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/avast/android/generic/ae;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ae;->f:Landroid/content/SharedPreferences$Editor;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/ae;->h:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/ae;->i:Ljava/util/Set;

    .line 95
    :cond_0
    monitor-exit v1

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private T()Ljava/lang/String;
    .locals 2

    .prologue
    .line 609
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 612
    const-string v1, "guid"

    invoke-virtual {p0, v1, v0}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v1, "guid"

    invoke-direct {p0, v1, v0}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 614
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->b()Z

    .line 615
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    .line 1065
    const/4 v2, 0x0

    .line 1067
    const-class v0, Lcom/avast/android/generic/ah;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 1068
    const-class v1, Lcom/avast/android/generic/ag;

    invoke-static {p0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ae;

    .line 1070
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1071
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1072
    sget-object v4, Lcom/avast/android/generic/af;->b:Lcom/avast/android/generic/af;

    invoke-virtual {v0, v1, v0, v3, v4}, Lcom/avast/android/generic/ae;->a(Lcom/avast/android/generic/ae;Lcom/avast/android/generic/ae;Ljava/util/HashMap;Lcom/avast/android/generic/af;)V

    .line 1074
    sget-object v4, Lcom/avast/android/generic/af;->a:Lcom/avast/android/generic/af;

    invoke-virtual {v1, v1, v0, v3, v4}, Lcom/avast/android/generic/ae;->a(Lcom/avast/android/generic/ae;Lcom/avast/android/generic/ae;Ljava/util/HashMap;Lcom/avast/android/generic/af;)V

    .line 1077
    const-string v4, "c2dmowner"

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->G()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    const-string v4, "c2dmri"

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    const-string v0, "restorechecked"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    const-string v0, "encaccesscode"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    const-string v0, "paswordProtection"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->o()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    const-string v0, "guid"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    const-string v0, "language"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    const-string v0, "splitcdma"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->L()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    const-string v0, "accountEmail"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    const-string v0, "auid"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    const-string v0, "accountEncKey"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->y()[B

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    const-string v0, "accountCommPassword"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    const-string v0, "accountReport"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->A()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    const-string v0, "accountReportFrequency"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->B()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    const-string v0, "accountLuid"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->H()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    const-string v0, "accountSmsGateway"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->I()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    const-string v0, "accountSmsSending"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->C()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    :cond_0
    invoke-static {p0, v3, v2}, Lcom/avast/android/generic/ae;->a(Landroid/content/Context;Ljava/util/HashMap;Z)V

    .line 1130
    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/HashMap;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseValueOf"
        }
    .end annotation

    .prologue
    .line 1294
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1334
    :cond_0
    :goto_0
    return-void

    .line 1297
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1298
    const-string v0, "com.avast.android.generic.action.PROPERTY_CHANGED"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1300
    const-string v0, "ALL"

    const-string v1, "KEY CHANGE START"

    invoke-static {p0, v0, v1}, Lcom/avast/android/generic/util/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1303
    invoke-static {v0}, Lcom/avast/android/generic/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1304
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1306
    const-string v4, "ALL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/avast/android/generic/util/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    if-eqz v1, :cond_7

    .line 1309
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1310
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1311
    :cond_3
    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_4

    .line 1312
    new-instance v4, Ljava/lang/Boolean;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v4, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1

    .line 1313
    :cond_4
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_5

    .line 1314
    new-instance v4, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1

    .line 1315
    :cond_5
    instance-of v4, v1, Ljava/lang/Long;

    if-eqz v4, :cond_6

    .line 1316
    new-instance v4, Ljava/lang/Long;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1

    .line 1317
    :cond_6
    instance-of v4, v1, [B

    if-eqz v4, :cond_2

    .line 1318
    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1322
    :cond_7
    const-string v1, "-NULL-"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1327
    :cond_8
    const-string v0, "ALL"

    const-string v1, "KEY CHANGE END"

    invoke-static {p0, v0, v1}, Lcom/avast/android/generic/util/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    const-string v0, "sourcePackage"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1331
    const-string v0, "com.avast.android.generic.action.SHARE_SETTINGS"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1332
    invoke-static {v2}, Lcom/avast/android/generic/util/ae;->a(Landroid/content/Intent;)V

    .line 1333
    const-string v0, "com.avast.android.generic.COMM_PERMISSION"

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 976
    const-class v0, Lcom/avast/android/generic/ah;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 977
    const-class v1, Lcom/avast/android/generic/ag;

    invoke-static {p0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ae;

    .line 979
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 980
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 981
    sget-object v3, Lcom/avast/android/generic/af;->b:Lcom/avast/android/generic/af;

    invoke-virtual {v0, v1, v0, v2, v3}, Lcom/avast/android/generic/ae;->a(Lcom/avast/android/generic/ae;Lcom/avast/android/generic/ae;Ljava/util/HashMap;Lcom/avast/android/generic/af;)V

    .line 983
    sget-object v3, Lcom/avast/android/generic/af;->a:Lcom/avast/android/generic/af;

    invoke-virtual {v1, v1, v0, v2, v3}, Lcom/avast/android/generic/ae;->a(Lcom/avast/android/generic/ae;Lcom/avast/android/generic/ae;Ljava/util/HashMap;Lcom/avast/android/generic/af;)V

    .line 986
    const-string v3, "c2dmowner"

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->G()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    const-string v3, "c2dmri"

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    const-string v0, "id"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->K()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    const-string v0, "restorechecked"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    const-string v0, "encaccesscode"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    const-string v0, "enctempaccesscode"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    const-string v0, "tempaccesscodeissuetime"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->h()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    const-string v0, "tempaccesscodelastknowntime"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->j()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    const-string v0, "tempaccesscodetimeouttime"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->i()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    const-string v0, "tempaccesscoderecoverynumber"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    const-string v0, "tempaccesscodereceivertickauthtoken"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    const-string v0, "tempaccesscodereceiversmsauthtoken"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    const-string v0, "paswordProtection"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->o()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    const-string v0, "communityIQEnabled"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->p()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    const-string v0, "guid"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    const-string v0, "language"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    const-string v0, "splitcdma"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->L()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    const-string v0, "accountEmail"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    const-string v0, "auid"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    const-string v0, "accountEncKey"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->y()[B

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    const-string v0, "accountCommPassword"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    const-string v0, "accountReport"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->A()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    const-string v0, "accountReportFrequency"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->B()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    const-string v0, "accountLuid"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->H()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    const-string v0, "accountSmsGateway"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->I()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    const-string v0, "not1"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->M()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    const-string v0, "not2"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->N()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    const-string v0, "accountSmsSending"

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->C()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    :cond_0
    invoke-static {p0, v2, p1}, Lcom/avast/android/generic/ae;->a(Landroid/content/Context;Ljava/util/HashMap;Z)V

    .line 1053
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/avast/android/generic/ae;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/avast/android/generic/ae;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    :cond_0
    return-void
.end method

.method private a(Ljava/util/Set;)V
    .locals 9
    .parameter

    .prologue
    .line 1147
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1169
    :cond_0
    :goto_0
    return-void

    .line 1150
    :cond_1
    iget-object v1, p0, Lcom/avast/android/generic/ae;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 1152
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 1154
    iget-object v0, p0, Lcom/avast/android/generic/ae;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1156
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1157
    const-string v6, "AvastGenericSync"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Storing change time for key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    invoke-interface {v4, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1164
    :catch_0
    move-exception v0

    .line 1165
    :try_start_1
    const-string v2, "AvastGenericSync"

    const-string v3, "Can not store change times"

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1168
    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1163
    :cond_2
    :try_start_2
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private a(Ljava/util/Set;J)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 1172
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1175
    :cond_1
    iget-object v1, p0, Lcom/avast/android/generic/ae;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 1177
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/ae;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1179
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1180
    const-string v4, "AvastGenericSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Storing change time for key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    invoke-interface {v2, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1187
    :catch_0
    move-exception v0

    .line 1188
    :try_start_1
    const-string v2, "AvastGenericSync"

    const-string v3, "Can not store change times"

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1191
    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1186
    :cond_2
    :try_start_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public static a([B)[B
    .locals 3
    .parameter

    .prologue
    .line 933
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 934
    const/16 v1, 0x28

    new-array v1, v1, [B

    .line 935
    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 936
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 940
    :goto_0
    return-object p0

    .line 938
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 947
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 948
    array-length v3, p0

    .line 949
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 950
    aget-byte v0, p0, v1

    ushr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    .line 953
    if-ltz v0, :cond_0

    const/16 v4, 0x9

    if-gt v0, v4, :cond_0

    .line 954
    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 957
    :goto_1
    aget-byte v0, p0, v1

    and-int/lit8 v0, v0, 0xf

    .line 949
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 956
    :cond_0
    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 960
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private l(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1139
    iget-object v1, p0, Lcom/avast/android/generic/ae;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 1140
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/ae;->i:Ljava/util/Set;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/avast/android/generic/ae;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1143
    :cond_0
    monitor-exit v1

    .line 1144
    return-void

    .line 1143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized A()Z
    .locals 2

    .prologue
    .line 760
    monitor-enter p0

    :try_start_0
    const-string v0, "accountReport"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized B()I
    .locals 2

    .prologue
    .line 771
    monitor-enter p0

    :try_start_0
    const-string v0, "accountReportFrequency"

    const/16 v1, 0x3c

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized C()Z
    .locals 2

    .prologue
    .line 783
    monitor-enter p0

    :try_start_0
    const-string v0, "accountSmsSending"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized D()Z
    .locals 2

    .prologue
    .line 788
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->d()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->d()Ljava/util/Map;

    move-result-object v0

    const-string v1, "accountSmsSending"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public E()V
    .locals 2

    .prologue
    .line 808
    const-string v0, "c2dmri"

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;)V

    .line 809
    const-string v0, "c2dmowner"

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;)V

    .line 810
    const-string v0, "c2dmri"

    const-string v1, "-DEL-"

    invoke-direct {p0, v0, v1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 812
    const-string v0, "c2dmowner"

    const-string v1, "-DEL-"

    invoke-direct {p0, v0, v1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 814
    return-void
.end method

.method public F()Ljava/lang/String;
    .locals 2

    .prologue
    .line 817
    const-string v0, "c2dmri"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 2

    .prologue
    .line 821
    const-string v0, "c2dmowner"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 2

    .prologue
    .line 834
    const-string v0, "accountLuid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .locals 2

    .prologue
    .line 849
    const-string v0, "accountSmsGateway"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J()V
    .locals 2

    .prologue
    .line 858
    const-string v0, "accountSmsGateway"

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;)V

    .line 859
    const-string v0, "accountSmsGateway"

    const-string v1, "-DEL-"

    invoke-direct {p0, v0, v1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 861
    return-void
.end method

.method public K()J
    .locals 3

    .prologue
    .line 870
    const-string v0, "id"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public L()Z
    .locals 2

    .prologue
    .line 879
    const-string v0, "splitcdma"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public M()Ljava/lang/String;
    .locals 2

    .prologue
    .line 902
    const-string v0, "not1"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public N()Ljava/lang/String;
    .locals 2

    .prologue
    .line 920
    const-string v0, "not2"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public O()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/avast/android/generic/ae;->c:Landroid/content/Context;

    return-object v0
.end method

.method public P()V
    .locals 4

    .prologue
    .line 1347
    iget-object v1, p0, Lcom/avast/android/generic/ae;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 1349
    :try_start_0
    const-string v0, "AvastGenericSync"

    const-string v2, "Removing sync data"

    invoke-static {v0, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    iget-object v0, p0, Lcom/avast/android/generic/ae;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1352
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1353
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1358
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 1359
    return-void

    .line 1354
    :catch_0
    move-exception v0

    .line 1355
    const-string v2, "AvastGenericSync"

    const-string v3, "Can not remove sync data"

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1358
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public Q()Z
    .locals 2

    .prologue
    .line 1362
    const-string v0, "gSettingsNotificationAlwaysOn"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public R()I
    .locals 2

    .prologue
    .line 1377
    const-string v0, "gSettingsNotificationType"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/avast/android/generic/ae;->S()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 2
    .parameter

    .prologue
    .line 776
    monitor-enter p0

    :try_start_0
    const-string v0, "accountReportFrequency"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;I)V

    .line 777
    const-string v0, "accountReportFrequency"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 779
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    monitor-exit p0

    return-void

    .line 776
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 825
    const-string v0, "c2dmowner"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const-string v0, "c2dmri"

    invoke-virtual {p0, v0, p2}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const-string v0, "c2dmri"

    invoke-direct {p0, v0, p2}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 829
    const-string v0, "c2dmowner"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 831
    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 653
    monitor-enter p0

    :try_start_0
    const-string v0, "accountEmail"

    invoke-virtual {p0, v0, p2}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v0, "accountEmail"

    invoke-direct {p0, v0, p2}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 656
    const-string v0, "auid"

    invoke-virtual {p0, v0, p3}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v0, "auid"

    invoke-direct {p0, v0, p3}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 659
    const-string v0, "accountEncKey"

    invoke-virtual {p0, v0, p4}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v0, "accountEncKey"

    invoke-direct {p0, v0, p4}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 663
    const-string v0, "accountCommPassword"

    invoke-virtual {p0, v0, p5}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v0, "accountCommPassword"

    invoke-direct {p0, v0, p5}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 667
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    const-string v0, "accountSmsGateway"

    invoke-virtual {p0, v0, p6}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v0, "accountSmsGateway"

    invoke-direct {p0, v0, p6}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 678
    :goto_0
    const-class v0, Lcom/avast/android/generic/ah;

    invoke-static {p1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 679
    invoke-virtual {v0, p1, p7}, Lcom/avast/android/generic/ae;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 681
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->b()Z

    .line 682
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    monitor-exit p0

    return-void

    .line 673
    :cond_0
    :try_start_1
    const-string v0, "accountSmsGateway"

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;)V

    .line 674
    const-string v0, "accountSmsGateway"

    const-string v1, "-DEL-"

    invoke-direct {p0, v0, v1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 653
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/avast/android/generic/ae;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 82
    return-void
.end method

.method public abstract a(Lcom/avast/android/generic/ae;Lcom/avast/android/generic/ae;Ljava/util/HashMap;Lcom/avast/android/generic/af;)V
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/avast/android/generic/ae;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 225
    :try_start_1
    invoke-direct {p0}, Lcom/avast/android/generic/ae;->S()V

    .line 226
    iget-object v0, p0, Lcom/avast/android/generic/ae;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 227
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ae;->l(Ljava/lang/String;)V

    .line 228
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    .line 228
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 224
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 198
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key must be not null and non empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 203
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/avast/android/generic/ae;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :try_start_2
    invoke-direct {p0}, Lcom/avast/android/generic/ae;->S()V

    .line 205
    iget-object v0, p0, Lcom/avast/android/generic/ae;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 206
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ae;->l(Ljava/lang/String;)V

    .line 207
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 208
    monitor-exit p0

    return-void

    .line 207
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized a(Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 211
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key must be not null and non empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 216
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/avast/android/generic/ae;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :try_start_2
    invoke-direct {p0}, Lcom/avast/android/generic/ae;->S()V

    .line 218
    iget-object v0, p0, Lcom/avast/android/generic/ae;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 219
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ae;->l(Ljava/lang/String;)V

    .line 220
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 221
    monitor-exit p0

    return-void

    .line 220
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 185
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key must be not null and non empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 190
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/avast/android/generic/ae;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :try_start_2
    invoke-direct {p0}, Lcom/avast/android/generic/ae;->S()V

    .line 192
    iget-object v0, p0, Lcom/avast/android/generic/ae;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 193
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ae;->l(Ljava/lang/String;)V

    .line 194
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 195
    monitor-exit p0

    return-void

    .line 194
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized a(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 159
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key must be not null and non empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 164
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/avast/android/generic/ae;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :try_start_2
    invoke-direct {p0}, Lcom/avast/android/generic/ae;->S()V

    .line 166
    iget-object v0, p0, Lcom/avast/android/generic/ae;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 167
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ae;->l(Ljava/lang/String;)V

    .line 168
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 169
    monitor-exit p0

    return-void

    .line 168
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized a(Ljava/lang/String;[B)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 172
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key must be not null and non empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 177
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/avast/android/generic/ae;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :try_start_2
    invoke-direct {p0}, Lcom/avast/android/generic/ae;->S()V

    .line 179
    iget-object v0, p0, Lcom/avast/android/generic/ae;->f:Landroid/content/SharedPreferences$Editor;

    invoke-static {p2}, Lcom/avast/android/generic/util/e;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ae;->l(Ljava/lang/String;)V

    .line 181
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 182
    monitor-exit p0

    return-void

    .line 181
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 532
    monitor-enter p0

    :try_start_0
    const-string v0, "logcatavailable"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Z)V

    .line 534
    const-string v0, "logcatavailable"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 536
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    monitor-exit p0

    return-void

    .line 532
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(J)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 125
    monitor-enter p0

    const/4 v0, 0x1

    .line 127
    :try_start_0
    iget-object v2, p0, Lcom/avast/android/generic/ae;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 130
    :try_start_1
    iget-object v3, p0, Lcom/avast/android/generic/ae;->f:Landroid/content/SharedPreferences$Editor;

    if-eqz v3, :cond_0

    .line 131
    iget-object v0, p0, Lcom/avast/android/generic/ae;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 133
    iget-object v3, p0, Lcom/avast/android/generic/ae;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/avast/android/generic/ae;->h:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/avast/android/generic/ae;->a(Landroid/content/Context;Ljava/util/HashMap;Z)V

    .line 134
    iget-object v3, p0, Lcom/avast/android/generic/ae;->i:Ljava/util/Set;

    invoke-direct {p0, v3, p1, p2}, Lcom/avast/android/generic/ae;->a(Ljava/util/Set;J)V

    .line 136
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/avast/android/generic/ae;->f:Landroid/content/SharedPreferences$Editor;

    .line 137
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/avast/android/generic/ae;->h:Ljava/util/HashMap;

    .line 138
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/avast/android/generic/ae;->i:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    :try_start_3
    const-string v3, "AvastGeneric"

    const-string v4, "Error in committing preference store"

    invoke-static {v3, v4, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 143
    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 125
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/ae;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 271
    :goto_0
    monitor-exit p0

    return p2

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 270
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized b(Ljava/lang/String;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/ae;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 279
    :goto_0
    monitor-exit p0

    return-wide p2

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 278
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/ae;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 262
    :goto_0
    monitor-exit p0

    return-object p2

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 261
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized b(J)V
    .locals 2
    .parameter

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    const-string v0, "tempaccesscodeissuetime"

    invoke-virtual {p0, v0, p1, p2}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;J)V

    .line 372
    const-string v0, "tempaccesscodeissuetime"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 374
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    monitor-exit p0

    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/avast/android/generic/ae;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 152
    return-void
.end method

.method public declared-synchronized b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 554
    monitor-enter p0

    :try_start_0
    const-string v0, "paswordProtection"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Z)V

    .line 555
    const-string v0, "paswordProtection"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 556
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    monitor-exit p0

    return-void

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 99
    monitor-enter p0

    const/4 v0, 0x1

    .line 101
    :try_start_0
    iget-object v2, p0, Lcom/avast/android/generic/ae;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    :try_start_1
    iget-object v3, p0, Lcom/avast/android/generic/ae;->f:Landroid/content/SharedPreferences$Editor;

    if-eqz v3, :cond_0

    .line 105
    iget-object v0, p0, Lcom/avast/android/generic/ae;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 107
    iget-object v3, p0, Lcom/avast/android/generic/ae;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/avast/android/generic/ae;->h:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/avast/android/generic/ae;->a(Landroid/content/Context;Ljava/util/HashMap;Z)V

    .line 108
    iget-object v3, p0, Lcom/avast/android/generic/ae;->i:Ljava/util/Set;

    invoke-direct {p0, v3}, Lcom/avast/android/generic/ae;->a(Ljava/util/Set;)V

    .line 110
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/avast/android/generic/ae;->f:Landroid/content/SharedPreferences$Editor;

    .line 111
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/avast/android/generic/ae;->h:Ljava/util/HashMap;

    .line 112
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/avast/android/generic/ae;->i:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    :try_start_3
    const-string v3, "AvastGeneric"

    const-string v4, "Error in committing preference store"

    invoke-static {v3, v4, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 117
    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 99
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 290
    if-nez p1, :cond_0

    .line 291
    const-string p1, ""

    .line 293
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/ae;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/ae;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized b(Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/ae;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 235
    :goto_0
    monitor-exit p0

    return p2

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 234
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/avast/android/generic/ae;->d:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public declared-synchronized c(J)V
    .locals 2
    .parameter

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    const-string v0, "tempaccesscodetimeouttime"

    invoke-virtual {p0, v0, p1, p2}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;J)V

    .line 396
    const-string v0, "tempaccesscodetimeouttime"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 398
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    monitor-exit p0

    return-void

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 567
    const-string v0, "communityIQEnabled"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Z)V

    .line 568
    const-string v0, "communityIQEnabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 569
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->b()Z

    .line 570
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 298
    if-nez p1, :cond_0

    .line 299
    const-string p1, ""

    .line 301
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/ae;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/ae;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;J)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const-wide/16 v8, -0x1

    const/4 v0, 0x0

    .line 1220
    iget-object v2, p0, Lcom/avast/android/generic/ae;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 1221
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1222
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1276
    :goto_0
    return v0

    .line 1226
    :cond_0
    :try_start_1
    const-string v3, "AvastGenericSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking for sync for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    iget-object v3, p0, Lcom/avast/android/generic/ae;->e:Landroid/content/SharedPreferences;

    const-string v4, "lastSync"

    const-wide/16 v5, -0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1230
    cmp-long v5, v3, v8

    if-nez v5, :cond_1

    .line 1231
    const-string v3, "AvastGenericSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sync necessary for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (no sync done yet)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1233
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_0

    .line 1236
    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/avast/android/generic/ae;->e:Landroid/content/SharedPreferences;

    const-wide/16 v6, -0x1

    invoke-interface {v5, p1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 1237
    cmp-long v7, v5, v8

    if-nez v7, :cond_2

    .line 1238
    const-string v1, "AvastGenericSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No sync necessary for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (no change done yet)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1241
    :try_start_4
    monitor-exit v2

    goto :goto_0

    .line 1277
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 1244
    :cond_2
    cmp-long v7, v3, p2

    if-gtz v7, :cond_3

    cmp-long v7, v5, p2

    if-lez v7, :cond_4

    .line 1246
    :cond_3
    :try_start_5
    iget-object v3, p0, Lcom/avast/android/generic/ae;->e:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1249
    invoke-interface {v3, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1250
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1252
    const-string v3, "AvastGenericSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sync necessary for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (time has been changed to the past)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1254
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v0, v1

    goto/16 :goto_0

    .line 1258
    :cond_4
    cmp-long v7, v3, v5

    if-gez v7, :cond_5

    .line 1260
    :goto_1
    if-eqz v1, :cond_6

    .line 1261
    :try_start_7
    const-string v7, "AvastGenericSync"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sync necessary for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1270
    :goto_2
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move v0, v1

    goto/16 :goto_0

    :cond_5
    move v1, v0

    .line 1258
    goto :goto_1

    .line 1265
    :cond_6
    :try_start_9
    const-string v7, "AvastGenericSync"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No sync necessary for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_2

    .line 1271
    :catch_0
    move-exception v1

    .line 1272
    :try_start_a
    const-string v3, "AvastGenericSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not store change time for key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1276
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized d()Ljava/util/Map;
    .locals 1

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/ae;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(J)V
    .locals 2
    .parameter

    .prologue
    .line 421
    monitor-enter p0

    :try_start_0
    const-string v0, "tempaccesscodelastknowntime"

    invoke-virtual {p0, v0, p1, p2}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;J)V

    .line 422
    const-string v0, "tempaccesscodelastknowntime"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 424
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    monitor-exit p0

    return-void

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/ae;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/ae;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 316
    const-string v1, "encaccesscode"

    invoke-virtual {p0, v1, v0}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v1, "encaccesscode"

    invoke-direct {p0, v1, v0}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 319
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    monitor-exit p0

    return-void

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Z)V
    .locals 2
    .parameter

    .prologue
    .line 765
    monitor-enter p0

    :try_start_0
    const-string v0, "accountReport"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Z)V

    .line 766
    const-string v0, "accountReport"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 767
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    monitor-exit p0

    return-void

    .line 765
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(J)V
    .locals 1
    .parameter

    .prologue
    .line 625
    const-string v0, "amsLastUpdateTime"

    invoke-virtual {p0, v0, p1, p2}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;J)V

    .line 626
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->b()Z

    .line 627
    return-void
.end method

.method public declared-synchronized e(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 341
    monitor-enter p0

    if-nez p1, :cond_0

    .line 352
    :goto_0
    monitor-exit p0

    return-void

    .line 344
    :cond_0
    :try_start_0
    const-string v0, ""

    .line 345
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 346
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/ae;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/ae;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 348
    :cond_1
    const-string v1, "enctempaccesscode"

    invoke-virtual {p0, v1, v0}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v1, "enctempaccesscode"

    invoke-direct {p0, v1, v0}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1366
    const-string v0, "gSettingsNotificationAlwaysOn"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Z)V

    .line 1367
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->b()Z

    .line 1368
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 311
    const-string v0, "0000"

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    const-string v0, "encaccesscode"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    :cond_0
    sget-object v0, Lcom/avast/android/generic/ae;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :cond_1
    monitor-exit p0

    return-object v0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f(J)V
    .locals 5
    .parameter

    .prologue
    .line 1197
    iget-object v1, p0, Lcom/avast/android/generic/ae;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 1199
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/ae;->e:Landroid/content/SharedPreferences;

    const-string v2, "lastSync"

    const-wide/16 v3, -0x1

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1203
    cmp-long v0, v2, p1

    if-gez v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/avast/android/generic/ae;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1206
    const-string v2, "AvastGenericSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying sync done at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    const-string v2, "lastSync"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1210
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 1217
    return-void

    .line 1212
    :catch_0
    move-exception v0

    .line 1213
    const-string v2, "AvastGenericSync"

    const-string v3, "Can not store sync time"

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1216
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized f(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 447
    monitor-enter p0

    :try_start_0
    const-string v0, "tempaccesscoderecoverynumber"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v0, "tempaccesscoderecoverynumber"

    invoke-direct {p0, v0, p1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 452
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    monitor-exit p0

    return-void

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    const-string v0, "enctempaccesscode"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 475
    monitor-enter p0

    :try_start_0
    const-string v0, "tempaccesscodereceivertickauthtoken"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v0, "tempaccesscodereceivertickauthtoken"

    invoke-direct {p0, v0, p1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 481
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    monitor-exit p0

    return-void

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()J
    .locals 3

    .prologue
    .line 384
    monitor-enter p0

    :try_start_0
    const-string v0, "tempaccesscodeissuetime"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 504
    monitor-enter p0

    :try_start_0
    const-string v0, "tempaccesscodereceiversmsauthtoken"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v0, "tempaccesscodereceiversmsauthtoken"

    invoke-direct {p0, v0, p1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 510
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    monitor-exit p0

    return-void

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()J
    .locals 3

    .prologue
    .line 408
    monitor-enter p0

    :try_start_0
    const-string v0, "tempaccesscodetimeouttime"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 587
    const-string v0, "language"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v0, "language"

    invoke-direct {p0, v0, p1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 589
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->b()Z

    .line 590
    return-void
.end method

.method public declared-synchronized j()J
    .locals 3

    .prologue
    .line 435
    monitor-enter p0

    :try_start_0
    const-string v0, "tempaccesscodelastknowntime"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 838
    const-string v0, "accountLuid"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string v0, "accountLuid"

    invoke-direct {p0, v0, p1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 840
    return-void
.end method

.method public declared-synchronized k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 462
    monitor-enter p0

    :try_start_0
    const-string v0, "tempaccesscoderecoverynumber"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 853
    const-string v0, "accountSmsGateway"

    invoke-virtual {p0, v0, p1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const-string v0, "accountSmsGateway"

    invoke-direct {p0, v0, p1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 855
    return-void
.end method

.method public declared-synchronized l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 491
    monitor-enter p0

    :try_start_0
    const-string v0, "tempaccesscodereceivertickauthtoken"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 520
    monitor-enter p0

    :try_start_0
    const-string v0, "tempaccesscodereceiversmsauthtoken"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized n()Z
    .locals 2

    .prologue
    .line 545
    monitor-enter p0

    :try_start_0
    const-string v0, "logcatavailable"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 550
    const-string v0, "paswordProtection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 563
    const-string v0, "communityIQEnabled"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 577
    const-string v0, "language"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 593
    monitor-enter p0

    :try_start_0
    const-string v0, "guid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 594
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 595
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/generic/ae;->T()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 597
    :cond_1
    monitor-exit p0

    return-object v0

    .line 593
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized s()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 601
    monitor-enter p0

    :try_start_0
    const-string v0, "guid"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 602
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 605
    :cond_1
    monitor-exit p0

    return-object v0

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public t()J
    .locals 3

    .prologue
    .line 635
    const-string v0, "amsLastUpdateTime"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized u()Z
    .locals 1

    .prologue
    .line 686
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized v()V
    .locals 2

    .prologue
    .line 693
    monitor-enter p0

    :try_start_0
    const-string v0, "accountEmail"

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;)V

    .line 694
    const-string v0, "accountEmail"

    const-string v1, "-DEL-"

    invoke-direct {p0, v0, v1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 697
    const-string v0, "auid"

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;)V

    .line 698
    const-string v0, "auid"

    const-string v1, "-DEL-"

    invoke-direct {p0, v0, v1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 701
    const-string v0, "accountEncKey"

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;)V

    .line 702
    const-string v0, "accountEncKey"

    const-string v1, "-DEL-"

    invoke-direct {p0, v0, v1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 705
    const-string v0, "accountCommPassword"

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;)V

    .line 706
    const-string v0, "accountCommPassword"

    const-string v1, "-DEL-"

    invoke-direct {p0, v0, v1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 709
    const-string v0, "accountSmsGateway"

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;)V

    .line 710
    const-string v0, "accountSmsGateway"

    const-string v1, "-DEL-"

    invoke-direct {p0, v0, v1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 713
    invoke-virtual {p0}, Lcom/avast/android/generic/ae;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    monitor-exit p0

    return-void

    .line 693
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized w()Ljava/lang/String;
    .locals 2

    .prologue
    .line 722
    monitor-enter p0

    :try_start_0
    const-string v0, "accountEmail"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized x()Ljava/lang/String;
    .locals 2

    .prologue
    .line 731
    monitor-enter p0

    :try_start_0
    const-string v0, "auid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized y()[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 740
    monitor-enter p0

    :try_start_0
    const-string v1, "accountEncKey"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 743
    :try_start_1
    invoke-static {v1}, Lcom/avast/android/generic/util/e;->a(Ljava/lang/String;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 746
    :goto_0
    monitor-exit p0

    return-object v0

    .line 744
    :catch_0
    move-exception v1

    .line 745
    :try_start_2
    const-string v2, "SettingsApi"

    const-string v3, "Can\'t convert encryption key to byte array."

    invoke-static {v2, v3, v1}, Lcom/avast/android/generic/util/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 740
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized z()Ljava/lang/String;
    .locals 2

    .prologue
    .line 756
    monitor-enter p0

    :try_start_0
    const-string v0, "accountCommPassword"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
