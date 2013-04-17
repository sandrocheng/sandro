.class public final Lcom/tencent/tmsecure/common/TMSApplication;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/content/Context;

.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/tencent/tmsecure/common/TMSService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    const-string v1, "virus_scan_libname"

    const-string v2, "ams-1.1.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    const-string v1, "cryptor_libname"

    const-string v2, "cryptor-1.0.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    const-string v1, "aresengine_libname"

    const-string v2, "smschecker-1.0.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    const-string v1, "location_libname"

    const-string v2, "location-1.0.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    const-string v1, "apollo_libname"

    const-string v2, "apollo-1.1.6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    const-string v1, "sms_parser_libname"

    const-string v2, "smsparser-1.0.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    const-string v1, "account_login_libname"

    const-string v2, "liblogin-1.0.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    const-string v1, "host_url"

    const-string v2, "http://pmir.3g.qq.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    const-string v1, "pre_lib_path"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    const-string v1, "login_host_url"

    const-string v2, "sync.3g.qq.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    const-string v1, "su_cmd"

    const-string v2, "su"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    const-string v1, "softversion"

    const-string v2, "1.1.3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    const-string v1, "build"

    const-string v2, "100"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    const-string v1, "lc"

    const-string v2, "CBF59E5CC1B83B40"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    const-string v1, "channel"

    const-string v2, "null"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    const-string v1, "platform"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    const-string v1, "pversion"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    const-string v1, "cversion"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    const-string v1, "hotfix"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    const-string v1, "auto_report"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    const-string v1, "plugin_dir"

    const-string v2, "/sdcard/qqpimsecure_plugins"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    const-string v1, "sub_platform"

    const-string v2, "201"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    const-string v1, "product"

    const-string v2, "13"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkLisence()Z
    .locals 1

    invoke-static {}, Lek;->a()Lek;

    move-result-object v0

    invoke-virtual {v0}, Lek;->e()Z

    move-result v0

    return v0
.end method

.method public static getApplicaionContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getIntFromEnvMap(Ljava/lang/String;)I
    .locals 3

    const-class v1, Lcom/tencent/tmsecure/common/TMSApplication;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-class v2, Lcom/tencent/tmsecure/common/TMSApplication;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "softversion"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const-string v1, "0.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v2

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/Class;Lcom/tencent/tmsecure/common/ITMSApplicaionConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tencent/tmsecure/common/TMSService;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/tencent/tmsecure/common/ITMSApplicaionConfig;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/tencent/tmsecure/common/TMSApplication;->init$4ae1371d(Landroid/content/Context;Ljava/lang/Class;Lcom/tencent/tmsecure/common/ITMSApplicaionConfig;Le$b;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static init$4ae1371d(Landroid/content/Context;Ljava/lang/Class;Lcom/tencent/tmsecure/common/ITMSApplicaionConfig;Le$b;Ljava/lang/Runnable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tencent/tmsecure/common/TMSService;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/tencent/tmsecure/common/ITMSApplicaionConfig;",
            "Le$b;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->b:Landroid/content/Context;

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_0
    const-class v1, Lcom/tencent/tmsecure/common/TMSApplication;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lek;->a()Lek;

    move-result-object v0

    invoke-virtual {v0}, Lek;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    const-string v3, "channel"

    if-nez v0, :cond_1

    const-string v0, "null"

    :cond_1
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lek;->a()Lek;

    move-result-object v0

    invoke-virtual {v0}, Lek;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LQQPIM/EProduct;->convert(Ljava/lang/String;)LQQPIM/EProduct;

    move-result-object v0

    invoke-virtual {v0}, LQQPIM/EProduct;->value()I

    move-result v0

    sget-object v2, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    const-string v3, "product"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    new-instance v0, Ljava/util/HashMap;

    sget-object v2, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p2, v0}, Lcom/tencent/tmsecure/common/ITMSApplicaionConfig;->config(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/common/TMSApplication;->a:Ljava/util/Map;

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    sput-object p1, Lcom/tencent/tmsecure/common/TMSApplication;->c:Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/tencent/tmsecure/common/TMSApplication;->b:Landroid/content/Context;

    sget-object v2, Lcom/tencent/tmsecure/common/TMSApplication;->c:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/tencent/tmsecure/common/TMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_3
    if-eqz p3, :cond_4

    invoke-static {}, Lgl;->c()V

    :cond_4
    const-string v0, "auto_report"

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->reportChannelInfo()V

    :cond_5
    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->saveFirstStartupTime()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static reportChannelInfo()V
    .locals 0

    invoke-static {}, Lem;->a()V

    return-void
.end method

.method private static saveFirstStartupTime()V
    .locals 7

    const-wide/16 v5, -0x1

    new-instance v0, Lex;

    const-string v1, "tms"

    invoke-direct {v0, v1}, Lex;-><init>(Ljava/lang/String;)V

    const-string v1, "first_startup_time"

    iget-object v2, v0, Lex;->c:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v0, Lex;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-nez v1, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const-string v2, "first_startup_time"

    new-instance v3, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iget-object v1, v0, Lex;->c:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v0, v0, Lex;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
