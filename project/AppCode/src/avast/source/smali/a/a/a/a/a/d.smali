.class public La/a/a/a/a/d;
.super Ljava/lang/Object;
.source "ServerConnector.java"


# instance fields
.field private a:Landroid/b/a/a;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, La/a/a/a/a/d;->b:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, La/a/a/a/a/d;->a:Landroid/b/a/a;

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, La/a/a/a/a/d;->c()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/b/a/a;->a(Ljava/lang/String;)Landroid/b/a/a;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/a/d;->a:Landroid/b/a/a;

    .line 65
    iget-object v0, p0, La/a/a/a/a/d;->a:Landroid/b/a/a;

    invoke-virtual {v0}, Landroid/b/a/a;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 67
    :cond_0
    return-void
.end method

.method private e()Landroid/content/pm/PackageInfo;
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, La/a/a/a/a/d;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 92
    :try_start_0
    iget-object v1, p0, La/a/a/a/a/d;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 97
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/b/a/a;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, La/a/a/a/a/d;->d()V

    .line 50
    iget-object v0, p0, La/a/a/a/a/d;->a:Landroid/b/a/a;

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, La/a/a/a/a/d;->a:Landroid/b/a/a;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, La/a/a/a/a/d;->a:Landroid/b/a/a;

    invoke-virtual {v0}, Landroid/b/a/a;->a()V

    .line 57
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/d;->a:Landroid/b/a/a;

    .line 58
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 10

    .prologue
    .line 73
    .line 74
    invoke-direct {p0}, La/a/a/a/a/d;->e()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 76
    iget-object v1, p0, La/a/a/a/a/d;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 78
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 79
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 80
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82
    const-string v6, "avast/%s (%d;%s) ID/%s HW/%s Android/%s (%s)"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x2

    aput-object v5, v7, v0

    const/4 v0, 0x3

    aput-object v1, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v2, v7, v0

    const/4 v0, 0x6

    aput-object v3, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string v1, "AvastGeneric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP UA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-object v0
.end method
