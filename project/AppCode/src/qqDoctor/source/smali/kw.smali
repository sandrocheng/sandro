.class public final Lkw;
.super Lcom/tencent/tmsecure/module/software/AppEntity;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static a:[Ljava/lang/String;

.field public static b:[Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Ljava/lang/Object;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:J

.field private H:J

.field private I:J

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:I

.field private U:J

.field private V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private W:I

.field private c:Z

.field private d:I

.field private e:Ljava/lang/String;

.field private f:F

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Z

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:I

.field private v:J

.field private w:J

.field private x:J

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f090001

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v5

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x4

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b04f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b04f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b04f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b04f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b04f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b04f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xb

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b04f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b08f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lkw;->a:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b090c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b090d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b090e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b090f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x4

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b08c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lkw;->b:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [I

    aput v4, v0, v5

    aput v4, v0, v6

    aput v4, v0, v7

    const v1, 0x7f090009

    aput v1, v0, v8

    const/4 v1, 0x4

    aput v4, v0, v1

    const/4 v1, 0x5

    aput v4, v0, v1

    const/4 v1, 0x6

    aput v4, v0, v1

    const/4 v1, 0x7

    aput v4, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    iput v2, p0, Lkw;->d:I

    const-string v0, ""

    iput-object v0, p0, Lkw;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lkw;->f:F

    const-string v0, ""

    iput-object v0, p0, Lkw;->g:Ljava/lang/String;

    iput v1, p0, Lkw;->h:I

    const-string v0, ""

    iput-object v0, p0, Lkw;->i:Ljava/lang/String;

    iput v1, p0, Lkw;->j:I

    iput-boolean v1, p0, Lkw;->k:Z

    iput v2, p0, Lkw;->l:I

    const-string v0, ""

    iput-object v0, p0, Lkw;->n:Ljava/lang/String;

    iput v2, p0, Lkw;->p:I

    iput v1, p0, Lkw;->u:I

    iput v2, p0, Lkw;->y:I

    iput-boolean v1, p0, Lkw;->A:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lkw;->C:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lkw;->N:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lkw;->O:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lkw;->P:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tmsecure/module/software/AppEntity;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    iput v2, p0, Lkw;->d:I

    const-string v0, ""

    iput-object v0, p0, Lkw;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lkw;->f:F

    const-string v0, ""

    iput-object v0, p0, Lkw;->g:Ljava/lang/String;

    iput v1, p0, Lkw;->h:I

    const-string v0, ""

    iput-object v0, p0, Lkw;->i:Ljava/lang/String;

    iput v1, p0, Lkw;->j:I

    iput-boolean v1, p0, Lkw;->k:Z

    iput v2, p0, Lkw;->l:I

    const-string v0, ""

    iput-object v0, p0, Lkw;->n:Ljava/lang/String;

    iput v2, p0, Lkw;->p:I

    iput v1, p0, Lkw;->u:I

    iput v2, p0, Lkw;->y:I

    iput-boolean v1, p0, Lkw;->A:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lkw;->C:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lkw;->N:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lkw;->O:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lkw;->P:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->isSystemApp()Z

    move-result v0

    invoke-virtual {p0, v0}, Lkw;->setSystemFlag(Z)V

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->isApk()Z

    move-result v0

    invoke-virtual {p0, v0}, Lkw;->setApkFlag(Z)V

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->getVersionCode()I

    move-result v0

    invoke-super {p0, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->setVersionCode(I)V

    iput v0, p0, Lkw;->o:I

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkw;->setVersion(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkw;->setSize(J)V

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkw;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->getPermissions()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkw;->setPermissions([Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->getCompany()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkw;->setCompany(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->getCertMD5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkw;->setCertMD5(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->getApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkw;->setApkPath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkw;->setAppName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkw;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->getLastModifiedTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkw;->setLastModifiedTime(J)V

    return-void
.end method

.method public static a(Lkw;II)Landroid/content/Intent;
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareDetailActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "key_pkg_name"

    invoke-virtual {p0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "key_soft_name"

    invoke-virtual {p0}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "key_cert_md5"

    invoke-virtual {p0}, Lkw;->getCertMD5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "key_soft_version_code"

    invoke-virtual {p0}, Lkw;->getVersionCode()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "key_apk_size"

    invoke-virtual {p0}, Lkw;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "key_soft_version"

    if-nez p1, :cond_0

    iget-object v0, p0, Lkw;->n:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "key_category_id"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "key_pos"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "key_publish_time"

    iget-object v2, p0, Lkw;->D:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "key_source_content"

    iget-object v2, p0, Lkw;->R:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "key_appid"

    iget v2, p0, Lkw;->T:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lkw;->getVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lkw;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lkw;->a(Lkw;II)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lkw;II)V
    .locals 1

    invoke-static {p1, p2, p3}, Lkw;->a(Lkw;II)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static u()V
    .locals 0

    return-void
.end method

.method public static w()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkw;->B:Ljava/lang/Object;

    return-object v0
.end method

.method public final B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkw;->C:Ljava/lang/String;

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkw;->D:Ljava/lang/String;

    return-object v0
.end method

.method public final D()I
    .locals 1

    iget v0, p0, Lkw;->o:I

    return v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkw;->E:Ljava/lang/String;

    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkw;->F:Ljava/lang/String;

    return-object v0
.end method

.method public final G()J
    .locals 2

    iget-wide v0, p0, Lkw;->G:J

    return-wide v0
.end method

.method public final H()J
    .locals 2

    iget-wide v0, p0, Lkw;->H:J

    return-wide v0
.end method

.method public final I()J
    .locals 2

    iget-wide v0, p0, Lkw;->I:J

    return-wide v0
.end method

.method public final J()I
    .locals 1

    iget v0, p0, Lkw;->J:I

    return v0
.end method

.method public final K()I
    .locals 1

    iget v0, p0, Lkw;->K:I

    return v0
.end method

.method public final L()I
    .locals 1

    iget v0, p0, Lkw;->M:I

    return v0
.end method

.method public final M()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkw;->N:Ljava/lang/String;

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkw;->O:Ljava/lang/String;

    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkw;->P:Ljava/lang/String;

    return-object v0
.end method

.method public final P()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkw;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public final Q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkw;->R:Ljava/lang/String;

    return-object v0
.end method

.method public final R()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkw;->S:Ljava/lang/String;

    return-object v0
.end method

.method public final S()J
    .locals 2

    iget-wide v0, p0, Lkw;->U:J

    return-wide v0
.end method

.method public final T()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkw;->V:Ljava/util/List;

    return-object v0
.end method

.method public final U()I
    .locals 1

    iget v0, p0, Lkw;->W:I

    return v0
.end method

.method public final V()I
    .locals 1

    iget v0, p0, Lkw;->L:I

    return v0
.end method

.method public final a()J
    .locals 2

    iget-wide v0, p0, Lkw;->x:J

    return-wide v0
.end method

.method public final a(F)V
    .locals 0

    iput p1, p0, Lkw;->f:F

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lkw;->m:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lkw;->x:J

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkw;->B:Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkw;->n:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkw;->V:Ljava/util/List;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lkw;->c:Z

    return-void
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lkw;->w:J

    return-wide v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lkw;->l:I

    return-void
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Lkw;->w:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkw;->i:Ljava/lang/String;

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lkw;->r:Z

    return-void
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lkw;->v:J

    return-wide v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lkw;->j:I

    return-void
.end method

.method public final c(J)V
    .locals 0

    iput-wide p1, p0, Lkw;->v:J

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkw;->e:Ljava/lang/String;

    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lkw;->z:Z

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkw;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final d(I)V
    .locals 1

    iput p1, p0, Lkw;->h:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lkw;->d:I

    :cond_0
    return-void
.end method

.method public final d(J)V
    .locals 0

    iput-wide p1, p0, Lkw;->G:J

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkw;->g:Ljava/lang/String;

    return-void
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lkw;->m:I

    return v0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lkw;->d:I

    return-void
.end method

.method public final e(J)V
    .locals 0

    iput-wide p1, p0, Lkw;->H:J

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkw;->q:Ljava/lang/String;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lkw;

    if-eqz v2, :cond_0

    check-cast p1, Lkw;

    invoke-virtual {p0}, Lkw;->isApk()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lkw;->getApkPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lkw;->getApkPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lkw;->getApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Lkw;->getApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lkw;->k:Z

    iget-boolean v3, p1, Lkw;->k:Z

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lkw;->l:I

    return v0
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lkw;->p:I

    return-void
.end method

.method public final f(J)V
    .locals 0

    iput-wide p1, p0, Lkw;->I:J

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkw;->s:Ljava/lang/String;

    return-void
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lkw;->j:I

    return v0
.end method

.method public final g(I)V
    .locals 1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    if-gez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lkw;->u:I

    goto :goto_0
.end method

.method public final g(J)V
    .locals 0

    iput-wide p1, p0, Lkw;->U:J

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkw;->t:Ljava/lang/String;

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkw;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lkw;->y:I

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkw;->C:Ljava/lang/String;

    return-void
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lkw;->h:I

    return v0
.end method

.method public final i(I)V
    .locals 0

    iput p1, p0, Lkw;->o:I

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkw;->D:Ljava/lang/String;

    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lkw;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lkw;->a:[Ljava/lang/String;

    iget v1, p0, Lkw;->d:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lkw;->e:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lkw;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final j(I)V
    .locals 0

    iput p1, p0, Lkw;->J:I

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkw;->E:Ljava/lang/String;

    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkw;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final k(I)V
    .locals 0

    iput p1, p0, Lkw;->K:I

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkw;->F:Ljava/lang/String;

    return-void
.end method

.method public final l()F
    .locals 1

    iget v0, p0, Lkw;->f:F

    return v0
.end method

.method public final l(I)V
    .locals 0

    iput p1, p0, Lkw;->M:I

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkw;->N:Ljava/lang/String;

    return-void
.end method

.method public final m(I)V
    .locals 0

    iput p1, p0, Lkw;->T:I

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkw;->O:Ljava/lang/String;

    return-void
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lkw;->c:Z

    return v0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lkw;->d:I

    return v0
.end method

.method public final n(I)V
    .locals 0

    iput p1, p0, Lkw;->W:I

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkw;->P:Ljava/lang/String;

    return-void
.end method

.method public final o()I
    .locals 1

    iget v0, p0, Lkw;->p:I

    return v0
.end method

.method public final o(I)V
    .locals 0

    iput p1, p0, Lkw;->L:I

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkw;->Q:Ljava/lang/String;

    return-void
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkw;->q:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lkw;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method public final p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkw;->R:Ljava/lang/String;

    return-void
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkw;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkw;->S:Ljava/lang/String;

    return-void
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkw;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Z
    .locals 1

    iget-boolean v0, p0, Lkw;->r:Z

    return v0
.end method

.method public final setVersionCode(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->setVersionCode(I)V

    iput p1, p0, Lkw;->o:I

    return-void
.end method

.method public final t()I
    .locals 1

    iget v0, p0, Lkw;->u:I

    return v0
.end method

.method public final v()I
    .locals 1

    iget v0, p0, Lkw;->y:I

    return v0
.end method

.method public final x()Z
    .locals 1

    iget-boolean v0, p0, Lkw;->z:Z

    return v0
.end method

.method public final y()Z
    .locals 1

    iget-boolean v0, p0, Lkw;->A:Z

    return v0
.end method

.method public final z()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkw;->A:Z

    return-void
.end method
