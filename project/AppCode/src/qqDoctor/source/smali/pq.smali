.class final Lpq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lpo$c;


# direct methods
.method constructor <init>(Lpo$c;)V
    .locals 0

    iput-object p1, p0, Lpq;->a:Lpo$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lpq;->a:Lpo$c;

    iget-object v0, v0, Lpo$c;->d:Lpo$b;

    iget-object v1, p0, Lpq;->a:Lpo$c;

    iget-object v1, v1, Lpo$c;->m:Lpo;

    iget-object v1, v1, Lpo;->a:Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;

    iget-object v2, p0, Lpq;->a:Lpo$c;

    iget-object v2, v2, Lpo$c;->b:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tmsecure/module/urlcheck/UrlCheckManager;->checkUrl(Ljava/lang/String;)LQQPIM/UrlCheckResponse;

    move-result-object v1

    iput-object v1, v0, Lpo$b;->a:LQQPIM/UrlCheckResponse;

    iget-object v0, p0, Lpq;->a:Lpo$c;

    iget-object v0, v0, Lpo$c;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lpq;->a:Lpo$c;

    iget-object v1, v1, Lpo$c;->l:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
