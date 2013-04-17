.class final Lbfb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lbfa;


# direct methods
.method constructor <init>(Lbfa;Landroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbfb;->c:Lbfa;

    iput-object p2, p0, Lbfb;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lbfb;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lbfb;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-class v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    const-class v2, Lki;

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/tools/SingletonManager;->getSingleton(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;

    invoke-static {v1}, Lki;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lbfb;->c:Lbfa;

    invoke-virtual {v2, v1, v0}, Lbfa;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbfb;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
