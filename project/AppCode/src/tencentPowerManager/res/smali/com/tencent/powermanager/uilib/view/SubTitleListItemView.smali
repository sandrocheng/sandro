.class public Lcom/tencent/powermanager/uilib/view/SubTitleListItemView;
.super Lcom/tencent/powermanager/uilib/view/BaseListItemView;


# instance fields
.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/uilib/view/BaseListItemView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/SubTitleListItemView;->a:Landroid/content/Context;

    const v1, 0x7f03002a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/powermanager/uilib/view/SubTitleListItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080086

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/SubTitleListItemView;->b:Landroid/widget/TextView;

    return-object v1
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public setSubTitleText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/SubTitleListItemView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/SubTitleListItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
