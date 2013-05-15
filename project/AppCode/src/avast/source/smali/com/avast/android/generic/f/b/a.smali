.class public abstract Lcom/avast/android/generic/f/b/a;
.super Landroid/telephony/PhoneStateListener;
.source "StateProvider.java"


# static fields
.field private static f:Ljava/lang/String;

.field private static g:Z


# instance fields
.field private a:Landroid/telephony/TelephonyManager;

.field private b:Landroid/telephony/CellLocation;

.field private c:I

.field private d:Landroid/telephony/ServiceState;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/avast/android/generic/f/b/a;->f:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avast/android/generic/f/b/a;->g:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 59
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 62
    if-nez v0, :cond_1

    .line 63
    const-string v0, "AvastGeneric"

    const-string v1, "StateProvider: could not get telephony manager"

    invoke-static {v0, p0, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, v2

    .line 77
    :cond_0
    :goto_0
    return-object v0

    .line 68
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_2

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 72
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move-object v0, v2

    .line 74
    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private a()V
    .locals 6

    .prologue
    .line 458
    :try_start_0
    new-instance v0, Lcom/avast/android/generic/f/b/b;

    iget-object v1, p0, Lcom/avast/android/generic/f/b/a;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/avast/android/generic/f/b/a;->a:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/avast/android/generic/f/b/a;->b:Landroid/telephony/CellLocation;

    iget v4, p0, Lcom/avast/android/generic/f/b/a;->c:I

    iget-object v5, p0, Lcom/avast/android/generic/f/b/a;->d:Landroid/telephony/ServiceState;

    invoke-direct/range {v0 .. v5}, Lcom/avast/android/generic/f/b/b;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/telephony/CellLocation;ILandroid/telephony/ServiceState;)V

    .line 460
    invoke-virtual {v0}, Lcom/avast/android/generic/f/b/b;->a()I

    move-result v1

    if-nez v1, :cond_0

    .line 461
    invoke-virtual {p0, v0}, Lcom/avast/android/generic/f/b/a;->a(Lcom/avast/android/generic/f/b/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 463
    :catch_0
    move-exception v0

    .line 464
    const-string v1, "AvastGeneric"

    iget-object v2, p0, Lcom/avast/android/generic/f/b/a;->e:Landroid/content/Context;

    const-string v3, "RadioData could not be instantiated"

    invoke-static {v1, v2, v3, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/net/ConnectivityManager;Z)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 497
    if-nez p1, :cond_0

    .line 498
    sput-object v6, Lcom/avast/android/generic/f/b/a;->f:Ljava/lang/String;

    .line 501
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 502
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_2

    .line 504
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/avast/android/generic/f/b/a;->f:Ljava/lang/String;

    .line 505
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avast/android/generic/f/b/a;->g:Z

    .line 563
    :goto_0
    return-void

    .line 509
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 510
    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 513
    :cond_3
    const/4 v0, 0x0

    sput-object v0, Lcom/avast/android/generic/f/b/a;->f:Ljava/lang/String;

    .line 514
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avast/android/generic/f/b/a;->g:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    sput-object v6, Lcom/avast/android/generic/f/b/a;->f:Ljava/lang/String;

    goto :goto_0

    .line 524
    :cond_4
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 525
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v1, v6

    move-object v2, v6

    move v5, v4

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 527
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 528
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 530
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 532
    instance-of v9, v0, Ljava/net/Inet6Address;

    if-eqz v9, :cond_6

    .line 535
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    move v4, v5

    move v2, v3

    :goto_2
    move v5, v4

    move v4, v2

    move-object v2, v1

    move-object v1, v0

    .line 539
    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    move v2, v4

    move v4, v3

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_2

    .line 545
    :cond_7
    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    .line 547
    sput-object v2, Lcom/avast/android/generic/f/b/a;->f:Ljava/lang/String;

    .line 559
    :goto_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avast/android/generic/f/b/a;->g:Z

    goto :goto_0

    .line 548
    :cond_8
    if-eqz v4, :cond_9

    .line 550
    sput-object v1, Lcom/avast/android/generic/f/b/a;->f:Ljava/lang/String;

    goto :goto_3

    .line 551
    :cond_9
    if-eqz v5, :cond_a

    .line 553
    sput-object v2, Lcom/avast/android/generic/f/b/a;->f:Ljava/lang/String;

    goto :goto_3

    .line 556
    :cond_a
    const/4 v0, 0x0

    sput-object v0, Lcom/avast/android/generic/f/b/a;->f:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_b
    move-object v0, v1

    move-object v1, v2

    move v2, v4

    move v4, v5

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 81
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 84
    if-nez v0, :cond_1

    .line 85
    const-string v0, "AvastGeneric"

    const-string v2, "StateProvider: could not get telephony manager"

    invoke-static {v0, p0, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    :cond_0
    :goto_0
    return-object v1

    .line 90
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 95
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v0, v1

    :cond_3
    move-object v1, v0

    .line 100
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 103
    const-string v2, "AvastGeneric"

    const-string v3, "Can not read IMSI"

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 110
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 113
    if-nez v0, :cond_0

    .line 114
    const-string v0, "AvastGeneric"

    const-string v1, "StateProvider: could not get telephony manager"

    invoke-static {v0, p0, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 136
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 139
    if-nez v0, :cond_1

    .line 140
    const-string v0, "AvastGeneric"

    const-string v2, "StateProvider: could not get telephony manager"

    invoke-static {v0, p0, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 146
    if-eqz v2, :cond_2

    .line 148
    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 150
    if-lez v2, :cond_2

    move v0, v2

    .line 151
    goto :goto_0

    .line 152
    :catch_0
    move-exception v2

    .line 156
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_3

    .line 159
    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_1
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 161
    if-gtz v0, :cond_0

    :cond_3
    :goto_1
    move v0, v1

    .line 167
    goto :goto_0

    .line 163
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static e(Landroid/content/Context;)I
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 171
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 174
    if-nez v0, :cond_1

    .line 175
    const-string v0, "AvastGeneric"

    const-string v2, "StateProvider: could not get telephony manager"

    invoke-static {v0, p0, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    .line 200
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 181
    if-eqz v2, :cond_2

    .line 183
    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 184
    if-lez v2, :cond_2

    move v0, v2

    .line 185
    goto :goto_0

    .line 186
    :catch_0
    move-exception v2

    .line 190
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_3

    .line 193
    const/4 v2, 0x3

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 194
    if-gtz v0, :cond_0

    :cond_3
    :goto_1
    move v0, v1

    .line 200
    goto :goto_0

    .line 196
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 204
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 207
    if-nez v0, :cond_1

    .line 208
    const-string v0, "AvastGeneric"

    const-string v2, "StateProvider: could not get telephony manager"

    invoke-static {v0, p0, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 256
    :cond_0
    :goto_0
    return-object v1

    .line 217
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 228
    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 229
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_5

    .line 231
    :try_start_1
    invoke-static {}, Lcom/avast/android/generic/e/a;->a()Lcom/avast/android/generic/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/android/generic/e/a;->b()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 235
    :goto_2
    if-eqz v0, :cond_3

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 238
    :cond_3
    if-nez v0, :cond_4

    .line 240
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 241
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->r()Ljava/lang/String;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_4

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move-object v1, v0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 223
    const-string v2, "AvastGeneric"

    const-string v3, "Can not read device ID"

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 225
    goto :goto_1

    .line 248
    :cond_5
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 249
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->r()Ljava/lang/String;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_4

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 232
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 4
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 472
    if-nez p0, :cond_0

    .line 480
    :goto_0
    return v0

    .line 475
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.telephony"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 477
    :catch_0
    move-exception v1

    .line 478
    const-string v2, "AvastGeneric"

    const-string v3, "Error while checking for call feature"

    invoke-static {v2, v3, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 485
    invoke-static {p0}, Lcom/avast/android/generic/f/b/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 486
    if-nez v0, :cond_0

    .line 487
    const/4 v0, 0x0

    .line 489
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 566
    sget-boolean v0, Lcom/avast/android/generic/f/b/a;->g:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 567
    :cond_0
    sget-object v0, Lcom/avast/android/generic/f/b/a;->f:Ljava/lang/String;

    .line 572
    :goto_0
    return-object v0

    .line 569
    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 570
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/avast/android/generic/f/b/a;->a(Landroid/net/ConnectivityManager;Z)V

    .line 572
    sget-object v0, Lcom/avast/android/generic/f/b/a;->f:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public abstract a(ILjava/lang/String;)V
.end method

.method public abstract a(Lcom/avast/android/generic/f/b/b;)V
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 435
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/f/b/a;->a(ILjava/lang/String;)V

    .line 436
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/avast/android/generic/f/b/a;->b:Landroid/telephony/CellLocation;

    .line 453
    invoke-direct {p0}, Lcom/avast/android/generic/f/b/a;->a()V

    .line 454
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/avast/android/generic/f/b/a;->d:Landroid/telephony/ServiceState;

    .line 441
    invoke-direct {p0}, Lcom/avast/android/generic/f/b/a;->a()V

    .line 442
    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .locals 0
    .parameter

    .prologue
    .line 446
    iput p1, p0, Lcom/avast/android/generic/f/b/a;->c:I

    .line 447
    invoke-direct {p0}, Lcom/avast/android/generic/f/b/a;->a()V

    .line 448
    return-void
.end method
