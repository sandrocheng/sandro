.class public final Lhg;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lhg;->b:Landroid/content/Context;

    iget-object v0, p0, Lhg;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhg;->a:Ljava/lang/String;

    return-void
.end method

.method private b()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lhg;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lhg;->a:Ljava/lang/String;

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lhg;->b()I

    move-result v1

    invoke-static {}, Lho;->a()Lho;

    move-result-object v2

    invoke-virtual {v2}, Lho;->S()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v3

    invoke-virtual {v3, v2}, Lho;->k(I)V

    :cond_0
    invoke-static {}, Lho;->a()Lho;

    move-result-object v3

    invoke-virtual {v3, v1}, Lho;->j(I)V

    if-lez v2, :cond_1

    if-eq v1, v2, :cond_1

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1, v0}, Lho;->T(Z)V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
