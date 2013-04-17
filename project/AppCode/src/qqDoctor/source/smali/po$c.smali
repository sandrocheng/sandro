.class final Lpo$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/net/URL;

.field c:Ljava/lang/Thread;

.field d:Lpo$b;

.field e:Z

.field f:Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;

.field g:Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView$onAddDontRemindWebSiteListener;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Landroid/os/Handler;

.field final synthetic m:Lpo;


# direct methods
.method public constructor <init>(Lpo;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lpo$c;->m:Lpo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lpo$c;->a:I

    iput-object v1, p0, Lpo$c;->b:Ljava/net/URL;

    iput-object v1, p0, Lpo$c;->c:Ljava/lang/Thread;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpo$c;->e:Z

    iput-object v1, p0, Lpo$c;->f:Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView;

    new-instance v0, Lpr;

    invoke-direct {v0, p0}, Lpr;-><init>(Lpo$c;)V

    iput-object v0, p0, Lpo$c;->l:Landroid/os/Handler;

    new-instance v0, Lpp;

    invoke-direct {v0, p0}, Lpp;-><init>(Lpo$c;)V

    iput-object v0, p0, Lpo$c;->g:Lcom/tencent/qqpimsecure/uilib/view/WebsiteTipsDialogView$onAddDontRemindWebSiteListener;

    return-void
.end method

.method static synthetic a(Lpo$c;)V
    .locals 0

    invoke-virtual {p0}, Lpo$c;->a()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    iget-object v0, p0, Lpo$c;->m:Lpo;

    iget-object v1, v0, Lpo;->g:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpo$c;

    iget v0, v0, Lpo$c;->a:I

    iget v3, p0, Lpo$c;->a:I

    if-ne v0, v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lpo$c;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lpo$c;->m:Lpo;

    iget-object v0, v0, Lpo;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lpo$c;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
