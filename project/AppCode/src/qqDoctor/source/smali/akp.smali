.class public final Lakp;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lakp$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter",
        "<",
        "Lmf;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Lsl;

.field private d:Landroid/content/Context;

.field private e:Landroid/widget/ListView;

.field private f:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

.field private g:Ljava/lang/String;

.field private h:Lji;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView",
            "<",
            "Lmf;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lmf;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lakp;->i:Z

    iput-object p1, p0, Lakp;->d:Landroid/content/Context;

    iget-object v0, p0, Lakp;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lakp;->b:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lakp;->f:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    iput-object v0, p0, Lakp;->e:Landroid/widget/ListView;

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->getImageLoaderService()Lsl;

    move-result-object v0

    iput-object v0, p0, Lakp;->c:Lsl;

    iput-boolean p4, p0, Lakp;->a:Z

    new-instance v0, Lji;

    invoke-direct {v0}, Lji;-><init>()V

    iput-object v0, p0, Lakp;->h:Lji;

    return-void
.end method

.method static synthetic a(Lakp;Lmf;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lmf;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lakp;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lakp;->notifyDataSetChanged()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lakr;

    invoke-direct {v1, p0, p1}, Lakr;-><init>(Lakp;Lmf;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lmf;)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz p0, :cond_1

    iget-object v3, p0, Lmf;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v0, Lke;

    invoke-direct {v0}, Lke;-><init>()V

    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    :goto_0
    sget-object v0, Lsv;->b:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v4, Lsv;->b:Ljava/util/Map;

    sget-object v0, Lsv;->b:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v1, v3, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    const-string v4, "tb_software_lock_count"

    const-string v5, "pkg_name=?"

    new-array v6, v9, [Ljava/lang/String;

    aput-object v3, v6, v8

    const-string v7, "id ASC"

    invoke-virtual {v0, v4, v5, v6, v7}, Lke;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lmo;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v4, Lmo;

    invoke-direct {v4}, Lmo;-><init>()V

    iput-object v3, v4, Lmo;->a:Ljava/lang/String;

    iput v9, v4, Lmo;->b:I

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    const-string v6, "pkg_name"

    iget-object v7, v4, Lmo;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "lock_count"

    iget v4, v4, Lmo;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, v0, Lke;->a:Lhs;

    const-string v6, "tb_software_lock_count"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v5}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v0, v0, Lke;->a:Lhs;

    invoke-virtual {v0}, Lhs;->b()V

    goto :goto_0

    :cond_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "lock_count"

    iget v4, v4, Lmo;->b:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "pkg_name=?"

    new-array v6, v9, [Ljava/lang/String;

    aput-object v3, v6, v8

    iget-object v7, v0, Lke;->a:Lhs;

    const-string v8, "tb_software_lock_count"

    invoke-virtual {v7, v8, v5, v4, v6}, Lhs;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, v0, Lke;->a:Lhs;

    invoke-virtual {v0}, Lhs;->b()V

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lsv;->b:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method static synthetic a(Lakp;)Z
    .locals 1

    iget-boolean v0, p0, Lakp;->i:Z

    return v0
.end method

.method static synthetic a(Lakp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lakp;->i:Z

    return p1
.end method

.method static synthetic b(Lakp;)Lji;
    .locals 1

    iget-object v0, p0, Lakp;->h:Lji;

    return-object v0
.end method

.method static synthetic c(Lakp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lakp;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lakp;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lakp;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lakp;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    .locals 1

    iget-object v0, p0, Lakp;->f:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    return-object v0
.end method

.method static synthetic f(Lakp;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lakp;->e:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-nez p2, :cond_2

    const v0, 0x7f030139

    invoke-virtual {p0, p1, v0}, Lakp;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lakp$a;

    invoke-direct {v1, p0}, Lakp$a;-><init>(Lakp;)V

    iget-object v0, p0, Lakp;->mItemModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;->getItemStyle()I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f080365

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lakp$a;->d:Landroid/view/View;

    :goto_0
    const v0, 0x7f0803b8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lakp$a;->a:Landroid/widget/ImageView;

    const v0, 0x7f0800f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lakp$a;->b:Landroid/widget/TextView;

    const v0, 0x7f0803bf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lakp$a;->c:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_1
    iget-object v0, p0, Lakp;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf;

    iget-object v1, v0, Lmf;->c:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    iget-object v1, v2, Lakp$a;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lakp;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v2, Lakp$a;->a:Landroid/widget/ImageView;

    iget-object v3, v0, Lmf;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v1, Lkw;

    invoke-direct {v1}, Lkw;-><init>()V

    iget-object v3, v0, Lmf;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lkw;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lkw;->a(Ljava/lang/Object;)V

    new-instance v3, Llv;

    invoke-direct {v3}, Llv;-><init>()V

    const/4 v4, 0x2

    iput v4, v3, Llv;->b:I

    invoke-virtual {v1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    iput v4, v3, Lmp;->g:I

    invoke-virtual {v1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Llv;->d:Ljava/lang/String;

    iput v6, v3, Llv;->a:I

    iput-object v1, v3, Lmp;->h:Ljava/lang/Object;

    new-instance v1, Lakt;

    invoke-direct {v1, p0}, Lakt;-><init>(Lakp;)V

    iput-object v1, v3, Lmp;->i:Labu$a;

    iget-object v1, p0, Lakp;->c:Lsl;

    invoke-virtual {v1, v3}, Lsl;->b(Lmp;)Z

    :goto_2
    iget-object v1, p0, Lakp;->mItemModelList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;->getItemStyle()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, p2, v1}, Lakp;->setLabel(Landroid/view/View;Lcom/tencent/qqpimsecure/uilib/model/ItemModel;)V

    :cond_0
    iget-object v1, v2, Lakp$a;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lmf;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->co()Z

    move-result v1

    iget-boolean v3, p0, Lakp;->a:Z

    if-eqz v3, :cond_5

    iget-object v3, v2, Lakp$a;->c:Landroid/widget/Button;

    if-eqz v1, :cond_4

    const v1, 0x7f02017e

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_4
    iget-object v1, v2, Lakp$a;->c:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v1, v2, Lakp$a;->c:Landroid/widget/Button;

    new-instance v3, Lakq;

    invoke-direct {v3, p0}, Lakq;-><init>(Lakp;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lakp;->g:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lakp;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v3, v0, Lmf;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_8

    iget-object v1, v2, Lakp$a;->d:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v2, Lakp$a;->d:Landroid/view/View;

    iget-boolean v1, p0, Lakp;->a:Z

    if-eqz v1, :cond_7

    sget v1, Lgw;->a:I

    neg-int v1, v1

    :goto_5
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, v1

    invoke-direct {v3, v5, v1, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Laks;

    invoke-direct {v1, p0, v2, v0}, Laks;-><init>(Lakp;Landroid/view/View;Lmf;)V

    invoke-virtual {v3, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_6
    return-object p2

    :cond_1
    iput-object p2, v1, Lakp$a;->d:Landroid/view/View;

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp$a;

    move-object v2, v0

    goto/16 :goto_1

    :cond_3
    iget-object v1, v2, Lakp$a;->a:Landroid/widget/ImageView;

    iget-object v3, v0, Lmf;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_4
    const v1, 0x7f020180

    goto :goto_3

    :cond_5
    iget-object v3, v2, Lakp$a;->c:Landroid/widget/Button;

    if-eqz v1, :cond_6

    const v1, 0x7f020173

    :goto_7
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_4

    :cond_6
    const v1, 0x7f020175

    goto :goto_7

    :cond_7
    sget v1, Lgw;->a:I

    goto :goto_5

    :cond_8
    iget-object v0, v2, Lakp$a;->d:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method
