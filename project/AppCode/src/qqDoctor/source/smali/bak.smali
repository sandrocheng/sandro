.class final Lbak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lbai;


# direct methods
.method constructor <init>(Lbai;Landroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbak;->c:Lbai;

    iput-object p2, p0, Lbak;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lbak;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lbak;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x4980

    mul-float/2addr v0, v1

    float-to-long v0, v0

    const-wide v2, 0x10000000000L

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v2

    const/16 v3, 0x666d

    invoke-virtual {v2, v3}, Lnd;->a(I)V

    :cond_0
    new-instance v2, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Liu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0, v1}, Liu;->setUsedForMonth(J)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Liu;->a(J)V

    const/4 v0, 0x0

    sput-boolean v0, Lazu;->a:Z

    const/4 v0, 0x0

    sput-boolean v0, Lazu;->b:Z

    const/4 v0, 0x1

    sput-boolean v0, Lwe;->a:Z

    const-class v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->notifyConfigChange()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lbak;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lbak;->c:Lbai;

    invoke-static {v0}, Lbai;->a(Lbai;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbak;->c:Lbai;

    invoke-static {v1}, Lbai;->a(Lbai;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0427

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lbak;->c:Lbai;

    invoke-static {v0}, Lbai;->a(Lbai;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbak;->c:Lbai;

    invoke-static {v1}, Lbai;->a(Lbai;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0429

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
