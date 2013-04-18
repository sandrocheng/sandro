.class public final Lcom/c/a/a/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 15
    const-string v0, "2.0"

    sput-object v0, Lcom/c/a/a/n;->a:Ljava/lang/String;

    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Lcom/c/a/a/n;->b:Z

    .line 29
    const/4 v0, 0x3

    .line 32
    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 35
    new-instance v1, Landroid/os/Build$VERSION;

    invoke-direct {v1}, Landroid/os/Build$VERSION;-><init>()V

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 37
    if-eqz v2, :cond_0

    .line 39
    const-string v3, "SDK_INT"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 40
    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 53
    :cond_0
    :goto_0
    sput v0, Lcom/c/a/a/n;->f:I

    .line 54
    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    .line 52
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 64
    const-string v0, ""

    .line 67
    const/16 v1, 0x80

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_0

    .line 70
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "MAPBAR_APIKEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :cond_0
    :goto_0
    return-object v0

    .line 73
    :catch_0
    move-exception v1

    .line 75
    const-string v2, "CellLocation"

    const-string v3, "Could not read apikey meta-data from AndroidManifest.xml."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 87
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 92
    :try_start_0
    const-string v0, "SYSTEM"

    sget-object v1, Lcom/c/a/a/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 108
    :goto_0
    return v0

    .line 95
    :cond_0
    new-instance v0, Lcom/c/a/a/u;

    invoke-static {p0}, Lcom/c/a/a/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/c/a/a/u;-><init>(Ljava/lang/String;)V

    .line 96
    iget-object v1, v0, Lcom/c/a/a/u;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 98
    iget-object v0, v0, Lcom/c/a/a/u;->a:Ljava/lang/String;

    sget-object v1, Lcom/c/a/a/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 100
    goto :goto_0

    :catch_0
    move-exception v0

    .line 108
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
