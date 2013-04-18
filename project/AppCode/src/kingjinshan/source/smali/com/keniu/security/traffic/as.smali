.class public final Lcom/keniu/security/traffic/as;
.super Ljava/lang/Object;
.source "TrafficFixSms.java"


# static fields
.field private static final a:Ljava/lang/String; = "10086"

.field private static final b:Ljava/lang/String; = "10010"

.field private static final c:Ljava/lang/String; = "10001"

.field private static final d:Ljava/lang/String; = "CXGLL"

.field private static final e:Ljava/lang/String; = "CXLL"

.field private static final f:Ljava/lang/String; = "108"

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-static {p0}, Lcom/keniu/security/traffic/as;->f(Landroid/content/Context;)V

    .line 19
    sget-object v0, Lcom/keniu/security/traffic/as;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static a()Z
    .locals 6

    .prologue
    .line 46
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 47
    sget-object v1, Lcom/keniu/security/traffic/as;->i:Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/keniu/security/traffic/as;->j:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 49
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    sput-object p1, Lcom/keniu/security/traffic/as;->i:Ljava/lang/String;

    .line 57
    sput-object p2, Lcom/keniu/security/traffic/as;->j:Ljava/lang/String;

    .line 59
    invoke-static {p0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    const v1, 0x7f0b03d1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    sget-object v2, Lcom/keniu/security/traffic/as;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    const v1, 0x7f0b03d2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    sget-object v2, Lcom/keniu/security/traffic/as;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-static {p0}, Lcom/keniu/security/traffic/as;->f(Landroid/content/Context;)V

    .line 30
    sget-object v0, Lcom/keniu/security/traffic/as;->j:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-static {p0}, Lcom/keniu/security/traffic/as;->f(Landroid/content/Context;)V

    .line 24
    sget-object v0, Lcom/keniu/security/traffic/as;->g:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-static {p0}, Lcom/keniu/security/traffic/as;->f(Landroid/content/Context;)V

    .line 35
    sget-object v0, Lcom/keniu/security/traffic/as;->h:Ljava/lang/String;

    return-object v0
.end method

.method private static e(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    invoke-static {p0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 82
    const v1, 0x7f0b03d1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    sput-object v1, Lcom/keniu/security/traffic/as;->i:Ljava/lang/String;

    .line 88
    :cond_0
    const v1, 0x7f0b03d2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_2

    move v1, v4

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    :goto_1
    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 91
    sput-object v0, Lcom/keniu/security/traffic/as;->j:Ljava/lang/String;

    .line 93
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 90
    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method private static declared-synchronized f(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 97
    const-class v0, Lcom/keniu/security/traffic/as;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/keniu/security/traffic/as;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 102
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f0b03d1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    sput-object v2, Lcom/keniu/security/traffic/as;->i:Ljava/lang/String;

    :cond_2
    const v2, 0x7f0b03d2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    move v2, v5

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v5

    :goto_2
    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    sput-object v1, Lcom/keniu/security/traffic/as;->j:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :cond_3
    :try_start_2
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 109
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_0

    .line 111
    const-string v2, "46000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "46002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 113
    :cond_4
    const-string v1, "10086"

    sput-object v1, Lcom/keniu/security/traffic/as;->g:Ljava/lang/String;

    .line 114
    const-string v1, "CXGLL"

    sput-object v1, Lcom/keniu/security/traffic/as;->h:Ljava/lang/String;

    .line 126
    :cond_5
    :goto_3
    sget-object v1, Lcom/keniu/security/traffic/as;->i:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 127
    sget-object v1, Lcom/keniu/security/traffic/as;->g:Ljava/lang/String;

    sput-object v1, Lcom/keniu/security/traffic/as;->i:Ljava/lang/String;

    .line 128
    sget-object v1, Lcom/keniu/security/traffic/as;->h:Ljava/lang/String;

    sput-object v1, Lcom/keniu/security/traffic/as;->j:Ljava/lang/String;

    goto :goto_0

    .line 133
    :catch_0
    move-exception v1

    goto :goto_0

    :cond_6
    move v2, v4

    .line 102
    goto :goto_1

    :cond_7
    move v3, v4

    goto :goto_2

    .line 115
    :cond_8
    const-string v2, "46001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "46006"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 117
    :cond_9
    const-string v1, "10010"

    sput-object v1, Lcom/keniu/security/traffic/as;->g:Ljava/lang/String;

    .line 118
    const-string v1, "CXLL"

    sput-object v1, Lcom/keniu/security/traffic/as;->h:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 97
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 119
    :cond_a
    :try_start_3
    const-string v2, "46003"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "46005"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 121
    :cond_b
    const-string v1, "10001"

    sput-object v1, Lcom/keniu/security/traffic/as;->g:Ljava/lang/String;

    .line 122
    const-string v1, "108"

    sput-object v1, Lcom/keniu/security/traffic/as;->h:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3
.end method
