.class final Lbvp$b;
.super Lcom/tencent/tmsecure/module/aresengine/SystemCalllogFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbvp;
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

.field private d:Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/ICallLogDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/ICallLogDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

.field private g:Lcom/tencent/tmsecure/module/aresengine/IShortCallChecker;

.field private h:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

.field private i:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

.field private j:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

.field private k:Landroid/content/Context;

.field private l:Lbuh;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/SystemCalllogFilter;-><init>()V

    iput-object p1, p0, Lbvp$b;->k:Landroid/content/Context;

    invoke-direct {p0}, Lbvp$b;->b()Z

    move-result v0

    iput-boolean v0, p0, Lbvp$b;->m:Z

    new-instance v0, Lbuh;

    invoke-direct {v0}, Lbuh;-><init>()V

    iput-object v0, p0, Lbvp$b;->l:Lbuh;

    iget-object v0, p0, Lbvp$b;->l:Lbuh;

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lbuh;->a:[I

    iget-object v1, v0, Lbuh;->a:[I

    array-length v1, v1

    new-array v1, v1, [Lbuh$a;

    iput-object v1, v0, Lbuh;->b:[Lbuh$a;

    iget-object v0, p0, Lbvp$b;->l:Lbuh;

    const/4 v1, 0x1

    new-instance v2, Lbvt;

    invoke-direct {v2, p0}, Lbvt;-><init>(Lbvp$b;)V

    invoke-virtual {v0, v1, v2}, Lbuh;->a(ILbuh$a;)V

    iget-object v0, p0, Lbvp$b;->l:Lbuh;

    const/4 v1, 0x2

    new-instance v2, Lbvu;

    invoke-direct {v2, p0}, Lbvu;-><init>(Lbvp$b;)V

    invoke-virtual {v0, v1, v2}, Lbuh;->a(ILbuh$a;)V

    iget-object v0, p0, Lbvp$b;->l:Lbuh;

    const/4 v1, 0x4

    new-instance v2, Lbvv;

    invoke-direct {v2, p0}, Lbvv;-><init>(Lbvp$b;)V

    invoke-virtual {v0, v1, v2}, Lbuh;->a(ILbuh$a;)V

    iget-object v0, p0, Lbvp$b;->l:Lbuh;

    const/16 v1, 0x8

    new-instance v2, Lbvw;

    invoke-direct {v2, p0}, Lbvw;-><init>(Lbvp$b;)V

    invoke-virtual {v0, v1, v2}, Lbuh;->a(ILbuh$a;)V

    iget-object v0, p0, Lbvp$b;->l:Lbuh;

    const/16 v1, 0x10

    new-instance v2, Lbvx;

    invoke-direct {v2, p0}, Lbvx;-><init>(Lbvp$b;)V

    invoke-virtual {v0, v1, v2}, Lbuh;->a(ILbuh$a;)V

    iget-object v0, p0, Lbvp$b;->l:Lbuh;

    const/16 v1, 0x20

    new-instance v2, Lbvy;

    invoke-direct {v2, p0}, Lbvy;-><init>(Lbvp$b;)V

    invoke-virtual {v0, v1, v2}, Lbuh;->a(ILbuh$a;)V

    iget-object v0, p0, Lbvp$b;->l:Lbuh;

    const/16 v1, 0x40

    new-instance v2, Lbvz;

    invoke-direct {v2, p0}, Lbvz;-><init>(Lbvp$b;)V

    invoke-virtual {v0, v1, v2}, Lbuh;->a(ILbuh$a;)V

    iget-object v0, p0, Lbvp$b;->l:Lbuh;

    const/16 v1, 0x80

    new-instance v2, Lbwa;

    invoke-direct {v2, p0}, Lbwa;-><init>(Lbvp$b;)V

    invoke-virtual {v0, v1, v2}, Lbuh;->a(ILbuh$a;)V

    iget-object v0, p0, Lbvp$b;->l:Lbuh;

    const/16 v1, 0x100

    new-instance v2, Lbwb;

    invoke-direct {v2, p0}, Lbwb;-><init>(Lbvp$b;)V

    invoke-virtual {v0, v1, v2}, Lbuh;->a(ILbuh$a;)V

    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->getAresEngineFactor()Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getPrivateListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v1

    iput-object v1, p0, Lbvp$b;->c:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getWhiteListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v1

    iput-object v1, p0, Lbvp$b;->a:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getBlackListDao()Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v1

    iput-object v1, p0, Lbvp$b;->b:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getCallLogDao()Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    move-result-object v1

    iput-object v1, p0, Lbvp$b;->d:Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getPrivateCallLogDao()Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    move-result-object v1

    iput-object v1, p0, Lbvp$b;->e:Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getSysDao()Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    move-result-object v1

    iput-object v1, p0, Lbvp$b;->h:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getLastCallLogDao()Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    move-result-object v1

    iput-object v1, p0, Lbvp$b;->f:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getEntityConverter()Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    move-result-object v1

    iput-object v1, p0, Lbvp$b;->j:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;->getPhoneDeviceController()Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v0

    iput-object v0, p0, Lbvp$b;->i:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic a(Lbvp$b;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1

    iget-object v0, p0, Lbvp$b;->c:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-object v0
.end method

.method static synthetic a(Lbvp$b;Lbuh$a;Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;ZZ)V
    .locals 3

    new-instance v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/aresengine/FilterResult;-><init>()V

    iget-object v0, p1, Lbuh$a;->d:[Ljava/lang/Object;

    iput-object v0, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    iget-object v0, p1, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    iput-object v0, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mData:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    iget v0, p1, Lbuh$a;->e:I

    iput v0, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mFilterfiled:I

    iget v0, p1, Lbuh$a;->b:I

    iput v0, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mState:I

    iput-boolean p3, v1, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->isBlocked:Z

    iput-object v1, p1, Lbuh$a;->c:Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    iget-object v0, p1, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    if-eqz p4, :cond_0

    const/4 v2, 0x1

    iput v2, v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    :cond_0
    iget-object v2, p0, Lbvp$b;->h:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;->remove(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)Z

    iget-object v2, p0, Lbvp$b;->j:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbvp$b;->j:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    invoke-interface {v2, v0}, Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;->convert(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    move-result-object v0

    :cond_1
    invoke-interface {p2, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;->insert(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)J

    :cond_2
    return-void
.end method

.method static synthetic b(Lbvp$b;)Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;
    .locals 1

    iget-object v0, p0, Lbvp$b;->e:Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    return-object v0
.end method

.method private b()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lbvp$b;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string v2, "com.htc.launcher"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic c(Lbvp$b;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1

    iget-object v0, p0, Lbvp$b;->a:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-object v0
.end method

.method static synthetic d(Lbvp$b;)Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;
    .locals 1

    iget-object v0, p0, Lbvp$b;->d:Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    return-object v0
.end method

.method static synthetic e(Lbvp$b;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1

    iget-object v0, p0, Lbvp$b;->b:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-object v0
.end method

.method static synthetic f(Lbvp$b;)Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;
    .locals 1

    iget-object v0, p0, Lbvp$b;->h:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

    return-object v0
.end method

.method static synthetic g(Lbvp$b;)Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;
    .locals 1

    iget-object v0, p0, Lbvp$b;->f:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    return-object v0
.end method

.method static synthetic h(Lbvp$b;)Z
    .locals 1

    iget-boolean v0, p0, Lbvp$b;->m:Z

    return v0
.end method

.method static synthetic i(Lbvp$b;)Lcom/tencent/tmsecure/module/aresengine/IShortCallChecker;
    .locals 1

    iget-object v0, p0, Lbvp$b;->g:Lcom/tencent/tmsecure/module/aresengine/IShortCallChecker;

    return-object v0
.end method

.method static synthetic j(Lbvp$b;)Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;
    .locals 1

    iget-object v0, p0, Lbvp$b;->i:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    return-object v0
.end method


# virtual methods
.method public final defalutFilterConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;-><init>()V

    invoke-virtual {v0, v4, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    invoke-virtual {v0, v3, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x20

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x100

    invoke-virtual {v0, v1, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    return-object v0
.end method

.method protected final varargs synthetic onFiltered(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Lcom/tencent/tmsecure/module/aresengine/FilterResult;[Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0, p1, p2, v0}, Lcom/tencent/tmsecure/module/aresengine/SystemCalllogFilter;->onFiltered(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Lcom/tencent/tmsecure/module/aresengine/FilterResult;[Ljava/lang/Object;)V

    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbvp$b;->f:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    invoke-interface {v0, p1}, Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;->update(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V

    :cond_0
    return-void
.end method

.method protected final varargs synthetic onFiltering(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    .locals 2

    check-cast p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    iget-object v0, p0, Lbvp$b;->l:Lbuh;

    invoke-virtual {p0}, Lbvp$b;->getConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lbuh;->a(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Lcom/tencent/tmsecure/module/aresengine/FilterConfig;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    move-result-object v0

    return-object v0
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

    iput-object p1, p0, Lbvp$b;->b:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-void
.end method

.method public final setCalllogDao(Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/ICallLogDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbvp$b;->d:Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

    return-void
.end method

.method public final setEntityConvertor(Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;)V
    .locals 0

    iput-object p1, p0, Lbvp$b;->j:Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;

    return-void
.end method

.method public final setLastCallLogDao(Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;)V
    .locals 0

    iput-object p1, p0, Lbvp$b;->f:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    return-void
.end method

.method public final setPhoneDeviceController(Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;)V
    .locals 0

    iput-object p1, p0, Lbvp$b;->i:Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    return-void
.end method

.method public final setPrivateCalllogDao(Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/ICallLogDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbvp$b;->e:Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;

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

    iput-object p1, p0, Lbvp$b;->c:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-void
.end method

.method public final setShortCallChecker(Lcom/tencent/tmsecure/module/aresengine/IShortCallChecker;)V
    .locals 0

    iput-object p1, p0, Lbvp$b;->g:Lcom/tencent/tmsecure/module/aresengine/IShortCallChecker;

    return-void
.end method

.method public final setSysDao(Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;)V
    .locals 0

    iput-object p1, p0, Lbvp$b;->h:Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;

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

    iput-object p1, p0, Lbvp$b;->a:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-void
.end method
