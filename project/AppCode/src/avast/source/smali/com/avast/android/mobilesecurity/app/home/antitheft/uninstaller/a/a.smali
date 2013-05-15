.class public Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/a/a;
.super Lcom/avast/android/generic/ui/b/d;
.source "DeviceAdminEnabledProblem.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    const v0, 0x7f0c0102

    const v1, 0x7f0c03db

    invoke-direct {p0, v0, v1}, Lcom/avast/android/generic/ui/b/d;-><init>(II)V

    .line 21
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 57
    .line 59
    invoke-static {p0}, Lcom/avast/android/generic/util/z;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 61
    if-nez v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    invoke-static {}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/a/a;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v1}, Lcom/avast/android/mobilesecurity/app/home/antitheft/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static d()Z
    .locals 1

    .prologue
    .line 78
    :try_start_0
    invoke-static {}, Lcom/avast/android/mobilesecurity/app/home/antitheft/a/a;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "Device Admin is enabled"

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/support/v4/app/Fragment;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 25
    invoke-static {p1}, Lcom/avast/android/generic/util/z;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 28
    const/16 v2, 0xf64

    invoke-static {p1, v2}, Lcom/avast/android/generic/util/z;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 30
    if-eqz v2, :cond_1

    .line 32
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.avast.android.antitheft.action.DISABLE_DEVICE_ADMIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-static {p1, v1, v2}, Lcom/avast/android/generic/util/z;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 35
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    :try_start_0
    invoke-static {p2, v1}, Lcom/avast/android/generic/util/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    const v0, 0x7f0c03dd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avast/android/generic/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
