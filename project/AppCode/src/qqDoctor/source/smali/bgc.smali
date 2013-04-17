.class final Lbgc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;


# instance fields
.field private synthetic a:Lbfy;


# direct methods
.method constructor <init>(Lbfy;)V
    .locals 0

    iput-object p1, p0, Lbgc;->a:Lbfy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 0

    return-void
.end method

.method public final onRetry()V
    .locals 1

    iget-object v0, p0, Lbgc;->a:Lbfy;

    invoke-static {v0}, Lbfy;->c(Lbfy;)V

    return-void
.end method
