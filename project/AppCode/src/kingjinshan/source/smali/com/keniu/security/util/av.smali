.class public final Lcom/keniu/security/util/av;
.super Ljava/lang/Object;
.source "PhoneIdx.java"


# static fields
.field public static final a:Ljava/lang/String; = "-1"

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/Boolean;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/keniu/security/util/av;->b:Ljava/lang/String;

    .line 18
    sput-object v0, Lcom/keniu/security/util/av;->c:Ljava/lang/Boolean;

    .line 19
    sput-object v0, Lcom/keniu/security/util/av;->d:Ljava/lang/String;

    .line 20
    sput-object v0, Lcom/keniu/security/util/av;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 23
    const-class v0, Lcom/keniu/security/util/av;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/keniu/security/util/av;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/keniu/security/util/av;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :goto_0
    monitor-exit v0

    return-object v1

    .line 24
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/keniu/security/util/av;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 25
    const-string v2, "-1"

    if-eq v1, v2, :cond_1

    .line 26
    sput-object v1, Lcom/keniu/security/util/av;->b:Ljava/lang/String;

    .line 29
    :cond_1
    sget-object v1, Lcom/keniu/security/util/av;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 49
    const-class v0, Lcom/keniu/security/util/av;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/keniu/security/util/av;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/keniu/security/util/av;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :goto_0
    monitor-exit v0

    return-object v1

    .line 50
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/keniu/security/util/av;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 51
    const-string v2, "-1"

    if-eq v1, v2, :cond_1

    .line 52
    sput-object v1, Lcom/keniu/security/util/av;->d:Ljava/lang/String;

    .line 55
    :cond_1
    sget-object v1, Lcom/keniu/security/util/av;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 66
    const-class v0, Lcom/keniu/security/util/av;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/keniu/security/util/av;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/keniu/security/util/av;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :goto_0
    monitor-exit v0

    return-object v1

    .line 67
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/keniu/security/util/av;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 69
    const-string v2, "-1"

    if-eq v1, v2, :cond_1

    .line 70
    sput-object v1, Lcom/keniu/security/util/av;->e:Ljava/lang/String;

    .line 72
    :cond_1
    sget-object v1, Lcom/keniu/security/util/av;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 32
    const-class v0, Lcom/keniu/security/util/av;

    monitor-enter v0

    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 33
    if-nez p0, :cond_1

    const-string v1, "-1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    .line 34
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 35
    if-nez v1, :cond_0

    const-string v1, "-1"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized e(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 40
    const-class v0, Lcom/keniu/security/util/av;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/keniu/security/util/av;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/keniu/security/util/av;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 42
    :goto_0
    monitor-exit v0

    return v1

    .line 41
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/keniu/security/util/av;->f(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 42
    sput-object v1, Lcom/keniu/security/util/av;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized f(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 45
    const-class v0, Lcom/keniu/security/util/av;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "354957033552863-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized g(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 58
    const-class v0, Lcom/keniu/security/util/av;

    monitor-enter v0

    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 59
    if-nez p0, :cond_0

    const-string v1, "-1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_0
    monitor-exit v0

    return-object v1

    .line 60
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 61
    if-nez v1, :cond_1

    const-string v1, "-1"

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 75
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 76
    if-nez p0, :cond_0

    const-string v0, "-1"

    .line 87
    :goto_0
    return-object v0

    .line 78
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :goto_1
    if-nez v0, :cond_1

    const-string v0, "-1"

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
