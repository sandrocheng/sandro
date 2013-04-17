.class final Lpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;


# instance fields
.field private synthetic a:Lph;


# direct methods
.method constructor <init>(Lph;)V
    .locals 0

    iput-object p1, p0, Lpl;->a:Lph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 1

    iget-object v0, p0, Lpl;->a:Lph;

    iget-object v0, v0, Lph;->a:Lpe;

    invoke-virtual {v0}, Lpe;->d()V

    return-void
.end method

.method public final onRetry()V
    .locals 1

    iget-object v0, p0, Lpl;->a:Lph;

    iget-object v0, v0, Lph;->a:Lpe;

    invoke-virtual {v0}, Lpe;->c()V

    return-void
.end method
