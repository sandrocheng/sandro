.class public final Lajg;
.super Lajo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lajg$a;
    }
.end annotation


# instance fields
.field private f:Landroid/content/Context;

.field private g:Landroid/view/LayoutInflater;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llo;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/widget/GridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/GridView;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/GridView;",
            "Ljava/util/List",
            "<",
            "Llo;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x3

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lajo;-><init>(Ljava/util/List;Z)V

    iput-object p1, p0, Lajg;->f:Landroid/content/Context;

    iget-object v0, p0, Lajg;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lajg;->g:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lajg;->h:Ljava/util/List;

    iput-object p2, p0, Lajg;->i:Landroid/widget/GridView;

    iget-object v0, p0, Lajg;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lajg;->a:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lajg;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lajg;->b:Landroid/graphics/drawable/Drawable;

    iput v2, p0, Lajo;->c:I

    iput v2, p0, Lajo;->d:I

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 2

    iget-object v1, p0, Lajg;->i:Landroid/widget/GridView;

    iget-object v0, p0, Lajg;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llo;

    invoke-virtual {v0}, Llo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lajg;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llo;

    iget-boolean v1, v1, Llo;->c:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lajg;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lajg;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected final a(Lmq;Llr;)V
    .locals 2

    check-cast p2, Llo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Llo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p1, Lmq;->c:Ljava/util/ArrayList;

    return-void
.end method

.method protected final a(Lmq;Z)V
    .locals 3

    iget-object v0, p1, Lmq;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lajo;->e:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lajg;->i:Landroid/widget/GridView;

    iget-object v2, p1, Lmq;->a:Llr;

    invoke-virtual {v2}, Llr;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_0

    iget-object v0, p0, Lajg;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lajg;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lajg;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lajg;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lajg;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f0300fc

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lajg$a;

    invoke-direct {v1, p0}, Lajg$a;-><init>(Lajg;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f080345

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lajg$a;->a:Landroid/widget/ImageView;

    const v0, 0x7f080347

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object v0, v1, Lajg$a;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    const v0, 0x7f080346

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lajg$a;->b:Landroid/widget/ImageView;

    iget-object v0, v1, Lajg$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget-object v2, Llm;->e:Llm$a;

    iget v2, v2, Llm$a;->a:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget-object v2, Llm;->e:Llm$a;

    iget v2, v2, Llm$a;->b:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, v1, Lajg$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lajg$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget-object v2, Llm;->e:Llm$a;

    iget v2, v2, Llm$a;->a:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget-object v2, Llm;->e:Llm$a;

    iget v2, v2, Llm$a;->b:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, v1, Lajg$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lajg$a;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setFocusable(Z)V

    iget-object v0, v1, Lajg$a;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setFocusableInTouchMode(Z)V

    iget-object v0, v1, Lajg$a;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setClickable(Z)V

    :goto_0
    iget-object v0, p0, Lajg;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llo;

    iget-object v2, v1, Lajg$a;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iget-boolean v3, v0, Llo;->a:Z

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    iget-object v2, v1, Lajg$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Llo;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v3, v1, Lajg$a;->b:Landroid/widget/ImageView;

    iget-boolean v2, v0, Llo;->a:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0200f8

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v2, v0, Llo;->e:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, v1, Lajg$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajg$a;

    move-object v1, v0

    goto :goto_0

    :cond_1
    const v2, 0x7f0202cc

    goto :goto_1

    :cond_2
    iget-boolean v0, v0, Llo;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Lajg$a;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lajg;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    iget-object v0, v1, Lajg$a;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lajg;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method
