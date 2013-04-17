.class public abstract Lajs;
.super Laju;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lajs$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laju",
        "<",
        "Lla;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lsl;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/BaseView;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qqpimsecure/uilib/view/BaseView;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lla;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Laju;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lajs;->c:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getImageLoaderService()Lsl;

    move-result-object v0

    iput-object v0, p0, Lajs;->a:Lsl;

    invoke-virtual {p0}, Lajs;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lajs;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic a(Lajs;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    .locals 1

    iget-object v0, p0, Lajs;->c:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    return-object v0
.end method


# virtual methods
.method public abstract a()Landroid/graphics/drawable/Drawable;
.end method

.method protected final a(Lajs$a;Lla;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p1, Lajs$a;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lajs;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lajs$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lla;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lla;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lla;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lla;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lajs;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lajs;->a:Lsl;

    if-eqz v0, :cond_2

    new-instance v0, Llv;

    invoke-direct {v0}, Llv;-><init>()V

    iput v2, v0, Llv;->b:I

    invoke-virtual {p2}, Lla;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, v0, Lmp;->g:I

    invoke-virtual {p2}, Lla;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llv;->d:Ljava/lang/String;

    iput v2, v0, Llv;->a:I

    iput-object p2, v0, Lmp;->h:Ljava/lang/Object;

    new-instance v1, Lajt;

    invoke-direct {v1, p0}, Lajt;-><init>(Lajs;)V

    iput-object v1, v0, Lmp;->i:Labu$a;

    iget-object v1, p0, Lajs;->a:Lsl;

    invoke-virtual {v1, v0}, Lsl;->b(Lmp;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, Lla;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lajs;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Lla;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lajs$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lla;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
