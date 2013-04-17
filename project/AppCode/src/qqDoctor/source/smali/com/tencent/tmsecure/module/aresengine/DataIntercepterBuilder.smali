.class public abstract Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final TYPE_INCOMING_CALL:Ljava/lang/String; = "incoming_call"

.field public static final TYPE_INCOMING_SMS:Ljava/lang/String; = "incoming_sms"

.field public static final TYPE_OUTGOING_SMS:Ljava/lang/String; = "outing_sms"

.field public static final TYPE_SYSTEM_CALL:Ljava/lang/String; = "system_call"


# instance fields
.field private a:Lcom/tencent/tmsecure/module/aresengine/DataMonitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/DataMonitor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/tencent/tmsecure/module/aresengine/DataFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/DataFilter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Lcom/tencent/tmsecure/module/aresengine/DataHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createInComingCallIntercepterBuilder()Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Lbuj;

    invoke-direct {v0}, Lbuj;-><init>()V

    return-object v0
.end method

.method public static final createInComingSmsIntercepterBuilder()Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Lbuo;

    invoke-direct {v0}, Lbuo;-><init>()V

    return-object v0
.end method

.method public static final createOutgoingSmsIntercepterBuilder()Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Lbvk;

    invoke-direct {v0}, Lbvk;-><init>()V

    return-object v0
.end method

.method public static final createSystemCallLogIntercepterBuilder()Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Lbvp;

    invoke-direct {v0}, Lbvp;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/DataIntercepter",
            "<TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->a:Lcom/tencent/tmsecure/module/aresengine/DataMonitor;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->getDataMonitor()Lcom/tencent/tmsecure/module/aresengine/DataMonitor;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->a:Lcom/tencent/tmsecure/module/aresengine/DataMonitor;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->b:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->getDataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->b:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->c:Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->getDataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->c:Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->a:Lcom/tencent/tmsecure/module/aresengine/DataMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->b:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->c:Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    if-nez v0, :cond_4

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->a:Lcom/tencent/tmsecure/module/aresengine/DataMonitor;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->b:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->c:Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->a:Lcom/tencent/tmsecure/module/aresengine/DataMonitor;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->b:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataMonitor;->bind(Lcom/tencent/tmsecure/module/aresengine/DataFilter;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->b:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->c:Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->a(Lcom/tencent/tmsecure/module/aresengine/DataHandler;)V

    new-instance v0, Lbua;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->a:Lcom/tencent/tmsecure/module/aresengine/DataMonitor;

    iget-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->b:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    iget-object v3, p0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->c:Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    invoke-direct {v0, v1, v2, v3}, Lbua;-><init>(Lcom/tencent/tmsecure/module/aresengine/DataMonitor;Lcom/tencent/tmsecure/module/aresengine/DataFilter;Lcom/tencent/tmsecure/module/aresengine/DataHandler;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->b:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->a:Lcom/tencent/tmsecure/module/aresengine/DataMonitor;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->c:Lcom/tencent/tmsecure/module/aresengine/DataHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public abstract getDataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/DataFilter",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getDataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;
.end method

.method public abstract getDataMonitor()Lcom/tencent/tmsecure/module/aresengine/DataMonitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/DataMonitor",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public declared-synchronized setDataHandler(Lcom/tencent/tmsecure/module/aresengine/DataHandler;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->c:Lcom/tencent/tmsecure/module/aresengine/DataHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDataMonitor(Lcom/tencent/tmsecure/module/aresengine/DataMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/DataMonitor",
            "<TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->a:Lcom/tencent/tmsecure/module/aresengine/DataMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
