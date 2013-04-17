.class final Lut;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lus;


# direct methods
.method constructor <init>(Lus;)V
    .locals 0

    iput-object p1, p0, Lut;->a:Lus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lut;->a:Lus;

    iget-object v0, v0, Lus;->a:Luo;

    invoke-static {v0}, Luo;->b(Luo;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lut;->a:Lus;

    iget-object v0, v0, Lus;->a:Luo;

    invoke-static {v0}, Luo;->c(Luo;)V

    :cond_0
    iget-object v0, p0, Lut;->a:Lus;

    iget-object v0, v0, Lus;->a:Luo;

    invoke-static {v0}, Luo;->d(Luo;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
