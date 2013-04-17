.class public abstract Lpe;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpe$a;
    }
.end annotation


# static fields
.field public static a:I


# instance fields
.field protected b:Landroid/content/Context;

.field protected c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field protected d:Lcom/tencent/tmsecure/module/update/CheckResult;

.field e:Lpe$a;

.field protected f:Z

.field g:I

.field protected h:Lcom/tencent/tmsecure/module/update/IUpdateListener;

.field protected i:Lcom/tencent/tmsecure/module/update/ICheckListener;

.field protected j:Landroid/os/Handler;

.field private k:I

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lpe;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lpe;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iput-object v0, p0, Lpe;->d:Lcom/tencent/tmsecure/module/update/CheckResult;

    iput-object v0, p0, Lpe;->e:Lpe$a;

    iput v1, p0, Lpe;->k:I

    iput v1, p0, Lpe;->g:I

    new-instance v0, Lpf;

    invoke-direct {v0, p0}, Lpf;-><init>(Lpe;)V

    iput-object v0, p0, Lpe;->h:Lcom/tencent/tmsecure/module/update/IUpdateListener;

    new-instance v0, Lpg;

    invoke-direct {v0, p0}, Lpg;-><init>(Lpe;)V

    iput-object v0, p0, Lpe;->i:Lcom/tencent/tmsecure/module/update/ICheckListener;

    new-instance v0, Lph;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lph;-><init>(Lpe;Landroid/os/Looper;)V

    iput-object v0, p0, Lpe;->j:Landroid/os/Handler;

    iput-object p1, p0, Lpe;->b:Landroid/content/Context;

    iput-boolean p2, p0, Lpe;->l:Z

    iput-boolean p3, p0, Lpe;->f:Z

    return-void
.end method

.method static synthetic a(Lpe;)I
    .locals 1

    iget v0, p0, Lpe;->g:I

    return v0
.end method

.method static synthetic a(Lpe;I)I
    .locals 0

    iput p1, p0, Lpe;->g:I

    return p1
.end method

.method static synthetic b(Lpe;I)I
    .locals 0

    iput p1, p0, Lpe;->k:I

    return p1
.end method

.method static synthetic b(Lpe;)Z
    .locals 1

    iget-boolean v0, p0, Lpe;->l:Z

    return v0
.end method

.method static synthetic c(Lpe;)I
    .locals 1

    iget v0, p0, Lpe;->k:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lpe;->k:I

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/content/Context;Lcom/tencent/tmsecure/module/update/CheckResult;Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V
    .locals 0

    invoke-interface {p3}, Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;->onRetry()V

    return-void
.end method

.method protected abstract a(Lcom/tencent/tmsecure/module/update/CheckResult;I)V
.end method

.method protected abstract a(Lcom/tencent/tmsecure/module/update/CheckResult;Lcom/tencent/tmsecure/module/update/IUpdateListener;)V
.end method

.method public final a(Lpe$a;)V
    .locals 0

    iput-object p1, p0, Lpe;->e:Lpe$a;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lpe;->g:I

    return v0
.end method

.method protected abstract b(I)V
.end method

.method public final c()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lpm;

    invoke-direct {v1, p0}, Lpm;-><init>(Lpe;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected final d()V
    .locals 2

    iget-object v0, p0, Lpe;->e:Lpe$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpe;->e:Lpe$a;

    iget v1, p0, Lpe;->g:I

    invoke-interface {v0, v1}, Lpe$a;->a(I)V

    :cond_0
    return-void
.end method

.method protected abstract e()V
.end method

.method protected abstract f()V
.end method
