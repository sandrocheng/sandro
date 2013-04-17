.class public abstract Lajo;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lajo$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/graphics/drawable/Drawable;

.field protected b:Landroid/graphics/drawable/Drawable;

.field c:I

.field d:I

.field e:Z

.field private f:Laby;

.field private g:I

.field private h:Z

.field private i:Lajo$a;

.field private j:Lajo$a;

.field private final k:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Llr;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:Landroid/os/Handler;

.field private p:Labu$a;


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Llr;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Lajo$a;

    invoke-direct {v0, p0}, Lajo$a;-><init>(Lajo;)V

    iput-object v0, p0, Lajo;->i:Lajo$a;

    new-instance v0, Lajo$a;

    invoke-direct {v0, p0}, Lajo$a;-><init>(Lajo;)V

    iput-object v0, p0, Lajo;->j:Lajo$a;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lajo;->k:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lajo;->l:Ljava/util/HashMap;

    iput v2, p0, Lajo;->n:I

    new-instance v0, Lajp;

    invoke-direct {v0, p0}, Lajp;-><init>(Lajo;)V

    iput-object v0, p0, Lajo;->o:Landroid/os/Handler;

    new-instance v0, Lajq;

    invoke-direct {v0, p0}, Lajq;-><init>(Lajo;)V

    iput-object v0, p0, Lajo;->p:Labu$a;

    iput-object p1, p0, Lajo;->m:Ljava/util/List;

    if-eqz p2, :cond_0

    new-instance v0, Lacb;

    invoke-direct {v0}, Lacb;-><init>()V

    iput-object v0, p0, Lajo;->f:Laby;

    :goto_0
    iput v2, p0, Lajo;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lajo;->h:Z

    const/4 v0, 0x6

    iput v0, p0, Lajo;->d:I

    return-void

    :cond_0
    new-instance v0, Laca;

    invoke-direct {v0}, Laca;-><init>()V

    iput-object v0, p0, Lajo;->f:Laby;

    goto :goto_0
.end method

.method private a(II)I
    .locals 3

    move v1, p1

    :goto_0
    if-gt v1, p2, :cond_1

    iget-object v0, p0, Lajo;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llr;

    iget-boolean v2, v0, Llr;->d:Z

    if-nez v2, :cond_2

    iget-boolean v2, v0, Llr;->c:Z

    if-nez v2, :cond_2

    iget-object v2, v0, Llr;->e:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    iget-object v2, v0, Llr;->e:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Llr;->e:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget v0, v0, Llr;->f:I

    iget-object v2, p0, Lajo;->l:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_1
    if-le v1, p2, :cond_3

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lajo;)I
    .locals 1

    iget v0, p0, Lajo;->n:I

    return v0
.end method

