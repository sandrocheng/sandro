.class public Lcom/tencent/qqpimsecure/ui/activity/HelpActivity;
.super Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/Menu;)V
    .locals 4

    const/16 v3, 0x63

    invoke-interface {p0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/view/Menu;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    const v2, 0x7f0b007b

    invoke-interface {p0, v0, v3, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201fe

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public static a(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/qqpimsecure/ui/activity/HelpActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lqx;->a()Lqx;

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v1

    invoke-virtual {v1}, Lnp;->c()I

    move-result v1

    const-string v2, "title"

    const v3, 0x7f0b04f5

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "info"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getView()Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    .locals 1

    new-instance v0, Lanu;

    invoke-direct {v0, p0}, Lanu;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
