.class final Lyx;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lyw;


# direct methods
.method constructor <init>(Lyw;)V
    .locals 0

    iput-object p1, p0, Lyx;->a:Lyw;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lyx;->a:Lyw;

    invoke-static {v0}, Lyw;->a(Lyw;)V

    iget-object v0, p0, Lyx;->a:Lyw;

    invoke-static {v0}, Lyw;->b(Lyw;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lwr;->a(Landroid/content/Context;)Lwr;

    move-result-object v0

    invoke-virtual {v0}, Lwr;->k()V

    iget-object v0, p0, Lyx;->a:Lyw;

    invoke-static {v0}, Lyw;->b(Lyw;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lwr;->a(Landroid/content/Context;)Lwr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lwr;->a(Z)V

    return-void
.end method
