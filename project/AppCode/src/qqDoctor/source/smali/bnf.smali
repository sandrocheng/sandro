.class final Lbnf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;


# instance fields
.field private synthetic a:Landroid/os/Message;

.field private synthetic b:Lbne;


# direct methods
.method constructor <init>(Lbne;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lbnf;->b:Lbne;

    iput-object p2, p0, Lbnf;->a:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 0

    return-void
.end method

.method public final onRetry()V
    .locals 3

    iget-object v0, p0, Lbnf;->b:Lbne;

    iget-object v0, v0, Lbne;->a:Lbnd;

    iget-object v1, p0, Lbnf;->b:Lbne;

    iget-object v1, v1, Lbne;->a:Lbnd;

    invoke-static {v1}, Lbnd;->n(Lbnd;)Lkv;

    move-result-object v1

    iget-object v1, v1, Lkv;->d:Lkw;

    iget-object v2, p0, Lbnf;->a:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lbnd;->a(Lbnd;Lkw;I)V

    return-void
.end method
