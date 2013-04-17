.class final Lbqq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbqb;


# direct methods
.method constructor <init>(Lbqb;)V
    .locals 0

    iput-object p1, p0, Lbqq;->a:Lbqb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lbqq;->a:Lbqb;

    invoke-static {v0}, Lbqb;->i(Lbqb;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->startAnimation()V

    iget-object v0, p0, Lbqq;->a:Lbqb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbqb;->a(Lbqb;Z)Z

    iget-object v0, p0, Lbqq;->a:Lbqb;

    invoke-static {v0}, Lbqb;->C(Lbqb;)V

    iget-object v0, p0, Lbqq;->a:Lbqb;

    invoke-static {v0}, Lbqb;->v(Lbqb;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbqq;->a:Lbqb;

    invoke-static {v0, v2}, Lbqb;->a(Lbqb;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbqq;->a:Lbqb;

    invoke-static {v0}, Lbqb;->D(Lbqb;)V

    iget-object v0, p0, Lbqq;->a:Lbqb;

    invoke-static {v0}, Lbqb;->v(Lbqb;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbqq;->a:Lbqb;

    invoke-static {v0, v2}, Lbqb;->a(Lbqb;Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbqq;->a:Lbqb;

    invoke-static {v0}, Lbqb;->E(Lbqb;)V

    iget-object v0, p0, Lbqq;->a:Lbqb;

    iput-boolean v2, v0, Lbqb;->a:Z

    goto :goto_0
.end method
