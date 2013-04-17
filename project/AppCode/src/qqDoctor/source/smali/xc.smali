.class final Lxc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/update/ICheckListener;


# instance fields
.field private a:Z

.field private synthetic b:Llc;

.field private synthetic c:Lxb;


# direct methods
.method constructor <init>(Lxb;Llc;)V
    .locals 1

    iput-object p1, p0, Lxc;->c:Lxb;

    iput-object p2, p0, Lxc;->b:Llc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lxc;->a:Z

    return-void
.end method


# virtual methods
.method public final onCheckCanceled()V
    .locals 0

    return-void
.end method

.method public final onCheckEvent(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxc;->a:Z

    :cond_0
    return-void
.end method

.method public final onCheckFinished(Lcom/tencent/tmsecure/module/update/CheckResult;)V
    .locals 3

    iget-boolean v0, p0, Lxc;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lxc;->b:Llc;

    iput-object p1, v0, Llc;->e:Ljava/lang/Object;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    invoke-virtual {v0}, Lho;->m()V

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lxc;->b:Llc;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Llc;->d:Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lxc;->c:Lxb;

    const/16 v1, 0x66

    iget-object v2, p0, Lxc;->b:Llc;

    invoke-static {v0, v1, v2}, Lxb;->a(Lxb;ILlc;)V

    return-void

    :cond_0
    iget-object v0, p0, Lxc;->b:Llc;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Llc;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lxc;->b:Llc;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Llc;->d:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final onCheckStarted()V
    .locals 0

    return-void
.end method
