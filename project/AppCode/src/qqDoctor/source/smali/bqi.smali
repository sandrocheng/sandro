.class final Lbqi;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lbqh;


# direct methods
.method constructor <init>(Lbqh;)V
    .locals 0

    iput-object p1, p0, Lbqi;->a:Lbqh;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbqi;->a:Lbqh;

    iget-object v0, v0, Lbqh;->a:Lbqb;

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v1

    invoke-static {v0, v1}, Lbqb;->d(Lbqb;I)I

    iget-object v0, p0, Lbqi;->a:Lbqh;

    iget-object v0, v0, Lbqh;->a:Lbqb;

    invoke-static {v0}, Lbqb;->aa(Lbqb;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbqi;->a:Lbqh;

    iget-object v0, v0, Lbqh;->a:Lbqb;

    invoke-static {v0}, Lbqb;->aa(Lbqb;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
