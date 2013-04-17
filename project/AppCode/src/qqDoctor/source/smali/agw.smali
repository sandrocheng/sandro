.class public final Lagw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)V
    .locals 0

    iput-object p1, p0, Lagw;->a:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v3, 0x0

    const/4 v5, -0x1

    move v2, v3

    :goto_0
    iget-object v0, p0, Lagw;->a:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->c(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lagw;->a:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->c(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move v4, v3

    :goto_1
    iget-object v1, p0, Lagw;->a:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_3

    iget-object v1, p0, Lagw;->a:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->d(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lagw;->a:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->d(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lagw;->a:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->d(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkw;

    invoke-virtual {v1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    iget-object v1, p0, Lagw;->a:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog$a;

    iget v1, v1, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog$a;->b:I

    if-ne v6, v1, :cond_1

    :goto_2
    if-eq v4, v5, :cond_0

    const v1, 0x7f08019f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lagw;->a:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog$a;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog$a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    move v4, v5

    goto :goto_2
.end method
