.class final Lblb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;


# instance fields
.field private synthetic a:Lbla;


# direct methods
.method constructor <init>(Lbla;)V
    .locals 0

    iput-object p1, p0, Lblb;->a:Lbla;

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

    iget-object v0, p0, Lblb;->a:Lbla;

    iget-object v0, v0, Lbla;->a:Lbkz;

    iget-object v0, v0, Lbkz;->c:Lbkn;

    iget-object v1, p0, Lblb;->a:Lbla;

    iget-object v1, v1, Lbla;->a:Lbkz;

    iget-object v1, v1, Lbkz;->a:Llb;

    iget-object v2, p0, Lblb;->a:Lbla;

    iget-object v2, v2, Lbla;->a:Lbkz;

    iget v2, v2, Lbkz;->b:I

    invoke-static {v0, v1, v2}, Lbkn;->a(Lbkn;Llb;I)V

    return-void
.end method
