.class public final Lcom/tencent/qqpimsecure/service/TMSLiteService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/service/TMSLiteService$a;,
        Lcom/tencent/qqpimsecure/service/TMSLiteService$d;,
        Lcom/tencent/qqpimsecure/service/TMSLiteService$c;,
        Lcom/tencent/qqpimsecure/service/TMSLiteService$b;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

.field private b:Lbzt;

.field private c:Lbzy;

.field private d:Lbzq;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService;->b:Lbzt;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService;->c:Lbzy;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService;->d:Lbzq;

    return-void
.end method

.method static synthetic a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    return-object v0
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "service_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService;->b:Lbzt;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;-><init>(Lcom/tencent/qqpimsecure/service/TMSLiteService;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService;->b:Lbzt;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService;->b:Lbzt;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService;->c:Lbzy;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;-><init>(Lcom/tencent/qqpimsecure/service/TMSLiteService;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService;->c:Lbzy;

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService;->c:Lbzy;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService;->d:Lbzq;

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/qqpimsecure/service/TMSLiteService$a;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$a;-><init>(Lcom/tencent/qqpimsecure/service/TMSLiteService;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService;->d:Lbzq;

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService;->d:Lbzq;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;-><init>(Lcom/tencent/qqpimsecure/service/TMSLiteService;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
