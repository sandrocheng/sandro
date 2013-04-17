.class final Lbuo$b;
.super Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbuo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
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

.field private b:Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

.field private e:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/ISmsDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/ISmsDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;

.field private h:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

.field private i:Lcom/tencent/tmsecure/module/aresengine/IntelligentSmsHandler;

.field private j:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

.field private k:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

.field private l:Lcom/tencent/tmsecure/module/aresengine/ISpecialSmsChecker;

.field private m:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

.field private n:Lbuh;


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilter;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->getIntelligentSmsChecker()Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

    move-result-object v0

    iput-object v0, p0, Lbuo$b;->m:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

    new-instance v0, Lbuh;

    invoke-direct {v0}, Lbuh;-><init>()V

    iput-object v0, p0, Lbuo$b;->n:Lbuh;

    iget-object v0, p0, Lbuo$b;->n:Lbuh;

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lbuh;->a:[I

    iget-object v1, v0, Lbuh;->a:[I

    array-length v1, v1

    new-array v1, v1, [Lbuh$a;

    iput-object v1, v0, Lbuh;->b:[Lbuh$a;

    iget-object v0, p0, Lbuo$b;->n:Lbuh;

    const/16 v1, 0x100

    new-instance v2, Lbuq;

    invoke-direct {v2, p0}, Lbuq;-><init>(Lbuo$b;)V

    invoke-virtual {v0, v1, v2}, Lbuh;->a(ILbuh$a;)V

    iget-object v0, p0, Lbuo$b;->n:Lbuh;

    const/4 v1, 0x1

    new-instance v2, Lbuu;

    invoke-direct {v2, p0}, Lbuu;-><init>(Lbuo$b;)V

    invoke-virtual {v0, v1, v2}, Lbuh;->a(ILbuh$a;)V

    iget-object v0, p0, Lbuo$b;->n:Lbuh;

    const/4 v1, 0x2

    new-instance v2, Lbuv;

    invoke-direct {v2, p0}, Lbuv;-><init>(Lbuo$b;)V

    invoke-virtual {v0, v1, v2}, Lbuh;->a(ILbuh$a;)V

    iget-object v0, p0, Lbuo$b;->n:Lbuh;

    const/4 v1, 0x4

    new-instance v2, Lbuw;

    invoke-direct {v2, p0}, Lbuw;-><init>(Lbuo$b;)V

    invoke-virtual {v0, v1, v2}, Lbuh;->a(ILbuh$a;)V

    iget-object v0, p0, Lbuo$b;->n:Lbuh;

    const/16 v1, 0x8

    new-instance v2, Lbux;

    invoke-direct {v2, p0}, Lbux;-><init>(Lbuo$b;)V

    invoke-virtual {v0, v1, v2}, Lbuh;->a(ILbuh$a;)V

    iget-object v0, p0, Lbuo$b;->n:Lbuh;

    const/16 v1, 0x10

    new-instance v2, Lbuy;

    invoke-direct {v2, p0}, Lbuy;-><init>(Lbuo$b;)V

    invoke-virtual {v0, v1, v2}, Lbuh;->a(ILbuh$a;)V

    iget-object v0, p0, Lbuo$b;->n:Lbuh;

    const/16 v1, 0x20

    new-instance v2, Lbuz;

    invoke-direct {v2, p0}, Lbuz;-><init>(Lbuo$b;)V

    invoke-virtual {v0, v1, v2}, Lbuh;->a(ILbuh$a;)V

    iget-object v0, p0, Lbuo$b;->n:Lbuh;

    const/16 v1, 0x40

    new-instance v2, Lbva;

    invoke-direct {v2, p0}, Lbva;-><init>(Lbuo$b;)V

    invoke-virtual {v0, v1, v2}, Lbuh;->a(ILbuh$a;)V

    iget-object v0, p0, Lbuo$b;->n:Lbuh;

    const/16 v1, 0x80

    new-instance v2, Lbvb;

    invoke-direct {v2, p0}, Lbvb;-><init>(Lbuo$b;)V

    invoke-virtual {v0, v1, v2}, Lbuh;->a(ILbuh$a;)V

    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->getAresEngineFactor()Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getPhoneDeviceController()Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v1

    iput-object v1, p0, Lbuo$b;->k:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getPrivateListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v1

    iput-object v1, p0, Lbuo$b;->c:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getWhiteListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v1

    iput-object v1, p0, Lbuo$b;->a:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getBlackListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v1

    iput-object v1, p0, Lbuo$b;->b:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getKeyWordDao()Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;

    move-result-object v1

    iput-object v1, p0, Lbuo$b;->g:Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getSysDao()Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    move-result-object v1

    iput-object v1, p0, Lbuo$b;->d:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getLastCallLogDao()Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    move-result-object v1

    iput-object v1, p0, Lbuo$b;->h:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getSmsDao()Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    move-result-object v1

    iput-object v1, p0, Lbuo$b;->e:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getPrivateSmsDao()Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    move-result-object v1

    iput-object v1, p0, Lbuo$b;->f:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getEntityConverter()Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    move-result-object v0

    iput-object v0, p0, Lbuo$b;->j:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x1t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic a(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/ISpecialSmsChecker;
    .locals 1

    iget-object v0, p0, Lbuo$b;->l:Lcom/tencent/tmsecure/module/aresengine/ISpecialSmsChecker;

    return-object v0
.end method

.method static synthetic a(Lbuo$b;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tmsecure/module/aresengine/ISmsDao;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lbur;

    invoke-direct {v0, p0, p2, p1, p3}, Lbur;-><init>(Lbuo$b;Lcom/tencent/tmsecure/module/aresengine/ISmsDao;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)V

    return-object v0
.end method

.method static synthetic a(Lbuo$b;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Ljava/lang/Thread;
    .locals 1

    new-instance v0, Lbus;

    invoke-direct {v0, p1}, Lbus;-><init>(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)V

    return-object v0
.end method

.method static synthetic a([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0}, Lbuo$b;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lbuo$b;Lbuh$a;)V
    .locals 7

    const/4 v6, 0x1

    new-instance v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    invoke-direct {v2}, Lcom/tencent/tmsecure/module/aresengine/FilterResult;-><init>()V

    iget-object v0, p1, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    iget-object v1, p1, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    iput-object v1, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mData:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    iget v1, p1, Lbuh$a;->e:I

    iput v1, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mFilterfiled:I

    iget v1, p1, Lbuh$a;->b:I

    iput v1, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mState:I

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lbuh$a;->d:[Ljava/lang/Object;

    invoke-static {v4}, Lbuo$b;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    aput-object v4, v1, v3

    iput-object v1, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    iget v1, p1, Lbuh$a;->b:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lbuo$b;->k:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    iget-object v3, p1, Lbuh$a;->d:[Ljava/lang/Object;

    invoke-interface {v1, v0, v3}, Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;->unBlockSms(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iput-object v2, p1, Lbuh$a;->c:Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    return-void

    :cond_1
    iget v1, p1, Lbuh$a;->b:I

    if-ne v1, v6, :cond_0

    iput-boolean v6, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->isBlocked:Z

    iget-object v1, p0, Lbuo$b;->k:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    iget-object v3, p1, Lbuh$a;->d:[Ljava/lang/Object;

    invoke-interface {v1, v3}, Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;->blockSms([Ljava/lang/Object;)V

    iget-object v1, p0, Lbuo$b;->e:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    if-eqz v1, :cond_2

    iget-object v3, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    iget-object v1, p1, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    check-cast v1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    iget-object v4, p0, Lbuo$b;->e:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    new-instance v5, Lbur;

    invoke-direct {v5, p0, v4, v1, v2}, Lbur;-><init>(Lbuo$b;Lcom/tencent/tmsecure/module/aresengine/ISmsDao;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v1, v0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    if-ne v1, v6, :cond_0

    iget-object v1, v2, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    new-instance v3, Lbus;

    invoke-direct {v3, v0}, Lbus;-><init>(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic b(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;
    .locals 1

    iget-object v0, p0, Lbuo$b;->k:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    return-object v0
.end method

.method private static varargs b([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilterResultInformation;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    aget-object v0, p0, v2

    check-cast v0, Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/ISmsDao;
    .locals 1

    iget-object v0, p0, Lbuo$b;->e:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    return-object v0
.end method

.method static synthetic d(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1

    iget-object v0, p0, Lbuo$b;->c:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-object v0
.end method

.method static synthetic e(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/ISmsDao;
    .locals 1

    iget-object v0, p0, Lbuo$b;->f:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    return-object v0
.end method

.method static synthetic f(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1

    iget-object v0, p0, Lbuo$b;->a:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-object v0
.end method

.method static synthetic g(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1

    iget-object v0, p0, Lbuo$b;->b:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-object v0
.end method

.method static synthetic h(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;
    .locals 1

    iget-object v0, p0, Lbuo$b;->d:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    return-object v0
.end method

.method static synthetic i(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;
    .locals 1

    iget-object v0, p0, Lbuo$b;->h:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    return-object v0
.end method

.method static synthetic j(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;
    .locals 1

    iget-object v0, p0, Lbuo$b;->g:Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;

    return-object v0
.end method

.method static synthetic k(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;
    .locals 1

    iget-object v0, p0, Lbuo$b;->m:Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

    return-object v0
.end method

.method static synthetic l(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/IntelligentSmsHandler;
    .locals 1

    iget-object v0, p0, Lbuo$b;->i:Lcom/tencent/tmsecure/module/aresengine/IntelligentSmsHandler;

    return-object v0
.end method

.method static synthetic m(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;
    .locals 1

    iget-object v0, p0, Lbuo$b;->j:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    return-object v0
.end method


# virtual methods
.method public final defalutFilterConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;-><init>()V

    const/16 v1, 0x100

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    invoke-virtual {v0, v3, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    invoke-virtual {v0, v5, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    return-object v0
.end method

.method protected final varargs synthetic onFiltering(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    check-cast p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    iget-object v0, p0, Lbuo$b;->n:Lbuh;

    invoke-virtual {p0}, Lbuo$b;->getConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lbuh;->a(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Lcom/tencent/tmsecure/module/aresengine/FilterConfig;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/aresengine/FilterResult;-><init>()V

    iput-object p1, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mData:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    const/4 v0, -0x1

    iput v0, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mFilterfiled:I

    iput v4, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mState:I

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p2, :cond_0

    array-length v2, p2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    if-eq v0, v5, :cond_0

    new-instance v2, Lbut;

    invoke-direct {v2, p0, p1, p2}, Lbut;-><init>(Lbuo$b;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;[Ljava/lang/Object;)V

    if-nez v0, :cond_2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_0
    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {p2}, Lbuo$b;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v4

    iput-object v0, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    move-object v0, v1

    :cond_1
    return-object v0

    :cond_2
    iget-object v0, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final setBlacklistDao(Lcom/tencent/tmsecure/module/aresengine/IContactDao;)V
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

    iput-object p1, p0, Lbuo$b;->b:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-void
.end method

.method public final setEntityConvertor(Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;)V
    .locals 0

    iput-object p1, p0, Lbuo$b;->j:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    return-void
.end method

.method public final setIntelligentSmsHandler(Lcom/tencent/tmsecure/module/aresengine/IntelligentSmsHandler;)V
    .locals 0

    iput-object p1, p0, Lbuo$b;->i:Lcom/tencent/tmsecure/module/aresengine/IntelligentSmsHandler;

    return-void
.end method

.method public final setKeywordDao(Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;)V
    .locals 0

    iput-object p1, p0, Lbuo$b;->g:Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;

    return-void
.end method

.method public final setLastCallLogDao(Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;)V
    .locals 0

    iput-object p1, p0, Lbuo$b;->h:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    return-void
.end method

.method public final setPhoneDeviceController(Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;)V
    .locals 0

    iput-object p1, p0, Lbuo$b;->k:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

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

    iput-object p1, p0, Lbuo$b;->f:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    return-void
.end method

.method public final setPrivatelistDao(Lcom/tencent/tmsecure/module/aresengine/IContactDao;)V
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

    iput-object p1, p0, Lbuo$b;->c:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-void
.end method

.method public final setSmsDao(Lcom/tencent/tmsecure/module/aresengine/ISmsDao;)V
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

    iput-object p1, p0, Lbuo$b;->e:Lcom/tencent/tmsecure/module/aresengine/ISmsDao;

    return-void
.end method

.method public final setSpecialSmsChecker(Lcom/tencent/tmsecure/module/aresengine/ISpecialSmsChecker;)V
    .locals 0

    iput-object p1, p0, Lbuo$b;->l:Lcom/tencent/tmsecure/module/aresengine/ISpecialSmsChecker;

    return-void
.end method

.method public final setSysDao(Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;)V
    .locals 0

    iput-object p1, p0, Lbuo$b;->d:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    return-void
.end method

.method public final setWhitelistDao(Lcom/tencent/tmsecure/module/aresengine/IContactDao;)V
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

    iput-object p1, p0, Lbuo$b;->a:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-void
.end method
