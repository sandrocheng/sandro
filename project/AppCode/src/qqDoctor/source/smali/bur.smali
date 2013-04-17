.class final Lbur;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbuo$b;

.field private final synthetic b:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

.field private final synthetic c:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

.field private final synthetic d:Lcom/tencent/tmsecure/module/aresengine/FilterResult;


# direct methods
.method constructor <init>(Lbuo$b;Lcom/tencent/tmsecure/module/aresengine/ISmsDao;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)V
    .locals 0

    iput-object p1, p0, Lbur;->a:Lbuo$b;

    iput-object p2, p0, Lbur;->b:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    iput-object p3, p0, Lbur;->c:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    iput-object p4, p0, Lbur;->d:Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v1, p0, Lbur;->b:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    iget-object v0, p0, Lbur;->a:Lbuo$b;

    invoke-static {v0}, Lbuo$b;->m(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbur;->c:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    :goto_0
    iget-object v2, p0, Lbur;->d:Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tmsecure/module/aresengine/ISmsDao;->insert(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)J

    return-void

    :cond_0
    iget-object v0, p0, Lbur;->a:Lbuo$b;

    invoke-static {v0}, Lbuo$b;->m(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    move-result-object v0

    iget-object v2, p0, Lbur;->c:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-interface {v0, v2}, Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;->convert(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    move-result-object v0

    goto :goto_0
.end method
