.class final Lbdp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbdk;


# direct methods
.method constructor <init>(Lbdk;)V
    .locals 0

    iput-object p1, p0, Lbdp;->a:Lbdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbdp;->a:Lbdk;

    invoke-static {v0}, Lbdk;->c(Lbdk;)Ljf;

    move-result-object v0

    invoke-virtual {v0}, Ljf;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbdp;->a:Lbdk;

    invoke-static {v0}, Lbdk;->c(Lbdk;)Ljf;

    move-result-object v0

    invoke-virtual {v0}, Ljf;->b()V

    :cond_0
    iget-object v0, p0, Lbdp;->a:Lbdk;

    invoke-static {v0}, Lbdk;->d(Lbdk;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
