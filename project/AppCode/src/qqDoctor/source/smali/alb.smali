.class final Lalb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lala;


# direct methods
.method constructor <init>(Lala;)V
    .locals 0

    iput-object p1, p0, Lalb;->a:Lala;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    check-cast p1, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->getUpdateState()B

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    const/16 v2, 0x65e2

    invoke-virtual {v1, v2}, Lnd;->a(I)V

    new-instance v1, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;

    invoke-direct {v1}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;-><init>()V

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getStorageCardSize(Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;)V

    iget-wide v1, v1, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;->a:J

    iget-object v3, v0, Lkv;->d:Lkw;

    invoke-virtual {v3}, Lkw;->getSize()J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-lez v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lalb;->a:Lala;

    invoke-static {v1}, Lala;->a(Lala;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lalb;->a:Lala;

    invoke-static {v1}, Lala;->b(Lala;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lalb;->a:Lala;

    invoke-static {v1}, Lala;->c(Lala;)Lbmd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbmd;->h(Lkv;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;

    invoke-direct {v1}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;-><init>()V

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getStorageCardSize(Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;)V

    iget-wide v1, v1, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;->a:J

    iget-object v3, v0, Lkv;->d:Lkw;

    invoke-virtual {v3}, Lkw;->getSize()J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-lez v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lalb;->a:Lala;

    invoke-static {v1}, Lala;->d(Lala;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lalb;->a:Lala;

    invoke-static {v1}, Lala;->e(Lala;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lalb;->a:Lala;

    invoke-static {v1}, Lala;->c(Lala;)Lbmd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbmd;->h(Lkv;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lalb;->a:Lala;

    invoke-static {v1}, Lala;->c(Lala;)Lbmd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbmd;->i(Lkv;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lalb;->a:Lala;

    invoke-static {v1}, Lala;->c(Lala;)Lbmd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbmd;->k(Lkv;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, p0, Lalb;->a:Lala;

    invoke-static {v1, v0}, Lala;->a(Lala;Lkv;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lalb;->a:Lala;

    invoke-static {v1}, Lala;->c(Lala;)Lbmd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbmd;->j(Lkv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00b5

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method
