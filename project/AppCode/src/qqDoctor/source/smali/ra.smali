.class public final Lra;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lra;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportChannelInfo()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v0}, La;->b(I)Lfc;

    move-result-object v0

    sget-object v1, Lfc;->a:Lfc;

    if-ne v0, v1, :cond_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iget-boolean v1, p0, Lra;->a:Z

    invoke-virtual {v0, v1}, Lho;->i(Z)V

    goto :goto_0
.end method
