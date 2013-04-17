.class public final Lbtw;
.super Lcom/tencent/tmsecure/common/BaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbtw$a;,
        Lbtw$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/tmsecure/module/aresengine/DataIntercepter",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

.field public c:Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;

.field public d:Landroid/content/Context;

.field public e:Lbvg;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbtw;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/tmsecure/module/aresengine/DataIntercepter",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbtw;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    return-object v0
.end method

.method public final a(Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lbtw;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbtw;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->a()Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the intercepter named "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " had exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lbtw;->e:Lbvg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbtw;->e:Lbvg;

    invoke-virtual {v0}, Lbvg;->a()V

    :cond_0
    return-void
.end method

.method public final getSingletonType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lbtw;->d:Landroid/content/Context;

    new-instance v0, Lbtw$b;

    invoke-direct {v0, p1}, Lbtw$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbtw;->b:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

    new-instance v0, Lbtw$a;

    invoke-direct {v0, p0}, Lbtw$a;-><init>(Lbtw;)V

    invoke-static {v0}, Lcom/tencent/tmsecure/common/SDKClient;->addMessageHandler(Lcom/tencent/tmsecure/common/MessageHandler;)Z

    const-string v0, "rule_store.sys"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lbtd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
