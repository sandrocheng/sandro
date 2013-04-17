.class final Lrf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lhq;

.field private synthetic b:Llf;

.field private synthetic c:Landroid/content/res/Resources;

.field private synthetic d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic e:Landroid/os/Handler;

.field private synthetic f:Lrb;


# direct methods
.method constructor <init>(Lrb;Lhq;Llf;Landroid/content/res/Resources;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lrf;->f:Lrb;

    iput-object p2, p0, Lrf;->a:Lhq;

    iput-object p3, p0, Lrf;->b:Llf;

    iput-object p4, p0, Lrf;->c:Landroid/content/res/Resources;

    iput-object p5, p0, Lrf;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iput-object p6, p0, Lrf;->e:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    const/4 v11, 0x0

    const/16 v6, 0x2a

    const/4 v5, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lrf;->a:Lhq;

    iget-object v1, p0, Lrf;->b:Llf;

    invoke-virtual {v0, v1}, Lhq;->c(Llf;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lrf;->b:Llf;

    iget v0, v0, Llf;->b:I

    if-ne v0, v5, :cond_0

    new-instance v0, Ljp;

    const-string v1, "securesmslog"

    const-string v2, "secure_mms_pdu"

    const-string v4, "secure_mms_parts"

    invoke-direct {v0, v1, v2, v4}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lrf;->b:Llf;

    iget-object v0, v0, Llf;->phonenum:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljp;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget v0, v0, Lmk;->a:I

    if-eq v0, v10, :cond_1

    move v2, v3

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iput v10, v0, Lmk;->a:I

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget v0, v0, Lmk;->id:I

    invoke-virtual {v1, v0}, Ljp;->b(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljp;

    const-string v1, "smslog"

    const-string v2, "mms_pdu"

    const-string v4, "mms_parts"

    invoke-direct {v0, v1, v2, v4}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lrf;->c:Landroid/content/res/Resources;

    const v1, 0x7f0b01c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lrf;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v1, p0, Lrf;->f:Lrb;

    iget-object v2, p0, Lrf;->b:Llf;

    if-eqz v2, :cond_3

    iget v4, v2, Llf;->b:I

    if-ne v4, v5, :cond_3

    iget-object v4, v2, Llf;->phonenum:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_3

    iget-object v1, v1, Lrb;->a:Landroid/app/Activity;

    new-instance v4, Lsy;

    new-instance v5, Lhi;

    invoke-direct {v5, v10}, Lhi;-><init>(I)V

    new-instance v6, Ljp;

    const-string v7, "securesmslog"

    const-string v8, "secure_mms_pdu"

    const-string v9, "secure_mms_parts"

    invoke-direct {v6, v7, v8, v9}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v1, v10, v5, v6}, Lsy;-><init>(Landroid/app/Activity;ZLhi;Ljp;)V

    iget-object v1, v2, Llf;->phonenum:Ljava/lang/String;

    invoke-virtual {v4, v1, v11}, Lsy;->a(Ljava/lang/String;Ldv;)V

    :cond_2
    :goto_2
    iget-object v1, p0, Lrf;->e:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_3
    iget-object v1, p0, Lrf;->f:Lrb;

    iget-object v1, v1, Lrb;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_3
    if-eqz v2, :cond_2

    iget v4, v2, Llf;->b:I

    if-nez v4, :cond_2

    iget-object v4, v2, Llf;->phonenum:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_2

    iget-object v1, v1, Lrb;->a:Landroid/app/Activity;

    new-instance v4, Lsy;

    new-instance v5, Lhi;

    invoke-direct {v5, v3}, Lhi;-><init>(I)V

    new-instance v6, Ljp;

    const-string v7, "smslog"

    const-string v8, "mms_pdu"

    const-string v9, "mms_parts"

    invoke-direct {v6, v7, v8, v9}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v1, v3, v5, v6}, Lsy;-><init>(Landroid/app/Activity;ZLhi;Ljp;)V

    iget-object v1, v2, Llf;->phonenum:Ljava/lang/String;

    invoke-virtual {v4, v1, v11}, Lsy;->a(Ljava/lang/String;Ldv;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lrf;->c:Landroid/content/res/Resources;

    const v1, 0x7f0b01c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
