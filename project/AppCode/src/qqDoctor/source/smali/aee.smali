.class final Laee;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Ljava/util/ArrayList;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

.field private synthetic c:Laed;


# direct methods
.method constructor <init>(Laed;Ljava/util/ArrayList;Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;)V
    .locals 0

    iput-object p1, p0, Laee;->c:Laed;

    iput-object p2, p0, Laee;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Laee;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Laee;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    iget-object v1, p0, Laee;->c:Laed;

    iget-object v1, v1, Laed;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->j(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->getRadioButtonName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Laee;->c:Laed;

    iget-object v1, v1, Laed;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->getRadioEventCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->a(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Laee;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->dismiss()V

    return-void
.end method
