.class public abstract Lcom/tencent/tmsecure/module/plugin/AbsPluginControler;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/tmsecure/common/BaseServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tmsecure/common/BaseServiceConnection;

    const-class v1, Lcom/tencent/tmsecure/module/plugin/AbsPluginControler;

    invoke-direct {v0, v1}, Lcom/tencent/tmsecure/common/BaseServiceConnection;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/plugin/AbsPluginControler;->a:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    return-void
.end method


# virtual methods
.method public final bindService(Ljava/lang/Class;)Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/tencent/tmsecure/common/BaseService;",
            ">;)",
            "Landroid/os/IBinder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/plugin/AbsPluginControler;->a:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {p1, v0}, Lcom/tencent/tmsecure/common/TMSService;->bindService(Ljava/lang/Class;Lcom/tencent/tmsecure/common/BaseServiceConnection;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final startActivity(Landroid/app/Activity;Lcom/tencent/tmsecure/module/plugin/PluginIntent;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/tmsecure/module/plugin/AbsPluginControler;->startActivityForResult(Landroid/app/Activity;ILcom/tencent/tmsecure/module/plugin/PluginIntent;)V

    return-void
.end method

.method public abstract startActivityForResult(Landroid/app/Activity;ILcom/tencent/tmsecure/module/plugin/PluginIntent;)V
.end method

.method public final startService(Lcom/tencent/tmsecure/common/BaseService;)Lcom/tencent/tmsecure/common/BaseService;
    .locals 1

    invoke-static {p1}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;)Lcom/tencent/tmsecure/common/BaseService;

    move-result-object v0

    return-object v0
.end method

.method public final stopService(Lcom/tencent/tmsecure/common/BaseService;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->stopService(Ljava/lang/Class;)Z

    return-void
.end method

.method public final stopService(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/tencent/tmsecure/common/BaseService;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/tencent/tmsecure/common/TMSService;->stopService(Ljava/lang/Class;)Z

    return-void
.end method

.method public final unBindService(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/tencent/tmsecure/common/BaseService;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/plugin/AbsPluginControler;->a:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {p1, v0}, Lcom/tencent/tmsecure/common/TMSService;->unBindService(Ljava/lang/Class;Lcom/tencent/tmsecure/common/BaseServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/plugin/AbsPluginControler;->a:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    return-void
.end method
