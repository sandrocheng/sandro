.class public final Laja;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laja$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter",
        "<",
        "Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Laqu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Laqu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;",
            ">;>;",
            "Laqu;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p3, p0, Laja;->a:Laqu;

    return-void
.end method

.method static synthetic a(Laja;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laja;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Laja;)Laqu;
    .locals 1

    iget-object v0, p0, Laja;->a:Laqu;

    return-object v0
.end method


# virtual methods
.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    const v0, 0x7f0300f4

    :try_start_0
    invoke-virtual {p0, p1, v0}, Laja;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v1, Laja$a;

    invoke-direct {v1}, Laja$a;-><init>()V

    const v0, 0x7f08032b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Laja$a;->a:Landroid/widget/TextView;

    const v0, 0x7f08032c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Laja$a;->b:Landroid/widget/TextView;

    const v0, 0x7f08032d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, v1, Laja$a;->c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, v1, Laja$a;->c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v2, p0, Laja;->mContext:Landroid/content/Context;

    const v3, 0x7f0b000c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    move-object v1, p2

    :goto_0
    iget-object v0, p0, Laja;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Laja$a;->a:Landroid/widget/TextView;

    iget-object v3, p0, Laja;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0409

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v3, v2, Laja$a;->b:Landroid/widget/TextView;

    iget-object v0, p0, Laja;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Laja$a;->c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v2, Lajb;

    invoke-direct {v2, p0, p1}, Lajb;-><init>(Laja;I)V

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laja$a;

    move-object v2, v0

    move-object v1, p2

    goto :goto_0

    :cond_1
    iget-object v3, v2, Laja$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Laja;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2
.end method
