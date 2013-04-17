.class public final Lake;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lake$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter",
        "<",
        "Lkw;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lsl;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/BaseView;Landroid/widget/ListView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lkw;",
            ">;>;",
            "Lcom/tencent/qqpimsecure/uilib/view/BaseView;",
            "Landroid/widget/ListView;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p3}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getImageLoaderService()Lsl;

    move-result-object v0

    iput-object v0, p0, Lake;->a:Lsl;

    iget-object v0, p0, Lake;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lake;->b:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lake;->c:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic a(Lake;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lake;->c:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    const v0, 0x7f030128

    invoke-virtual {p0, p1, v0}, Lake;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lake$a;

    invoke-direct {v1}, Lake$a;-><init>()V

    const v0, 0x7f080353

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lake$a;->a:Landroid/widget/ImageView;

    const v0, 0x7f080354

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lake$a;->b:Landroid/widget/TextView;

    const v0, 0x7f080395

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lake$a;->c:Landroid/widget/TextView;

    const v0, 0x7f080396

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lake$a;->d:Landroid/widget/TextView;

    const v0, 0x7f080355

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lake$a;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lake;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    iget-object v2, v1, Lake$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lake$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lkw;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, La;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lake$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lkw;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, La;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lake$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lkw;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, La;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lake$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "com.tencent.qqpimsecure.self"

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v1, Lake$a;->a:Landroid/widget/ImageView;

    const v1, 0x7f0202a5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lake$a;

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lake;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lake;->a:Lsl;

    if-eqz v2, :cond_3

    iget-object v1, v1, Lake$a;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lake;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Llv;

    invoke-direct {v1}, Llv;-><init>()V

    const/4 v2, 0x2

    iput v2, v1, Llv;->b:I

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    iput v2, v1, Lmp;->g:I

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Llv;->d:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v1, Llv;->a:I

    iput-object v0, v1, Lmp;->h:Ljava/lang/Object;

    new-instance v0, Lakf;

    invoke-direct {v0, p0}, Lakf;-><init>(Lake;)V

    iput-object v0, v1, Lmp;->i:Labu$a;

    iget-object v0, p0, Lake;->a:Lsl;

    invoke-virtual {v0, v1}, Lsl;->b(Lmp;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v1, p0, Lake;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lkw;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    iget-object v1, v1, Lake$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    iget-object v0, v1, Lake$a;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lake;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
