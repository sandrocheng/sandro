.class final Lboo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lbok;


# direct methods
.method constructor <init>(Lbok;)V
    .locals 0

    iput-object p1, p0, Lboo;->a:Lbok;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lboo;->a:Lbok;

    invoke-static {v0}, Lbok;->b(Lbok;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lboo;->a:Lbok;

    invoke-static {v1}, Lbok;->c(Lbok;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkv;->e:Z

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkv;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->getUpdateState()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;

    invoke-direct {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getStorageCardSize(Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;)V

    iget-wide v2, v0, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;->a:J

    iget-object v0, v1, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->getSize()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lboo;->a:Lbok;

    invoke-static {v1}, Lbok;->d(Lbok;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lboo;->a:Lbok;

    invoke-static {v1}, Lbok;->e(Lbok;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v2, 0x65e2

    invoke-virtual {v0, v2}, Lnd;->a(I)V

    iget-object v0, p0, Lboo;->a:Lbok;

    invoke-virtual {v0, v1}, Lbok;->h(Lkv;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;

    invoke-direct {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getStorageCardSize(Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;)V

    iget-wide v2, v0, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;->a:J

    iget-object v0, v1, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->getSize()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lboo;->a:Lbok;

    invoke-static {v1}, Lbok;->f(Lbok;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lboo;->a:Lbok;

    invoke-static {v1}, Lbok;->g(Lbok;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lboo;->a:Lbok;

    invoke-virtual {v0, v1}, Lbok;->h(Lkv;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lboo;->a:Lbok;

    invoke-virtual {v0, v1}, Lbok;->i(Lkv;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lboo;->a:Lbok;

    invoke-virtual {v0, v1}, Lbok;->k(Lkv;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lboo;->a:Lbok;

    invoke-virtual {v0, v1}, Lbok;->j(Lkv;)V

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