.method static synthetic a(Lajo;I)I
    .locals 1

    invoke-direct {p0, p1}, Lajo;->b(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lajo;IILandroid/graphics/drawable/BitmapDrawable;)V
    .locals 2

    iget-object v0, p0, Lajo;->k:Ljava/util/LinkedList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lajo;->k:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lajo;->m:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llr;

    invoke-virtual {v0, p3}, Llr;->a(Landroid/graphics/drawable/BitmapDrawable;)V

    iget-object v0, p0, Lajo;->l:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lajo;Ljava/lang/Integer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lajo;->b(I)I

    move-result v0

    iget-object v1, p0, Lajo;->k:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lajo;->a(I)V

    iget-object v1, p0, Lajo;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llr;->a(Landroid/graphics/drawable/BitmapDrawable;)V

    iget-object v0, p0, Lajo;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lajo;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeOldKey failed:mCacheSortedLink.remove("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lajo;Llr;)V
    .locals 2

    new-instance v0, Lmq;

    invoke-direct {v0}, Lmq;-><init>()V

    invoke-virtual {p0, v0, p1}, Lajo;->a(Lmq;Llr;)V

    iput-object p1, v0, Lmq;->a:Llr;

    iget v1, p1, Llr;->f:I

    iput v1, v0, Lmp;->g:I

    iget-object v1, p0, Lajo;->p:Labu$a;

    iput-object v1, v0, Lmp;->i:Labu$a;

    iget-object v1, p0, Lajo;->f:Laby;

    invoke-virtual {v1, v0}, Laby;->b(Lmp;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Llr;->d:Z

    iget v0, p0, Lajo;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lajo;->n:I

    :cond_0
    return-void
.end method

.method private b(I)I
    .locals 4

    const/4 v2, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lajo;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lajo;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llr;

    iget v0, v0, Llr;->f:I

    if-eq v0, p1, :cond_2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lajo;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "key2Postion error: none matches: i="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v1, v2

    goto :goto_0
.end method

.method static synthetic b(Lajo;)I
    .locals 1

    iget v0, p0, Lajo;->d:I

    return v0
.end method

.method static synthetic c(Lajo;)I
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lajo;->i:Lajo$a;

    iget v0, v0, Lajo$a;->a:I

    iget-object v1, p0, Lajo;->i:Lajo$a;

    iget v1, v1, Lajo$a;->b:I

    invoke-direct {p0, v0, v1}, Lajo;->a(II)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lajo;->j:Lajo$a;

    iget v0, v0, Lajo$a;->a:I

    iget-object v1, p0, Lajo;->i:Lajo$a;

    iget v1, v1, Lajo$a;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lajo;->a(II)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lajo;->i:Lajo$a;

    iget v0, v0, Lajo$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lajo;->j:Lajo$a;

    iget v1, v1, Lajo$a;->b:I

    invoke-direct {p0, v0, v1}, Lajo;->a(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method static synthetic d(Lajo;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lajo;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic e(Lajo;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lajo;->o:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lajo;)Lajo$a;
    .locals 1

    iget-object v0, p0, Lajo;->j:Lajo$a;

    return-object v0
.end method

.method static synthetic g(Lajo;)Lajo$a;
    .locals 1

    iget-object v0, p0, Lajo;->i:Lajo$a;

    return-object v0
.end method

.method static synthetic h(Lajo;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lajo;->k:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic i(Lajo;)I
    .locals 4

    iget-object v0, p0, Lajo;->i:Lajo$a;

    iget v0, v0, Lajo$a;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lajo;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lajo;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llr;

    iget v0, v0, Llr;->f:I

    return v0

    :cond_1
    iget-object v0, p0, Lajo;->i:Lajo$a;

    iget v0, v0, Lajo$a;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lajo;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lajo;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lajo;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lajo;->i:Lajo$a;

    iget v2, v2, Lajo$a;->a:I

    sub-int/2addr v2, v1

    iget-object v3, p0, Lajo;->i:Lajo$a;

    iget v3, v3, Lajo$a;->b:I

    sub-int v3, v0, v3

    if-le v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic j(Lajo;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lajo;->l:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic k(Lajo;)I
    .locals 2

    iget v0, p0, Lajo;->n:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lajo;->n:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-virtual {p0}, Lajo;->notifyDataSetChanged()V

    return-void
.end method

.method protected abstract a(I)V
.end method

.method protected abstract a(Lmq;Llr;)V
.end method

.method protected abstract a(Lmq;Z)V
.end method

.method public final a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lajo;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lajo;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lajo;->a(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lajo;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lajo;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lajo;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lajo;->f:Laby;

    return-void
.end method

.method public final b(Z)V
    .locals 2

    iput-boolean p1, p0, Lajo;->e:Z

    iget-boolean v0, p0, Lajo;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lajo;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lajo;->o:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lajo;->a(Z)V

    iget-object v0, p0, Lajo;->f:Laby;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lajo;->f:Laby;

    invoke-virtual {v0}, Laby;->e()V

    :cond_0
    iget-object v0, p0, Lajo;->o:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lajo;->o:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lajo;->o:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lajo;->e:Z

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_2

    iget v0, p0, Lajo;->g:I

    if-eq v0, p4, :cond_0

    iput p4, p0, Lajo;->g:I

    iput-boolean v2, p0, Lajo;->h:Z

    :cond_0
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lajo;->i:Lajo$a;

    iget v1, v1, Lajo$a;->a:I

    if-lt p2, v1, :cond_1

    iget-object v1, p0, Lajo;->i:Lajo$a;

    iget v1, v1, Lajo$a;->b:I

    if-ge v0, v1, :cond_3

    :cond_1
    iget-object v1, p0, Lajo;->i:Lajo$a;

    const/4 v2, -0x1

    iput v2, v1, Lajo$a;->c:I

    :goto_0
    iget-object v1, p0, Lajo;->i:Lajo$a;

    iput p2, v1, Lajo$a;->a:I

    iget-object v1, p0, Lajo;->i:Lajo$a;

    iput v0, v1, Lajo$a;->b:I

    iget v1, p0, Lajo;->c:I

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lajo;->c:I

    div-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lajo;->c:I

    mul-int/2addr v1, v2

    iget-object v2, p0, Lajo;->j:Lajo$a;

    sub-int v3, p2, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lajo$a;->a:I

    iget-object v2, p0, Lajo;->j:Lajo$a;

    add-int/lit8 v3, p4, -0x1

    add-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Lajo$a;->b:I

    iget-boolean v0, p0, Lajo;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lajo;->o:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput-boolean v4, p0, Lajo;->h:Z

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lajo;->i:Lajo$a;

    iget v1, v1, Lajo$a;->a:I

    if-gt p2, v1, :cond_4

    iget-object v1, p0, Lajo;->i:Lajo$a;

    iget v1, v1, Lajo$a;->b:I

    if-le v0, v1, :cond_5

    :cond_4
    iget-object v1, p0, Lajo;->i:Lajo$a;

    iput v2, v1, Lajo$a;->c:I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lajo;->i:Lajo$a;

    iput v4, v1, Lajo$a;->c:I

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iput-boolean v2, p0, Lajo;->h:Z

    :goto_0
    iget-boolean v0, p0, Lajo;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lajo;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lajo;->o:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iput-boolean v2, p0, Lajo;->h:Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lajo;->h:Z

    goto :goto_0
.end method
