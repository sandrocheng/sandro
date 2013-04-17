.class final Lajq;
.super Ljava/lang/Object;

# interfaces
.implements Labu$a;


# instance fields
.field private synthetic a:Lajo;


# direct methods
.method constructor <init>(Lajo;)V
    .locals 0

    iput-object p1, p0, Lajq;->a:Lajo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskFinish(Lmp;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    check-cast p1, Lmq;

    iget-object v0, p1, Lmq;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lajq;->a:Lajo;

    iget v2, p1, Lmp;->g:I

    invoke-static {v1, v2}, Lajo;->a(Lajo;I)I

    move-result v5

    iget-object v1, p0, Lajq;->a:Lajo;

    invoke-static {v1}, Lajo;->d(Lajo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llr;

    iget-object v2, p0, Lajq;->a:Lajo;

    invoke-virtual {v2}, Lajo;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-boolean v3, v1, Llr;->c:Z

    :goto_0
    iput-boolean v3, v1, Llr;->d:Z

    :goto_1
    iget-object v0, p0, Lajq;->a:Lajo;

    invoke-static {v0}, Lajo;->k(Lajo;)I

    iget-object v0, p0, Lajq;->a:Lajo;

    invoke-static {v0}, Lajo;->a(Lajo;)I

    move-result v0

    iget-object v1, p0, Lajq;->a:Lajo;

    invoke-static {}, Lajo;->e()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lajq;->a:Lajo;

    invoke-static {v0}, Lajo;->e(Lajo;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void

    :cond_1
    iput-boolean v4, v1, Llr;->c:Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lajq;->a:Lajo;

    invoke-static {v2}, Lajo;->f(Lajo;)Lajo$a;

    move-result-object v2

    iget v2, v2, Lajo$a;->a:I

    if-lt v5, v2, :cond_6

    iget-object v2, p0, Lajq;->a:Lajo;

    invoke-static {v2}, Lajo;->f(Lajo;)Lajo$a;

    move-result-object v2

    iget v2, v2, Lajo$a;->b:I

    if-gt v5, v2, :cond_6

    iget-object v2, p0, Lajq;->a:Lajo;

    invoke-static {v2}, Lajo;->g(Lajo;)Lajo$a;

    move-result-object v2

    iget v2, v2, Lajo$a;->a:I

    if-lt v5, v2, :cond_8

    iget-object v2, p0, Lajq;->a:Lajo;

    invoke-static {v2}, Lajo;->g(Lajo;)Lajo$a;

    move-result-object v2

    iget v2, v2, Lajo$a;->b:I

    if-gt v5, v2, :cond_8

    move v2, v4

    :goto_2
    if-eqz v0, :cond_5

    iget-object v6, p0, Lajq;->a:Lajo;

    invoke-static {v6}, Lajo;->h(Lajo;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/16 v7, 0x3c

    if-lt v6, v7, :cond_3

    iget-object v6, p0, Lajq;->a:Lajo;

    invoke-static {v6}, Lajo;->i(Lajo;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lajq;->a:Lajo;

    invoke-static {v7, v6}, Lajo;->a(Lajo;Ljava/lang/Integer;)V

    :cond_3
    iget-object v6, p0, Lajq;->a:Lajo;

    invoke-static {v6}, Lajo;->j(Lajo;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    iget-object v7, p0, Lajq;->a:Lajo;

    invoke-static {v7}, Lajo;->h(Lajo;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Lajq;->a:Lajo;

    invoke-static {v6}, Lajo;->j(Lajo;)Ljava/util/HashMap;

    iget-object v6, p0, Lajq;->a:Lajo;

    invoke-static {v6}, Lajo;->h(Lajo;)Ljava/util/LinkedList;

    :cond_4
    iget-object v6, p0, Lajq;->a:Lajo;

    iget v7, p1, Lmp;->g:I

    invoke-static {v6, v7, v5, v0}, Lajo;->a(Lajo;IILandroid/graphics/drawable/BitmapDrawable;)V

    iput-boolean v3, v1, Llr;->c:Z

    move v0, v2

    :goto_3
    iput-boolean v3, v1, Llr;->d:Z

    iget-object v1, p0, Lajq;->a:Lajo;

    invoke-virtual {v1, p1, v0}, Lajo;->a(Lmq;Z)V

    goto/16 :goto_1

    :cond_5
    iput-boolean v4, v1, Llr;->c:Z

    move v0, v2

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-boolean v3, v1, Llr;->c:Z

    move v0, v3

    goto :goto_3

    :cond_7
    iput-boolean v4, v1, Llr;->c:Z

    move v0, v3

    goto :goto_3

    :cond_8
    move v2, v3

    goto :goto_2
.end method
