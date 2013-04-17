.class final Lapm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/RadioGroup;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lapf;


# direct methods
.method constructor <init>(Lapf;Landroid/widget/RadioGroup;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lapm;->c:Lapf;

    iput-object p2, p0, Lapm;->a:Landroid/widget/RadioGroup;

    iput-object p3, p0, Lapm;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    iget-object v1, p0, Lapm;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, Lapm;->c:Lapf;

    invoke-static {v0}, Lapf;->a(Lapf;)Lho;

    move-result-object v0

    sget-object v1, Lho$a;->a:Lho$a;

    invoke-virtual {v0, v1}, Lho;->a(Lho$a;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lapm;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void

    :pswitch_0
    iget-object v1, p0, Lapm;->c:Lapf;

    invoke-static {v1}, Lapf;->a(Lapf;)Lho;

    move-result-object v1

    sget-object v2, Lho$a;->a:Lho$a;

    invoke-virtual {v1, v2}, Lho;->a(Lho$a;)V

    const/16 v1, 0x6699

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    invoke-static {}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;->getInstance()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;->updateSettingViewStyle()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lapm;->c:Lapf;

    invoke-static {v1}, Lapf;->a(Lapf;)Lho;

    move-result-object v1

    sget-object v2, Lho$a;->b:Lho$a;

    invoke-virtual {v1, v2}, Lho;->a(Lho$a;)V

    const/16 v1, 0x669a

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    invoke-static {}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;->getInstance()Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;->updateSettingViewStyle()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f080027
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
