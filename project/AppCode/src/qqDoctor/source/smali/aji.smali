.class public final Laji;
.super Lajd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laji$a;
    }
.end annotation


# instance fields
.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/widget/GridView;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;Ljava/lang/Boolean;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tencent/qqpimsecure/uilib/view/BaseView;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List",
            "<",
            "Llj;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lajd;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;Ljava/lang/Boolean;Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202ce

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Laji;->g:Landroid/graphics/Bitmap;

    const v0, 0x7f080123

    invoke-virtual {p2, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Laji;->h:Landroid/widget/GridView;

    iput-boolean p5, p0, Laji;->i:Z

    return-void
.end method

.method static synthetic a(Laji;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Laji;->h:Landroid/widget/GridView;

    return-object v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/16 v4, 0x8

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Laji;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f030031

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Laji$a;

    invoke-direct {v1, p0}, Laji$a;-><init>(Laji;)V

    const v0, 0x7f08007d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Laji$a;->a:Landroid/widget/ImageView;

    const v0, 0x7f08007f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object v0, v1, Laji$a;->b:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    const v0, 0x7f080080

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Laji$a;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v1, Laji$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget-object v2, Llm;->e:Llm$a;

    iget v2, v2, Llm$a;->a:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget-object v2, Llm;->e:Llm$a;

    iget v2, v2, Llm$a;->b:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, v1, Laji$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v2, v1

    :goto_0
    iget-object v0, p0, Laji;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj;

    invoke-virtual {v0}, Llj;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, v2, Laji$a;->a:Landroid/widget/ImageView;

    iget-object v5, p0, Laji;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, v2, Laji$a;->a:Landroid/widget/ImageView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Llj;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_tmb"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v5, Lli;

    invoke-direct {v5}, Lli;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Llj;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "_tmb"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    iput v6, v5, Lmp;->g:I

    iput-object v1, v5, Lli;->a:Ljava/lang/String;

    iput-object v0, v5, Lmp;->h:Ljava/lang/Object;

    new-instance v1, Lajk;

    invoke-direct {v1, p0}, Lajk;-><init>(Laji;)V

    iput-object v1, v5, Lmp;->i:Labu$a;

    iget-object v1, p0, Laji;->f:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    check-cast v1, Latb;

    invoke-virtual {v1}, Latb;->c()Lrv;

    move-result-object v1

    invoke-virtual {v1, v5}, Lrv;->b(Lmp;)Z

    :goto_1
    iget-object v5, v2, Laji$a;->b:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iget-boolean v1, p0, Laji;->b:Z

    if-eqz v1, :cond_2

    move v1, v3

    :goto_2
    invoke-virtual {v5, v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    if-nez v0, :cond_3

    const/4 v1, -0x1

    :goto_3
    iget-object v5, v2, Laji$a;->b:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v2, Laji$a;->b:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iget-object v6, p0, Laji;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v5, v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    iget-object v1, v2, Laji$a;->b:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Laji$a;->b:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    new-instance v1, Lajj;

    invoke-direct {v1, p0}, Lajj;-><init>(Laji;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Laji;->i:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Laji;->b:Z

    if-nez v0, :cond_4

    iget-object v0, v2, Laji$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laji$a;

    move-object v2, v0

    goto/16 :goto_0

    :cond_1
    iget-object v1, v2, Laji$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Llj;->e()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_2
    move v1, v4

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Llj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_4
    iget-object v0, v2, Laji$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method
