.class public final Lcom/tencent/feedback/common/d;
.super Ljava/lang/Object;
.source "NetStateUtil.java"


# static fields
.field private static a:Landroid/net/ConnectivityManager;

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/feedback/common/d;->a:Landroid/net/ConnectivityManager;

    .line 11
    sput-boolean v1, Lcom/tencent/feedback/common/d;->b:Z

    .line 12
    sput-boolean v1, Lcom/tencent/feedback/common/d;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-static {p0}, Lcom/tencent/feedback/common/d;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 48
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 68
    invoke-static {p0}, Lcom/tencent/feedback/common/d;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 69
    if-nez v0, :cond_0

    .line 70
    const-string v0, "null"

    .line 73
    :goto_0
    return-object v0

    .line 71
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 72
    const-string v0, "wifi"

    goto :goto_0

    .line 73
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 29
    :try_start_0
    sget-object v0, Lcom/tencent/feedback/common/d;->a:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/tencent/feedback/common/d;->a:Landroid/net/ConnectivityManager;

    :cond_0
    sget-object v0, Lcom/tencent/feedback/common/d;->a:Landroid/net/ConnectivityManager;

    .line 30
    if-nez v0, :cond_1

    move-object v0, v1

    .line 38
    :goto_0
    return-object v0

    .line 32
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 38
    goto :goto_0
.end method
