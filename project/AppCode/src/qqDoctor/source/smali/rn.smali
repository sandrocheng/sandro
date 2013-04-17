.class public final Lrn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrn$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lrm;

.field private c:Lrn$a;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lrn;->c:Lrn$a;

    iput-object p1, p0, Lrn;->a:Landroid/content/Context;

    new-instance v0, Lrm;

    invoke-direct {v0}, Lrm;-><init>()V

    iput-object v0, p0, Lrn;->b:Lrm;

    new-instance v0, Lro;

    iget-object v1, p0, Lrn;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lro;-><init>(Lrn;Landroid/os/Looper;)V

    iput-object v0, p0, Lrn;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lrn;)Lrn$a;
    .locals 1

    iget-object v0, p0, Lrn;->c:Lrn$a;

    return-object v0
.end method

.method static synthetic a(Lrn;Lrn$a;)Lrn$a;
    .locals 0

    iput-object p1, p0, Lrn;->c:Lrn$a;

    return-object p1
.end method

.method static synthetic b(Lrn;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lrn;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lrn;)Lrm;
    .locals 1

    iget-object v0, p0, Lrn;->b:Lrm;

    return-object v0
.end method

.method static synthetic d(Lrn;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lrn;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onPackageReinstall(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lrq;

    invoke-direct {v1, p0, p1}, Lrq;-><init>(Lrn;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
