.class final Lbvl;
.super Lbuh$a;


# instance fields
.field final synthetic g:Lbvk$a;


# direct methods
.method constructor <init>(Lbvk$a;)V
    .locals 0

    iput-object p1, p0, Lbvl;->g:Lbvk$a;

    invoke-direct {p0}, Lbuh$a;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lbuh$a;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lbvl;->g:Lbvk$a;

    invoke-static {v1}, Lbvk$a;->a(Lbvk$a;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v1

    iget-object v2, p0, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/tencent/tmsecure/module/aresengine/IContactDao;->contains(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()V
    .locals 3

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/FilterResult;-><init>()V

    iget v1, p0, Lbuh$a;->e:I

    iput v1, v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mFilterfiled:I

    iget v1, p0, Lbuh$a;->b:I

    iput v1, v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mState:I

    iget-object v1, p0, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    iput-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mData:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    iget-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    new-instance v2, Lbvm;

    invoke-direct {v2, p0, v0}, Lbvm;-><init>(Lbvl;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lbuh$a;->c:Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    return-void
.end method
