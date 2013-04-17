.class public final Lcom/tencent/tmsecure/module/update/ICheckListener$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/update/ICheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmsecure/module/update/ICheckListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private a:Lcom/tencent/tmsecure/module/update/ICheckListener;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/update/ICheckListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tmsecure/module/update/ICheckListener$Proxy;->a:Lcom/tencent/tmsecure/module/update/ICheckListener;

    return-void
.end method


# virtual methods
.method public final onCheckCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/ICheckListener$Proxy;->a:Lcom/tencent/tmsecure/module/update/ICheckListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/ICheckListener$Proxy;->a:Lcom/tencent/tmsecure/module/update/ICheckListener;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/update/ICheckListener;->onCheckCanceled()V

    :cond_0
    return-void
.end method

.method public final onCheckEvent(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/ICheckListener$Proxy;->a:Lcom/tencent/tmsecure/module/update/ICheckListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/ICheckListener$Proxy;->a:Lcom/tencent/tmsecure/module/update/ICheckListener;

    invoke-interface {v0, p1}, Lcom/tencent/tmsecure/module/update/ICheckListener;->onCheckEvent(I)V

    :cond_0
    return-void
.end method

.method public final onCheckFinished(Lcom/tencent/tmsecure/module/update/CheckResult;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/ICheckListener$Proxy;->a:Lcom/tencent/tmsecure/module/update/ICheckListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/ICheckListener$Proxy;->a:Lcom/tencent/tmsecure/module/update/ICheckListener;

    invoke-interface {v0, p1}, Lcom/tencent/tmsecure/module/update/ICheckListener;->onCheckFinished(Lcom/tencent/tmsecure/module/update/CheckResult;)V

    :cond_0
    return-void
.end method

.method public final onCheckStarted()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/ICheckListener$Proxy;->a:Lcom/tencent/tmsecure/module/update/ICheckListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/ICheckListener$Proxy;->a:Lcom/tencent/tmsecure/module/update/ICheckListener;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/update/ICheckListener;->onCheckStarted()V

    :cond_0
    return-void
.end method
