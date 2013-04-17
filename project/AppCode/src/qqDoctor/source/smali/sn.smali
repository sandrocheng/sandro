.class public final Lsn;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Z

.field private synthetic c:Landroid/content/Context;

.field private synthetic d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lsn;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lsn;->b:Z

    iput-object p3, p0, Lsn;->c:Landroid/content/Context;

    iput-boolean p4, p0, Lsn;->d:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-class v0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    iget-object v1, p0, Lsn;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->getLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, Lsn;->b:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->in:I

    :goto_0
    sput v0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->isinorout:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lsn;->c:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lvc;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lvc;->d:Ljava/lang/String;

    iget-boolean v2, p0, Lsn;->d:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lvc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lsn;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void

    :cond_1
    sget v0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->out:I

    goto :goto_0
.end method
