.class public Lcom/tencent/powermanager/uilib/view/TextListItemView;
.super Lcom/tencent/powermanager/uilib/view/BaseListItemView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/uilib/view/BaseListItemView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/TextListItemView;->a:Landroid/content/Context;

    const v1, 0x7f030028

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/powermanager/uilib/view/TextListItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
