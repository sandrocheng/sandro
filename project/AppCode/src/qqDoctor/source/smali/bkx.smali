.class final Lbkx;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lbkn;


# direct methods
.method constructor <init>(Lbkn;)V
    .locals 0

    iput-object p1, p0, Lbkx;->a:Lbkn;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbkx;->a:Lbkn;

    invoke-static {v0}, Lbkn;->v(Lbkn;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
