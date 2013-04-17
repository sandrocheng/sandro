.class final Lbvm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbvl;

.field private final synthetic b:Lcom/tencent/tmsecure/module/aresengine/FilterResult;


# direct methods
.method constructor <init>(Lbvl;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)V
    .locals 0

    iput-object p1, p0, Lbvm;->a:Lbvl;

    iput-object p2, p0, Lbvm;->b:Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbvm;->b:Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mData:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    iget-object v1, p0, Lbvm;->a:Lbvl;

    iget-object v1, v1, Lbvl;->g:Lbvk$a;

    invoke-static {v1}, Lbvk$a;->b(Lbvk$a;)Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;->remove(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z

    iget-object v1, p0, Lbvm;->a:Lbvl;

    iget-object v1, v1, Lbvl;->g:Lbvk$a;

    invoke-static {v1}, Lbvk$a;->c(Lbvk$a;)Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbvm;->a:Lbvl;

    iget-object v1, v1, Lbvl;->g:Lbvk$a;

    invoke-static {v1}, Lbvk$a;->c(Lbvk$a;)Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;->convert(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lbvm;->a:Lbvl;

    iget-object v1, v1, Lbvl;->g:Lbvk$a;

    invoke-static {v1}, Lbvk$a;->d(Lbvk$a;)Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    move-result-object v1

    iget-object v2, p0, Lbvm;->b:Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tmsecure/module/aresengine/ISmsDao;->insert(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)J

    return-void
.end method
