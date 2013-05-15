.class public Lcom/avast/android/mobilesecurity/app/advisor/AdvisorScanService;
.super Lcom/avast/android/mobilesecurity/scan/ScanService;
.source "AdvisorScanService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/scan/ScanService;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-static {}, Lcom/avast/android/mobilesecurity/e;->a()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "packageName = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lcom/avast/android/mobilesecurity/f;->a()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 94
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorScanService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    const-string v1, "packageInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 59
    const-string v1, "startNow"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 61
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorScanService;->a(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 79
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)Lcom/avast/android/mobilesecurity/scan/l;
    .locals 1
    .parameter

    .prologue
    .line 68
    new-instance v0, Lcom/avast/android/mobilesecurity/app/advisor/g;

    invoke-direct {v0, p0, p1}, Lcom/avast/android/mobilesecurity/app/advisor/g;-><init>(Lcom/avast/android/mobilesecurity/scan/ScanService;Landroid/os/Bundle;)V

    return-object v0
.end method
