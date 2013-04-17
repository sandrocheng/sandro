.class final Lalw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lkw;

.field private synthetic b:Lalv;


# direct methods
.method constructor <init>(Lalv;Lkw;)V
    .locals 0

    iput-object p1, p0, Lalw;->b:Lalv;

    iput-object p2, p0, Lalw;->a:Lkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lalw;->b:Lalv;

    invoke-static {v0}, Lalv;->a(Lalv;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lalw;->b:Lalv;

    invoke-static {v0}, Lalv;->b(Lalv;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lalw;->a:Lkw;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lalw;->b:Lalv;

    invoke-virtual {v0}, Lalv;->g()Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    move-result-object v0

    check-cast v0, Lbpp;

    invoke-virtual {v0, v1}, Lbpp;->a(I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method
