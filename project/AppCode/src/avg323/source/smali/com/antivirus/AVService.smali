.class public Lcom/antivirus/AVService;
.super Lcom/avg/toolkit/f;


# instance fields
.field public a:Lcom/antivirus/core/b;

.field public b:Lcom/avg/toolkit/e/e;

.field public c:Lcom/antivirus/core/d/a/a;

.field private j:Lcom/avg/toolkit/RecurringTasks/b;

.field private k:Lcom/avg/widget/g;

.field private l:Lcom/antivirus/g;

.field private final m:Landroid/os/IBinder;

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/avg/toolkit/f;-><init>()V

    new-instance v0, Lcom/antivirus/a;

    invoke-direct {v0, p0}, Lcom/antivirus/a;-><init>(Lcom/antivirus/AVService;)V

    iput-object v0, p0, Lcom/antivirus/AVService;->m:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/antivirus/AVService;->n:Z

    return-void
.end method

.method static synthetic a(Lcom/antivirus/AVService;)Lcom/antivirus/g;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/AVService;->l:Lcom/antivirus/g;

    return-object v0
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v0, "__SAH"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "__SAH"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/antivirus/AVService;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/AVService;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/toolkit/e;

    invoke-interface {v0, v2}, Lcom/avg/toolkit/e;->b(Lcom/avg/toolkit/e/a;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d()Ljava/util/ArrayList;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-class v0, Lcom/antivirus/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "secdb_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_1
    const-class v3, Lcom/antivirus/f;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_2
    return-object v2
.end method


# virtual methods
.method protected a()V
    .locals 6

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/antivirus/AVService;->g:Landroid/util/SparseArray;

    new-instance v0, Lcom/avg/toolkit/UID/a;

    invoke-direct {v0, p0}, Lcom/avg/toolkit/UID/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/antivirus/AVService;->i:Lcom/avg/toolkit/UID/a;

    iget-object v0, p0, Lcom/antivirus/AVService;->i:Lcom/avg/toolkit/UID/a;

    invoke-virtual {v0}, Lcom/avg/toolkit/UID/a;->c()V

    iget-object v0, p0, Lcom/antivirus/AVService;->i:Lcom/avg/toolkit/UID/a;

    invoke-virtual {p0, v0}, Lcom/antivirus/AVService;->a(Lcom/avg/toolkit/e;)V

    new-instance v0, Lcom/avg/toolkit/e/e;

    invoke-virtual {p0}, Lcom/antivirus/AVService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05000a

    invoke-static {v1, v2}, Lcom/avg/toolkit/a;->a(Landroid/content/Context;I)Ljava/util/concurrent/Callable;

    move-result-object v1

    const v2, 0x7f05000b

    invoke-static {p0, v2}, Lcom/avg/toolkit/a;->a(Landroid/content/Context;I)Ljava/util/concurrent/Callable;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/avg/toolkit/e/e;-><init>(Landroid/content/Context;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/antivirus/AVService;->b:Lcom/avg/toolkit/e/e;

    iget-object v0, p0, Lcom/antivirus/AVService;->b:Lcom/avg/toolkit/e/e;

    invoke-virtual {p0, v0}, Lcom/antivirus/AVService;->a(Lcom/avg/toolkit/e;)V

    iget-object v0, p0, Lcom/antivirus/AVService;->b:Lcom/avg/toolkit/e/e;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/e;->c()Z

    iget-object v0, p0, Lcom/antivirus/AVService;->b:Lcom/avg/toolkit/e/e;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/e;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/antivirus/AVService;->d:Z

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v0

    new-instance v1, Lcom/antivirus/core/b;

    invoke-direct {v1, p0}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/antivirus/AVService;->a:Lcom/antivirus/core/b;

    iget-object v1, p0, Lcom/antivirus/AVService;->a:Lcom/antivirus/core/b;

    invoke-virtual {v1, p0}, Lcom/antivirus/core/b;->a(Landroid/content/Context;)V

    new-instance v1, Lcom/antivirus/core/d/a/a;

    iget-object v2, p0, Lcom/antivirus/AVService;->i:Lcom/avg/toolkit/UID/a;

    invoke-direct {v1, p0, v0, v2}, Lcom/antivirus/core/d/a/a;-><init>(Landroid/content/Context;Lcom/avg/toolkit/e/a;Lcom/avg/toolkit/UID/a;)V

    iput-object v1, p0, Lcom/antivirus/AVService;->c:Lcom/antivirus/core/d/a/a;

    iget-object v1, p0, Lcom/antivirus/AVService;->c:Lcom/antivirus/core/d/a/a;

    invoke-virtual {p0, v1}, Lcom/antivirus/AVService;->a(Lcom/avg/toolkit/e;)V

    new-instance v1, Lcom/antivirus/b/a;

    iget-object v2, p0, Lcom/antivirus/AVService;->i:Lcom/avg/toolkit/UID/a;

    invoke-direct {v1, p0, v0, v2}, Lcom/antivirus/b/a;-><init>(Landroid/content/Context;Lcom/avg/toolkit/e/a;Lcom/avg/toolkit/UID/a;)V

    invoke-virtual {p0, v1}, Lcom/antivirus/AVService;->a(Lcom/avg/toolkit/e;)V

    new-instance v0, Lcom/antivirus/d/a;

    invoke-direct {v0, p0}, Lcom/antivirus/d/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/antivirus/AVService;->a(Lcom/avg/toolkit/e;)V

    new-instance v0, Lcom/antivirus/core/a/a;

    invoke-direct {v0}, Lcom/antivirus/core/a/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/antivirus/AVService;->a(Lcom/avg/toolkit/e;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AVService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/AVService;->f:Landroid/os/Looper;

    new-instance v0, Lcom/antivirus/b;

    iget-object v1, p0, Lcom/antivirus/AVService;->f:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/antivirus/b;-><init>(Lcom/antivirus/AVService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/antivirus/AVService;->e:Landroid/os/Handler;

    new-instance v1, Lcom/antivirus/widget/a;

    iget-object v2, p0, Lcom/antivirus/AVService;->e:Landroid/os/Handler;

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v3

    invoke-static {}, Lcom/antivirus/c;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, p0, v2, v3, v0}, Lcom/antivirus/widget/a;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/avg/toolkit/e/a;Z)V

    iput-object v1, p0, Lcom/antivirus/AVService;->k:Lcom/avg/widget/g;

    iget-object v0, p0, Lcom/antivirus/AVService;->k:Lcom/avg/widget/g;

    invoke-virtual {p0, v0}, Lcom/antivirus/AVService;->a(Lcom/avg/toolkit/e;)V

    new-instance v0, Lcom/antivirus/g;

    invoke-virtual {p0}, Lcom/antivirus/AVService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/AVService;->c:Lcom/antivirus/core/d/a/a;

    iget-object v2, v2, Lcom/antivirus/core/d/a/a;->b:Lcom/avg/toolkit/b/a;

    iget-object v3, p0, Lcom/antivirus/AVService;->a:Lcom/antivirus/core/b;

    invoke-virtual {p0}, Lcom/antivirus/AVService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0}, Lcom/antivirus/AVService;->d()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/avg/toolkit/a;->a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/antivirus/AVService;->k:Lcom/avg/widget/g;

    invoke-direct/range {v0 .. v5}, Lcom/antivirus/g;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/antivirus/core/b;Ljava/util/ArrayList;Lcom/avg/widget/g;)V

    iput-object v0, p0, Lcom/antivirus/AVService;->l:Lcom/antivirus/g;

    iget-object v0, p0, Lcom/antivirus/AVService;->l:Lcom/antivirus/g;

    invoke-virtual {p0, v0}, Lcom/antivirus/AVService;->a(Lcom/avg/toolkit/e;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/avg/toolkit/e/a;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    iput-boolean v5, p0, Lcom/antivirus/AVService;->d:Z

    move v1, v6

    :goto_0
    iget-object v0, p0, Lcom/antivirus/AVService;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/AVService;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/toolkit/e;

    invoke-interface {v0, p1}, Lcom/avg/toolkit/e;->a(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/avg/toolkit/RecurringTasks/b;

    invoke-virtual {p0}, Lcom/antivirus/AVService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SVCDT"

    const-wide/32 v3, 0x5265c00

    const/16 v7, 0x3e8

    move v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/avg/toolkit/RecurringTasks/b;-><init>(Landroid/content/Context;Ljava/lang/String;JZZIZ)V

    iput-object v0, p0, Lcom/antivirus/AVService;->j:Lcom/avg/toolkit/RecurringTasks/b;

    return-void
.end method

.method protected a_()V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/antivirus/AVService;->n:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/antivirus/AVService;->n:Z

    new-instance v0, Lcom/antivirus/e/b;

    iget-object v1, p0, Lcom/antivirus/AVService;->e:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/antivirus/e/b;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {p0, v0}, Lcom/antivirus/AVService;->a(Lcom/avg/toolkit/e;)V

    new-instance v0, Lcom/antivirus/antitheft/a;

    iget-object v1, p0, Lcom/antivirus/AVService;->a:Lcom/antivirus/core/b;

    iget-object v2, p0, Lcom/antivirus/AVService;->i:Lcom/avg/toolkit/UID/a;

    invoke-direct {v0, p0, v1, v2}, Lcom/antivirus/antitheft/a;-><init>(Landroid/content/Context;Lcom/antivirus/core/b;Lcom/avg/toolkit/UID/a;)V

    invoke-virtual {p0, v0}, Lcom/antivirus/AVService;->a(Lcom/avg/toolkit/e;)V

    new-instance v0, Lcom/antivirus/errors/a;

    invoke-direct {v0, p0}, Lcom/antivirus/errors/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/antivirus/AVService;->a(Lcom/avg/toolkit/e;)V

    const v0, 0x7f050001

    invoke-static {p0, v0}, Lcom/avg/toolkit/a;->a(Landroid/content/Context;I)Ljava/util/concurrent/Callable;

    move-result-object v0

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/avg/toolkit/c/a;

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/avg/toolkit/c/a;-><init>(Landroid/content/Context;Lcom/avg/toolkit/e/a;Ljava/util/Properties;)V

    invoke-virtual {p0, v0}, Lcom/antivirus/AVService;->a(Lcom/avg/toolkit/e;)V

    new-instance v0, Lcom/avg/toolkit/a/a;

    invoke-virtual {p0}, Lcom/antivirus/AVService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v3

    iget-object v4, p0, Lcom/antivirus/AVService;->i:Lcom/avg/toolkit/UID/a;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/avg/toolkit/a/a;-><init>(Landroid/content/Context;Lcom/avg/toolkit/e/a;Ljava/util/Properties;Lcom/avg/toolkit/UID/a;)V

    invoke-virtual {p0, v0}, Lcom/antivirus/AVService;->a(Lcom/avg/toolkit/e;)V

    new-instance v0, Lcom/antivirus/applocker/f;

    invoke-direct {v0, p0}, Lcom/antivirus/applocker/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/antivirus/AVService;->a(Lcom/avg/toolkit/e;)V

    invoke-virtual {p0}, Lcom/antivirus/AVService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05000c

    invoke-static {v0, v1}, Lcom/avg/toolkit/a;->a(Landroid/content/Context;I)Ljava/util/concurrent/Callable;

    move-result-object v2

    new-instance v0, Lcom/antivirus/core/g/e;

    const-class v3, Lcom/antivirus/ui/urlFilter/UrlWarningActivity;

    iget-object v4, p0, Lcom/antivirus/AVService;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/antivirus/AVService;->a:Lcom/antivirus/core/b;

    invoke-virtual {v1}, Lcom/antivirus/core/b;->v()Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/antivirus/core/g/e;-><init>(Landroid/content/Context;Ljava/util/concurrent/Callable;Ljava/lang/Class;Landroid/os/Handler;Z)V

    invoke-virtual {p0, v0}, Lcom/antivirus/AVService;->a(Lcom/avg/toolkit/e;)V

    new-instance v0, Lcom/antivirus/callmessagefilter/callblocker/a;

    invoke-direct {v0, p0}, Lcom/antivirus/callmessagefilter/callblocker/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/antivirus/AVService;->a(Lcom/avg/toolkit/e;)V

    new-instance v0, Lcom/antivirus/apploader/d;

    invoke-direct {v0, p0}, Lcom/antivirus/apploader/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/antivirus/AVService;->a(Lcom/avg/toolkit/e;)V

    new-instance v0, Lcom/antivirus/ui/help/f;

    invoke-direct {v0}, Lcom/antivirus/ui/help/f;-><init>()V

    invoke-virtual {p0, v0}, Lcom/antivirus/AVService;->a(Lcom/avg/toolkit/e;)V

    invoke-static {p0}, Lcom/avg/toolkit/d/a;->a(Landroid/app/Service;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v6

    :goto_1
    iget-object v0, p0, Lcom/antivirus/AVService;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/AVService;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/toolkit/e;

    invoke-interface {v0, v2}, Lcom/avg/toolkit/e;->a(Ljava/util/List;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lcom/antivirus/AVService;->c:Lcom/antivirus/core/d/a/a;

    invoke-virtual {v0, v2}, Lcom/antivirus/core/d/a/a;->b(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/antivirus/AVService;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v6}, Lcom/antivirus/AVService;->a(Z)V

    goto/16 :goto_0
.end method

.method public a_(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/antivirus/AVService;->j:Lcom/avg/toolkit/RecurringTasks/b;

    invoke-virtual {p0}, Lcom/antivirus/AVService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/avg/toolkit/RecurringTasks/b;->a(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/AVService;->b:Lcom/avg/toolkit/e/e;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/e;->c()Z

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/antivirus/AVService;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/AVService;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/toolkit/e;

    invoke-interface {v0, v2}, Lcom/avg/toolkit/e;->a(Lcom/avg/toolkit/e/a;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/antivirus/AVService;->j:Lcom/avg/toolkit/RecurringTasks/b;

    invoke-virtual {v0, p0}, Lcom/avg/toolkit/RecurringTasks/b;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "__SAC2"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/antivirus/AVService;->a_()V

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/antivirus/AVService;->a(Z)V

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcom/antivirus/AVService;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/antivirus/AVService;->a(Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/antivirus/AVService;->c(Landroid/os/Bundle;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b(Lcom/avg/toolkit/e/a;)V
    .locals 0

    return-void
.end method

.method c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/AVService;->d:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const/16 v0, 0x3e8

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/antivirus/AVService;->m:Landroid/os/IBinder;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/AVService;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Lcom/avg/toolkit/f;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/antivirus/AVService;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/antivirus/AVService;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
