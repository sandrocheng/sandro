.class final Lbvk$a;
.super Lcom/tencent/tmsecure/module/aresengine/OutgoingSmsFiter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbvk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

.field private c:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/ISmsDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lbuh;

.field private e:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/OutgoingSmsFiter;-><init>()V

    new-instance v0, Lbuh;

    invoke-direct {v0}, Lbuh;-><init>()V

    iput-object v0, p0, Lbvk$a;->d:Lbuh;

    iget-object v0, p0, Lbvk$a;->d:Lbuh;

    new-array v1, v3, [I

    const/4 v2, 0x0

    aput v3, v1, v2

    iput-object v1, v0, Lbuh;->a:[I

    iget-object v1, v0, Lbuh;->a:[I

    array-length v1, v1

    new-array v1, v1, [Lbuh$a;

    iput-object v1, v0, Lbuh;->b:[Lbuh$a;

    iget-object v0, p0, Lbvk$a;->d:Lbuh;

    new-instance v1, Lbvl;

    invoke-direct {v1, p0}, Lbvl;-><init>(Lbvk$a;)V

    invoke-virtual {v0, v3, v1}, Lbuh;->a(ILbuh$a;)V

    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->getAresEngineFactor()Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getEntityConverter()Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    move-result-object v1

    iput-object v1, p0, Lbvk$a;->e:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getPrivateListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v1

    iput-object v1, p0, Lbvk$a;->a:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getPrivateSmsDao()Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    move-result-object v1

    iput-object v1, p0, Lbvk$a;->c:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getSysDao()Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    move-result-object v0

    iput-object v0, p0, Lbvk$a;->b:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    return-void
.end method

.method static synthetic a(Lbvk$a;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1

    iget-object v0, p0, Lbvk$a;->a:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-object v0
.end method

.method static synthetic b(Lbvk$a;)Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;
    .locals 1

    iget-object v0, p0, Lbvk$a;->b:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    return-object v0
.end method

.method static synthetic c(Lbvk$a;)Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;
    .locals 1

    iget-object v0, p0, Lbvk$a;->e:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    return-object v0
.end method

.method static synthetic d(Lbvk$a;)Lcom/tencent/tmsecure/module/aresengine/ISmsDao;
    .locals 1

    iget-object v0, p0, Lbvk$a;->c:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    return-object v0
.end method


# virtual methods
.method public final defalutFilterConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;
    .locals 3

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    return-object v0
.end method

.method protected final varargs synthetic onFiltering(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    .locals 2

    check-cast p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    iget-object v0, p0, Lbvk$a;->d:Lbuh;

    invoke-virtual {p0}, Lbvk$a;->getConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lbuh;->a(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Lcom/tencent/tmsecure/module/aresengine/FilterConfig;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    move-result-object v0

    return-object v0
.end method

.method public final setEntityConvertor(Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;)V
    .locals 0

    iput-object p1, p0, Lbvk$a;->e:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    return-void
.end method

.method public final setPrivateListDao(Lcom/tencent/tmsecure/module/aresengine/IContactDao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbvk$a;->a:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-void
.end method

.method public final setPrivateSmsDao(Lcom/tencent/tmsecure/module/aresengine/ISmsDao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/ISmsDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbvk$a;->c:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    return-void
.end method

.method public final setSystDao(Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;)V
    .locals 0

    iput-object p1, p0, Lbvk$a;->b:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    return-void
.end method
