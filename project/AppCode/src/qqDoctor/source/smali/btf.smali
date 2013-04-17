.class public Lbtf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbtf$a;
    }
.end annotation


# instance fields
.field a:Lorg/apache/http/params/HttpParams;

.field b:Z

.field c:Ljava/lang/String;

.field d:I

.field public e:Lbtf$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbtf;->a:Lorg/apache/http/params/HttpParams;

    iput-boolean v1, p0, Lbtf;->b:Z

    iput-object v0, p0, Lbtf;->c:Ljava/lang/String;

    iput v1, p0, Lbtf;->d:I

    iput-object v0, p0, Lbtf;->e:Lbtf$a;

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lbtf;->e:Lbtf$a;

    if-eqz v0, :cond_0

    if-ne p1, v4, :cond_1

    iget-object v0, p0, Lbtf;->e:Lbtf$a;

    const-string v1, "key_errcode"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lbtf$a;->a:Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;

    iget-object v3, v0, Lbtf$a;->b:Lcom/tencent/tmsecure/module/update/UpdateInfo;

    invoke-virtual {v2, v3, v1}, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->onUpdateEvent(Lcom/tencent/tmsecure/module/update/UpdateInfo;I)V

    iget-object v0, v0, Lbtf$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lbtf;->e:Lbtf$a;

    goto :goto_0
.end method
