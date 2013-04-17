.class public final Lod;
.super Labu;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/tencent/tmsecure/module/software/SoftwareManager;

.field private f:Labe;

.field private final g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Labu;-><init>()V

    new-instance v0, Loe;

    invoke-direct {v0}, Loe;-><init>()V

    iput-object v0, p0, Lod;->g:Landroid/os/Handler;

    iput-object p1, p0, Lod;->d:Landroid/content/Context;

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object v0, p0, Lod;->e:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    new-instance v0, Labe;

    invoke-direct {v0}, Labe;-><init>()V

    iput-object v0, p0, Lod;->f:Labe;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-super {p0}, Labu;->a()V

    iget-object v0, p0, Lod;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final a(Lmp;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p1, Lmp;->h:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lod;->e:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v2, 0x4d

    invoke-virtual {v1, v0, v2}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getApkInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v2, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v2}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/tencent/tmsecure/module/software/AppEntity;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->setApkPath(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->setAppName(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->setSize(J)V

    iget-object v0, p0, Lod;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v6}, Lcom/tencent/tmsecure/module/software/AppEntity;->setApkFlag(Z)V

    move-object v0, v2

    :goto_0
    invoke-static {v0}, La;->a(Lcom/tencent/tmsecure/module/software/AppEntity;)Lkw;

    move-result-object v0

    iget-object v1, p0, Lod;->f:Labe;

    invoke-virtual {v1, v0}, Labe;->b(Lkw;)Ljava/lang/String;

    iput-object v0, p1, Lmp;->h:Ljava/lang/Object;

    iget-object v0, p0, Lod;->g:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v6, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lod;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
