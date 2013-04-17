.class final Lwr$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lwr;


# direct methods
.method constructor <init>(Lwr;)V
    .locals 0

    iput-object p1, p0, Lwr$a;->a:Lwr;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "kfc"

    const-string v1, "time out"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lwr$a;->a:Lwr;

    invoke-static {v0}, Lwr;->c(Lwr;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwr$a;->a:Lwr;

    invoke-static {v0}, Lwr;->s(Lwr;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Lwr$a;->a:Lwr;

    invoke-static {v1}, Lwr;->h(Lwr;)I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string v0, "kfc"

    const-string v1, "already success or stop or limit is wrong, just finish"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lwr$a;->a:Lwr;

    invoke-static {v0}, Lwr;->t(Lwr;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lwr$a;->a:Lwr;

    invoke-static {v0}, Lwr;->k(Lwr;)Lwr$b;

    move-result-object v0

    invoke-virtual {v0}, Lwr$b;->a()Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "kfc"

    const-string v2, "time out, analyse the combined sms"

    invoke-static {v1, v2}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lwr$a;->a:Lwr;

    iget-object v2, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-static {v1, v2}, Lwr;->b(Lwr;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lwr$a;->a:Lwr;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-static {v1, v0}, Lwr;->c(Lwr;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lwz;

    invoke-direct {v1, p0}, Lwz;-><init>(Lwr$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    const-string v0, "kfc"

    const-string v1, "time out, no combined sms, cause:"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lwr$a;->a:Lwr;

    invoke-static {v0}, Lwr;->i(Lwr;)I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "kfc"

    const-string v1, "no sms from operator"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lwr$a;->a:Lwr;

    const/16 v1, -0x3d

    invoke-static {v0, v1}, Lwr;->c(Lwr;I)I

    :goto_1
    iget-object v0, p0, Lwr$a;->a:Lwr;

    invoke-static {v0}, Lwr;->t(Lwr;)V

    goto :goto_0

    :cond_3
    const-string v0, "kfc"

    const-string v1, "you have got the sms, but analysis failed"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method
