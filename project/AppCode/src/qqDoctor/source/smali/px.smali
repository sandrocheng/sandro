.class public Lpx;
.super Ljava/lang/Object;

# interfaces
.implements Ldq$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpx$a;
    }
.end annotation


# static fields
.field public static a:Landroid/widget/Toast;

.field private static r:Lpx;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lpx$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/content/Context;

.field private l:Lbgj;

.field private m:Lhm;

.field private n:LQQPIM/SoftList;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmc",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/os/Messenger;

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Z

.field private v:Ldq;

.field private w:Lho;

.field private x:Landroid/os/Handler;

.field private y:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lpx;->r:Lpx;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CameraDataManager"

    iput-object v0, p0, Lpx;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpx;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpx;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpx;->i:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpx;->j:Ljava/util/HashMap;

    new-instance v0, Lpz;

    invoke-direct {v0, p0}, Lpz;-><init>(Lpx;)V

    iput-object v0, p0, Lpx;->y:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpx;->q:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpx;->t:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpx;->o:Ljava/util/ArrayList;

    iput-object p1, p0, Lpx;->k:Landroid/content/Context;

    iget-object v0, p0, Lpx;->s:Landroid/os/Messenger;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lpx;->y:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lpx;->s:Landroid/os/Messenger;

    :cond_0
    sget-object v0, Lpx;->a:Landroid/widget/Toast;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lpx;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v0, Lpx;->a:Landroid/widget/Toast;

    :cond_1
    new-instance v0, Ldq;

    iget-object v1, p0, Lpx;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Ldq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lpx;->v:Ldq;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lpx;->w:Lho;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lpx;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lpx;->x:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lpx;)Lhm;
    .locals 1

    iget-object v0, p0, Lpx;->m:Lhm;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lpx;
    .locals 2

    sget-object v0, Lpx;->r:Lpx;

    if-nez v0, :cond_1

    const-class v1, Lpx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lpx;->r:Lpx;

    if-nez v0, :cond_0

    new-instance v0, Lpx;

    invoke-direct {v0, p0}, Lpx;-><init>(Landroid/content/Context;)V

    sput-object v0, Lpx;->r:Lpx;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lpx;->r:Lpx;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/io/File;)V
    .locals 6

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lpx;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v3}, Lpx;->a(Ljava/io/File;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lmc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmc",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lmc;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lmc;->b:Ljava/lang/Object;

    iget-object v1, p1, Lmc;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lmc;->b:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lpx;->k:Landroid/content/Context;

    iget-object v2, p0, Lpx;->s:Landroid/os/Messenger;

    invoke-static {v0, v1, v2}, Lfi;->a(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic a(Lpx;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lpx;->a(Ljava/io/File;)V

    return-void
.end method

.method static synthetic a(Lpx;Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lpx;->o:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lmc;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lmc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lpx;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lpx;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lpx;->a(Lmc;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v2, p0, Lpx;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lpx;Lmc;)V
    .locals 0

    invoke-direct {p0, p1}, Lpx;->a(Lmc;)V

    return-void
.end method

.method static synthetic a(Lpx;Z)Z
    .locals 0

    iput-boolean p1, p0, Lpx;->u:Z

    return p1
.end method

.method static synthetic b(Lpx;)Z
    .locals 1

    iget-boolean v0, p0, Lpx;->d:Z

    return v0
.end method

.method static synthetic b(Lpx;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "DCIM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpx;->m:Lhm;

    iget-object v1, v1, Lhm;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "movice_camera_dir"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lpx;->m:Lhm;

    iget-object v1, v1, Lhm;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "Pic_Camera_Dir"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic b(Lpx;Z)Z
    .locals 0

    iput-boolean p1, p0, Lpx;->d:Z

    return p1
.end method

.method static synthetic c(Lpx;)Z
    .locals 1

    iget-boolean v0, p0, Lpx;->c:Z

    return v0
.end method

.method static synthetic c(Lpx;Z)Z
    .locals 0

    iput-boolean p1, p0, Lpx;->e:Z

    return p1
.end method

.method static synthetic d(Lpx;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lpx;->i:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic e(Lpx;)Z
    .locals 1

    iget-boolean v0, p0, Lpx;->e:Z

    return v0
.end method

.method static synthetic f(Lpx;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lpx;->j:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic g(Lpx;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lpx;->o:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h(Lpx;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lpx;->t:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic i(Lpx;)Lbgj;
    .locals 1

    iget-object v0, p0, Lpx;->l:Lbgj;

    return-object v0
.end method

.method static synthetic j(Lpx;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lpx;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Lpx;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lpx;->x:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lpx;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpx;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-class v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    sget-object v1, LQQPIM/SoftListType;->CAMERA_SOFTWARE_LIST:LQQPIM/SoftListType;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/applist/AppListManager;->loadAppList(LQQPIM/SoftListType;)LQQPIM/SoftList;

    move-result-object v0

    iput-object v0, p0, Lpx;->n:LQQPIM/SoftList;

    new-instance v0, Lhm;

    iget-object v1, p0, Lpx;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Lhm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lpx;->m:Lhm;

    return-void
.end method

.method public final a(FFF)V
    .locals 1

    iget-object v0, p0, Lpx;->l:Lbgj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpx;->l:Lbgj;

    invoke-virtual {v0, p1, p2, p3}, Lbgj;->a(FFF)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 9

    const/4 v8, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lpx;->m:Lhm;

    iget-object v0, v0, Lhm;->a:Landroid/content/SharedPreferences;

    const-string v1, "Pic_Camera_Dir"

    const-string v4, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpx;->m:Lhm;

    iget-object v1, v1, Lhm;->a:Landroid/content/SharedPreferences;

    const-string v4, "movice_camera_dir"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lpx;->u:Z

    :cond_0
    iget-boolean v0, p0, Lpx;->u:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpx;->m:Lhm;

    iget-object v0, v0, Lhm;->a:Landroid/content/SharedPreferences;

    const-string v1, "need_show_box"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpx;->w:Lho;

    invoke-virtual {v0}, Lho;->w()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lpx;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lpx;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_3
    iput-object v4, p0, Lpx;->h:Ljava/lang/String;

    move v1, v2

    :goto_1
    iget-object v0, p0, Lpx;->n:LQQPIM/SoftList;

    iget-object v0, v0, LQQPIM/SoftList;->vctSofts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_15

    iget-object v0, p0, Lpx;->n:LQQPIM/SoftList;

    iget-object v0, v0, LQQPIM/SoftList;->vctSofts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SoftElementInfo;

    iget-object v0, v0, LQQPIM/SoftElementInfo;->pkgname:Ljava/lang/String;

    iget-object v5, p0, Lpx;->h:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    :goto_2
    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lpx;->c:Z

    if-nez v0, :cond_f

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lpx;->c:Z

    iget-boolean v0, p0, Lpx;->f:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lpx;->m:Lhm;

    iget-object v0, v0, Lhm;->a:Landroid/content/SharedPreferences;

    const-string v1, "Pic_Camera_Dir"

    const-string v4, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lpx;->m:Lhm;

    iget-object v0, v0, Lhm;->a:Landroid/content/SharedPreferences;

    const-string v1, "movice_camera_dir"

    const-string v5, ""

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_11

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz v5, :cond_11

    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "DCIM"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v8, :cond_9

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_6

    move v0, v2

    :goto_3
    array-length v6, v1

    if-ge v0, v6, :cond_6

    aget-object v6, v1, v0

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/."

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v8, :cond_4

    new-instance v7, Lpx$a;

    invoke-direct {v7, p0, v6}, Lpx$a;-><init>(Lpx;Ljava/lang/String;)V

    invoke-virtual {v7}, Lpx$a;->startWatching()V

    iget-object v6, p0, Lpx;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Lfi;->a()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_a

    move v1, v2

    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "/DCIM"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v8, :cond_8

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_a

    move v0, v2

    :goto_5
    array-length v6, v1

    if-ge v0, v6, :cond_a

    aget-object v6, v1, v0

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/."

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v8, :cond_7

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    new-instance v7, Lpx$a;

    invoke-direct {v7, p0, v6}, Lpx$a;-><init>(Lpx;Ljava/lang/String;)V

    invoke-virtual {v7}, Lpx$a;->startWatching()V

    iget-object v6, p0, Lpx;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_9
    new-instance v0, Lpx$a;

    invoke-direct {v0, p0, v4}, Lpx$a;-><init>(Lpx;Ljava/lang/String;)V

    invoke-virtual {v0}, Lpx$a;->startWatching()V

    iget-object v1, p0, Lpx;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lpx$a;

    invoke-direct {v0, p0, v5}, Lpx$a;-><init>(Lpx;Ljava/lang/String;)V

    invoke-virtual {v0}, Lpx$a;->startWatching()V

    iget-object v1, p0, Lpx;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v0, p0, Lpx;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_b
    iget-object v0, p0, Lpx;->v:Ldq;

    invoke-virtual {v0}, Ldq;->a()V

    iget-object v0, p0, Lpx;->v:Ldq;

    invoke-virtual {v0, p0}, Ldq;->a(Ldq$a;)V

    iput-boolean v3, p0, Lpx;->f:Z

    :cond_c
    iget-object v0, p0, Lpx;->l:Lbgj;

    if-nez v0, :cond_d

    new-instance v0, Lbgj;

    iget-object v1, p0, Lpx;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Lbgj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lpx;->l:Lbgj;

    :cond_d
    const-string v0, ""

    iget-object v1, p0, Lpx;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_e

    iget-object v0, p0, Lpx;->t:Ljava/util/ArrayList;

    iget-object v1, p0, Lpx;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_e
    iget-object v1, p0, Lpx;->l:Lbgj;

    iget-boolean v3, p0, Lpx;->p:Z

    invoke-virtual {v1, v3, v0}, Lbgj;->a(ZLjava/lang/String;)V

    iget-boolean v0, p0, Lpx;->p:Z

    if-eqz v0, :cond_f

    iput-boolean v2, p0, Lpx;->p:Z

    :cond_f
    :goto_6
    iget-boolean v0, p0, Lpx;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lzo;->a()Lzo;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lzo;->a(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lpx;->c:Z

    iget-object v0, p0, Lpx;->l:Lbgj;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lpx;->l:Lbgj;

    invoke-virtual {v0}, Lbgj;->a()V

    :cond_10
    iget-object v0, p0, Lpx;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lpx;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lpx;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    :cond_11
    move v1, v2

    :goto_7
    iget-object v0, p0, Lpx;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    iget-object v0, p0, Lpx;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "/."

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v8, :cond_12

    new-instance v4, Lpx$a;

    invoke-direct {v4, p0, v0}, Lpx$a;-><init>(Lpx;Ljava/lang/String;)V

    invoke-virtual {v4}, Lpx$a;->startWatching()V

    iget-object v0, p0, Lpx;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_13
    iget-boolean v0, p0, Lpx;->c:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lpx;->c()V

    iget-object v0, p0, Lpx;->l:Lbgj;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lpx;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iput-boolean v3, p0, Lpx;->p:Z

    :goto_8
    iput-boolean v2, p0, Lpx;->c:Z

    iget-object v0, p0, Lpx;->l:Lbgj;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lpx;->l:Lbgj;

    invoke-virtual {v0}, Lbgj;->a()V

    goto :goto_6

    :cond_14
    iget-object v0, p0, Lpx;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lpx;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lpx;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_8

    :cond_15
    move v0, v2

    goto/16 :goto_2
.end method

.method public final b()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lpx;->m:Lhm;

    iget-object v0, v0, Lhm;->a:Landroid/content/SharedPreferences;

    const-string v1, "Pic_Camera_Dir"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpx;->m:Lhm;

    iget-object v1, v1, Lhm;->a:Landroid/content/SharedPreferences;

    const-string v2, "movice_camera_dir"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lpx;->u:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lpx;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iput-boolean v4, p0, Lpx;->u:Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lpy;

    invoke-direct {v1, p0}, Lpy;-><init>(Lpx;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lpx;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lpx;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpx$a;

    invoke-virtual {v0}, Lpx$a;->stopWatching()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lpx;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lpx;->v:Ldq;

    invoke-virtual {v0, p0}, Ldq;->b(Ldq$a;)V

    iget-object v0, p0, Lpx;->v:Ldq;

    invoke-virtual {v0}, Ldq;->b()V

    iput-boolean v2, p0, Lpx;->f:Z

    return-void
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lpx;->t:Ljava/util/ArrayList;

    return-object v0
.end method
