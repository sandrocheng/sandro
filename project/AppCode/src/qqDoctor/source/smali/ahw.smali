.class public final Lahw;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lahw$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter",
        "<",
        "Lle;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lle;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-boolean p3, p0, Lahw;->a:Z

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    if-nez p2, :cond_0

    const v0, 0x7f0300f1

    invoke-virtual {p0, p1, v0}, Lahw;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lahw$a;

    invoke-direct {v1}, Lahw$a;-><init>()V

    const v0, 0x7f080139

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lahw$a;->a:Landroid/widget/TextView;

    const v0, 0x7f080319

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lahw$a;->b:Landroid/widget/TextView;

    const v0, 0x7f080242

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lahw$a;->c:Landroid/widget/TextView;

    const v0, 0x7f08014c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lahw$a;->d:Landroid/widget/CheckBox;

    const v0, 0x7f08031b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lahw$a;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lahw;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lle;

    iget-object v2, v1, Lahw$a;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lle;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lahw$a;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lle;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lahw$a;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lle;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, v0, Lle;->e:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lahw;->a:Z

    if-eqz v2, :cond_1

    iget-object v0, v1, Lahw$a;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, v1, Lahw$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahw$a;

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lahw$a;->d:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v2, v1, Lahw$a;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lahw$a;->d:Landroid/widget/CheckBox;

    iget-boolean v0, v0, Lle;->d:Z

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, v1, Lahw$a;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setClickable(Z)V

    goto :goto_1
.end method
