.class public final Lakc;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lakc$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter",
        "<",
        "Lmn;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/widget/ListView;

.field private d:Z

.field private e:Z

.field private f:Lsl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lbax;Landroid/widget/ListView;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lmn;",
            ">;>;",
            "Lbax;",
            "Landroid/widget/ListView;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lakc;->d:Z

    iput-boolean p5, p0, Lakc;->e:Z

    invoke-virtual {p3}, Lbax;->getImageLoaderService()Lsl;

    move-result-object v0

    iput-object v0, p0, Lakc;->f:Lsl;

    const v0, 0x1080093

    iput v0, p0, Lakc;->a:I

    iget-object v0, p0, Lakc;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lakc;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lakc;->b:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lakc;->c:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic a(Lakc;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lakc;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic b(Lakc;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lakc;->mDataList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lmn;
    .locals 1

    iget-object v0, p0, Lakc;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmn;

    return-object v0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lakc;->d:Z

    return-void
.end method

.method public final getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmn;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lakc;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmn;

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    if-nez p2, :cond_1

    const v0, 0x7f030101

    invoke-virtual {p0, p1, v0}, Lakc;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lakc$a;

    invoke-direct {v1}, Lakc$a;-><init>()V

    const v0, 0x7f080353

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lakc$a;->a:Landroid/widget/ImageView;

    const v0, 0x7f080354

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lakc$a;->b:Landroid/widget/TextView;

    const v0, 0x7f080355

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lakc$a;->c:Landroid/widget/TextView;

    const v0, 0x7f080356

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object v0, v1, Lakc$a;->d:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iget-object v0, v1, Lakc$a;->d:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    const v2, 0x7f02004f

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setBackGroundRes(I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_0
    iget-object v0, v2, Lakc$a;->d:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setFocusable(Z)V

    iget-object v0, v2, Lakc$a;->d:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setClickable(Z)V

    iget-object v0, p0, Lakc;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmn;

    iget-object v1, v2, Lakc$a;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lmn;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lakc;->e:Z

    if-eqz v1, :cond_2

    iget-object v1, v2, Lakc$a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v2, Lakc$a;->c:Landroid/widget/TextView;

    iget-wide v3, v0, Lmn;->e:J

    invoke-static {v3, v4}, La;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, v2, Lakc$a;->a:Landroid/widget/ImageView;

    iget-object v3, v0, Lmn;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lmn;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lmn;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lmn;->b:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lakc;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, v2, Lakc$a;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lakc;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lkw;

    invoke-direct {v3}, Lkw;-><init>()V

    iget-object v1, p0, Lakc;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmn;

    iget-object v1, v1, Lmn;->d:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lkw;->setPackageName(Ljava/lang/String;)V

    new-instance v1, Llv;

    invoke-direct {v1}, Llv;-><init>()V

    const/4 v4, 0x2

    iput v4, v1, Llv;->b:I

    invoke-virtual {v3}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    iput v4, v1, Lmp;->g:I

    invoke-virtual {v3}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Llv;->d:Ljava/lang/String;

    iput v5, v1, Llv;->a:I

    iput-object v3, v1, Lmp;->h:Ljava/lang/Object;

    new-instance v3, Lakd;

    invoke-direct {v3, p0, p1}, Lakd;-><init>(Lakc;I)V

    iput-object v3, v1, Lmp;->i:Labu$a;

    iget-object v3, p0, Lakc;->f:Lsl;

    invoke-virtual {v3, v1}, Lsl;->b(Lmp;)Z

    :goto_2
    iget-boolean v1, p0, Lakc;->d:Z

    if-eqz v1, :cond_6

    iget-object v1, v2, Lakc$a;->d:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v1, v5}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    iget-object v1, v2, Lakc$a;->d:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iget-boolean v0, v0, Lmn;->f:Z

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    :goto_3
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakc$a;

    move-object v2, v0

    goto/16 :goto_0

    :cond_2
    iget-object v1, v2, Lakc$a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lmn;->b:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    iget-object v1, p0, Lakc;->b:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lmn;->b:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_4
    iget-object v1, v2, Lakc$a;->a:Landroid/widget/ImageView;

    iget-object v3, v0, Lmn;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_5
    iget-object v1, v2, Lakc$a;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lakc;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_6
    iget-object v0, v2, Lakc$a;->d:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v6}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    goto :goto_3
.end method
