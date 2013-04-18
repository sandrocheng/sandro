.class public final Lcom/keniu/security/util/f;
.super Ljava/lang/Object;
.source "AppUtil.java"


# static fields
.field private static final a:Ljava/lang/String; = "package"

.field private static final b:Ljava/lang/String; = "com.android.settings.ApplicationPkgName"

.field private static final c:Ljava/lang/String; = "pkg"

.field private static final d:Ljava/lang/String; = "android.settings.APPLICATION_DETAILS_SETTINGS"

.field private static final e:Ljava/lang/String; = "com.android.settings"

.field private static final f:Ljava/lang/String; = "com.android.settings.InstalledAppDetails"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 37
    const/4 v1, 0x0

    .line 39
    :try_start_0
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 42
    :goto_0
    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 43
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 53
    :goto_1
    return-object v0

    .line 48
    :cond_0
    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const-string v1, "pkg"

    .line 49
    :goto_2
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 48
    :cond_1
    const-string v1, "com.android.settings.ApplicationPkgName"

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0
.end method
