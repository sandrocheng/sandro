.class public final Lvk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvk$a;,
        Lvk$b;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final b:Lhq;

.field final c:Lhq;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ldv;

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field i:Landroid/os/Handler;

.field private final j:Lhq;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llf;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Lzs;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ldv;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b051d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvk;->d:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b051e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvk;->e:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b051f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvk;->f:Ljava/lang/String;

    iput-object v2, p0, Lvk;->g:Ldv;

    iput-object v2, p0, Lvk;->k:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvk;->h:Ljava/util/List;

    iput-object p1, p0, Lvk;->a:Landroid/content/Context;

    iput-object p2, p0, Lvk;->g:Ldv;

    new-instance v0, Lhq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lhq;-><init>(I)V

    iput-object v0, p0, Lvk;->b:Lhq;

    new-instance v0, Lhq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhq;-><init>(I)V

    iput-object v0, p0, Lvk;->c:Lhq;

    new-instance v0, Lhq;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lhq;-><init>(I)V

    iput-object v0, p0, Lvk;->j:Lhq;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lvk;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lvk;->i:Landroid/os/Handler;

    new-instance v0, Lzs;

    iget-object v1, p0, Lvk;->a:Landroid/content/Context;

    invoke-direct {v0}, Lzs;-><init>()V

    iput-object v0, p0, Lvk;->m:Lzs;

    return-void
.end method

.method static synthetic a(Lvk;Llf;)Lhq;
    .locals 2

    const/4 v0, 0x0

    iget v1, p1, Llf;->b:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lvk;->c:Lhq;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lvk;->b:Lhq;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lvk;->j:Lhq;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lvk;->h:Ljava/util/List;

    iget-object v1, p0, Lvk;->i:Landroid/os/Handler;

    new-instance v2, Lwb;

    invoke-direct {v2, p0, v0}, Lwb;-><init>(Lvk;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvk;->h:Ljava/util/List;

    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lvk;->h:Ljava/util/List;

    iget-object v1, p0, Lvk;->i:Landroid/os/Handler;

    new-instance v2, Lvm;

    invoke-direct {v2, p0, v0}, Lvm;-><init>(Lvk;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lvk;Llf;Z)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object v0, p1, Llf;->a:Ljava/lang/Object;

    check-cast v0, Lvk$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lvk;->m:Lzs;

    iget-object v2, v0, Lvk$a;->a:Lmk;

    iget-boolean v3, v0, Lvk$a;->b:Z

    iget v0, v0, Lvk$a;->c:I

    invoke-virtual {v1, v2, v3, v0}, Lzs;->a(Lmk;ZI)V

    :cond_0
    iget-object v0, p0, Lvk;->k:Ljava/util/List;

    if-nez v0, :cond_1

    iget v0, p1, Llf;->b:I

    invoke-direct {p0, v0}, Lvk;->a(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lvk;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lvk;->k:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    iget v1, p0, Lvk;->l:I

    invoke-virtual {p0, v0, v1}, Lvk;->a(Llf;I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lvk;->k:Ljava/util/List;

    iget v0, p1, Llf;->b:I

    invoke-direct {p0, v0}, Lvk;->a(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Llf;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lvk;->k:Ljava/util/List;

    iput p2, p0, Lvk;->l:I

    iget-object v0, p0, Lvk;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lvk;->k:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    invoke-virtual {p0, v0, p2}, Lvk;->a(Llf;I)V

    :cond_0
    return-void
.end method

.method public final a(Llf;I)V
    .locals 3

    iput p2, p1, Llf;->b:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p1, Llf;->a:Ljava/lang/Object;

    new-instance v0, Lvw;

    invoke-direct {v0, p0, p1}, Lvw;-><init>(Lvk;Llf;)V

    invoke-interface {v0}, Lvk$b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lvp;

    invoke-direct {v0, p0, p1}, Lvp;-><init>(Lvk;Llf;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Lvk$b;->a()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lvk;->a(Llf;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lvw;

    invoke-direct {v0, p0, p1}, Lvw;-><init>(Lvk;Llf;)V

    invoke-interface {v0}, Lvk$b;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lvp;

    invoke-direct {v0, p0, p1}, Lvp;-><init>(Lvk;Llf;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lvk$b;->a()V

    goto :goto_0

    :cond_3
    new-instance v1, Lvl;

    invoke-direct {v1, p0, p1}, Lvl;-><init>(Lvk;Llf;)V

    iget-object v0, p0, Lvk;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lvq;

    invoke-direct {v2, p0, p1, v1}, Lvq;-><init>(Lvk;Llf;Lvk$b;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method final a(Llf;)Z
    .locals 3

    const/4 v1, 0x1

    iget v0, p1, Llf;->b:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Llf;->b:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lvk;->c:Lhq;

    :goto_1
    iget-object v2, p1, Llf;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lhq;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lvk;->b:Lhq;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
