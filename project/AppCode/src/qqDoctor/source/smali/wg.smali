.class final Lwg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

.field private synthetic b:Lwe;


# direct methods
.method constructor <init>(Lwe;Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V
    .locals 0

    iput-object p1, p0, Lwg;->b:Lwe;

    iput-object p2, p0, Lwg;->a:Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lwg;->b:Lwe;

    invoke-static {v0}, Lwe;->a(Lwe;)[B

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->O()Z

    move-result v0

    new-instance v2, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Liy;-><init>(Landroid/content/Context;)V

    iget-object v2, v2, Liy;->a:Landroid/content/SharedPreferences;

    const-string v3, "netword_service_status"

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v4

    invoke-virtual {v4}, Lnp;->f()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lwg;->b:Lwe;

    invoke-static {v0}, Lwe;->b(Lwe;)Lov;

    move-result-object v0

    iget-object v2, p0, Lwg;->a:Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    invoke-virtual {v0, v2}, Lov;->a(Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
