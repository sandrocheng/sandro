.class Lcom/antivirus/ui/callmessagefilter/o;
.super Lcom/antivirus/ui/callmessagefilter/q;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/callmessagefilter/j;

.field private c:Landroid/view/View;


# direct methods
.method varargs constructor <init>(Lcom/antivirus/ui/callmessagefilter/j;Landroid/view/View;[Landroid/widget/CheckBox;)V
    .locals 1

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/o;->a:Lcom/antivirus/ui/callmessagefilter/j;

    const-string v0, "call_message_blocker_rejected_with_sms"

    invoke-direct {p0, p1, v0, p3}, Lcom/antivirus/ui/callmessagefilter/q;-><init>(Lcom/antivirus/ui/callmessagefilter/j;Ljava/lang/String;[Landroid/widget/CheckBox;)V

    iput-object p2, p0, Lcom/antivirus/ui/callmessagefilter/o;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/antivirus/ui/callmessagefilter/q;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/o;->c:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
