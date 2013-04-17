.class final Lvz;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lvy;


# direct methods
.method constructor <init>(Lvy;)V
    .locals 0

    iput-object p1, p0, Lvz;->a:Lvy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lvz;->a:Lvy;

    iget-object v0, v0, Lvy;->b:Lvk;

    iget-object v1, p0, Lvz;->a:Lvy;

    iget-object v1, v1, Lvy;->a:Llf;

    invoke-static {v0, v1}, Lvk;->a(Lvk;Llf;)Lhq;

    move-result-object v0

    iget-object v1, p0, Lvz;->a:Lvy;

    iget-object v1, v1, Lvy;->a:Llf;

    invoke-virtual {v0, v1}, Lhq;->b(Llf;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvz;->a:Lvy;

    iget-object v0, v0, Lvy;->b:Lvk;

    iget-object v1, v0, Lvk;->g:Ldv;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lvk;->i:Landroid/os/Handler;

    new-instance v2, Lwa;

    invoke-direct {v2, v0}, Lwa;-><init>(Lvk;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
