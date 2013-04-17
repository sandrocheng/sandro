.class public Lcom/tencent/qqpimsecure/service/SecureService;
.super Lcom/tencent/tmsecure/common/TMSService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/service/SecureService$c;,
        Lcom/tencent/qqpimsecure/service/SecureService$d;,
        Lcom/tencent/qqpimsecure/service/SecureService$a;,
        Lcom/tencent/qqpimsecure/service/SecureService$b;
    }
.end annotation


# static fields
.field public static a:Z


# instance fields
.field private b:Lcom/tencent/qqpimsecure/service/SecureService$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/TMSService;-><init>()V

    invoke-static {}, Lqx;->a()Lqx;

    move-result-object v0

    invoke-virtual {v0}, Lqx;->h()I

    move-result v0

    sget v1, Lqx$a;->f:I

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/service/SecureService$a;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/service/SecureService$a;-><init>(Lcom/tencent/qqpimsecure/service/SecureService;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService;->b:Lcom/tencent/qqpimsecure/service/SecureService$b;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lqx;->a()Lqx;

    move-result-object v0

    invoke-virtual {v0}, Lqx;->h()I

    move-result v0

    sget v1, Lqx$a;->q:I

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/tencent/qqpimsecure/service/SecureService$d;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/service/SecureService$d;-><init>(Lcom/tencent/qqpimsecure/service/SecureService;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService;->b:Lcom/tencent/qqpimsecure/service/SecureService$b;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tencent/qqpimsecure/service/SecureService$c;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/service/SecureService$c;-><init>(Lcom/tencent/qqpimsecure/service/SecureService;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService;->b:Lcom/tencent/qqpimsecure/service/SecureService$b;

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/tmsecure/common/TMSService;->onCreate()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService;->b:Lcom/tencent/qqpimsecure/service/SecureService$b;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/service/SecureService$b;->a()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService;->b:Lcom/tencent/qqpimsecure/service/SecureService$b;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/service/SecureService$b;->b()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpimsecure/service/SecureService;->a:Z

    invoke-super {p0}, Lcom/tencent/tmsecure/common/TMSService;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/tencent/tmsecure/common/TMSService;->onStart(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService;->b:Lcom/tencent/qqpimsecure/service/SecureService$b;

    invoke-interface {v0, p1}, Lcom/tencent/qqpimsecure/service/SecureService$b;->a(Landroid/content/Intent;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/qqpimsecure/service/SecureService;->a:Z

    return-void
.end method
