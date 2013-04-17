.class final Lbvs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbvr;

.field private final synthetic b:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;


# direct methods
.method constructor <init>(Lbvr;Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V
    .locals 0

    iput-object p1, p0, Lbvs;->a:Lbvr;

    iput-object p2, p0, Lbvs;->b:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbvs;->b:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    iget v0, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbvs;->a:Lbvr;

    invoke-static {v0}, Lbvr;->a(Lbvr;)Lbvp$a;

    move-result-object v0

    iget-object v1, p0, Lbvs;->a:Lbvr;

    invoke-static {v1}, Lbvr;->a(Lbvr;)Lbvp$a;

    move-result-object v1

    invoke-static {v1}, Lbvp$a;->c(Lbvp$a;)Landroid/database/ContentObserver;

    iget-object v1, p0, Lbvs;->b:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    iget-object v2, p0, Lbvs;->a:Lbvr;

    invoke-static {v2}, Lbvr;->a(Lbvr;)Lbvp$a;

    move-result-object v2

    invoke-static {v2}, Lbvp$a;->a(Lbvp$a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbvp$a;->a(Lbvp$a;Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbvs;->a:Lbvr;

    invoke-static {v0}, Lbvr;->a(Lbvr;)Lbvp$a;

    move-result-object v0

    iget-object v1, p0, Lbvs;->a:Lbvr;

    invoke-static {v1}, Lbvr;->a(Lbvr;)Lbvp$a;

    move-result-object v1

    invoke-static {v1}, Lbvp$a;->c(Lbvp$a;)Landroid/database/ContentObserver;

    iget-object v1, p0, Lbvs;->b:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    iget-object v2, p0, Lbvs;->a:Lbvr;

    invoke-static {v2}, Lbvr;->a(Lbvr;)Lbvp$a;

    move-result-object v2

    invoke-static {v2}, Lbvp$a;->b(Lbvp$a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbvp$a;->a(Lbvp$a;Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    goto :goto_0
.end method
