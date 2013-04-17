.class final Lbpz;
.super Landroid/content/pm/IPackageDataObserver$Stub;


# instance fields
.field private synthetic a:Lbpu;


# direct methods
.method constructor <init>(Lbpu;)V
    .locals 0

    iput-object p1, p0, Lbpz;->a:Lbpu;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lbpz;->a:Lbpu;

    iget-object v0, v0, Lbpu;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
