.class final Luw;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Luv;


# direct methods
.method constructor <init>(Luv;)V
    .locals 0

    iput-object p1, p0, Luw;->a:Luv;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Luw;->a:Luv;

    iget-object v0, v0, Luv;->a:Luo;

    invoke-static {v0}, Luo;->e(Luo;)V

    iget-object v0, p0, Luw;->a:Luv;

    iget-object v0, v0, Luv;->a:Luo;

    invoke-static {v0}, Luo;->f(Luo;)V

    iget-object v0, p0, Luw;->a:Luv;

    iget-object v0, v0, Luv;->a:Luo;

    invoke-static {v0}, Luo;->g(Luo;)V

    iget-object v0, p0, Luw;->a:Luv;

    iget-object v0, v0, Luv;->a:Luo;

    invoke-static {v0}, Luo;->h(Luo;)V

    iget-object v0, p0, Luw;->a:Luv;

    iget-object v0, v0, Luv;->a:Luo;

    invoke-static {v0}, Luo;->b(Luo;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Luw;->a:Luv;

    iget-object v0, v0, Luv;->a:Luo;

    invoke-static {v0}, Luo;->i(Luo;)V

    :cond_0
    iget-object v0, p0, Luw;->a:Luv;

    iget-object v0, v0, Luv;->a:Luo;

    invoke-static {v0}, Luo;->d(Luo;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
