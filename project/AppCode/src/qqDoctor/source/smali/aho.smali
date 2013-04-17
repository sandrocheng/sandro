.class public final Laho;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;)V
    .locals 0

    iput-object p1, p0, Laho;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Laho;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->a(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;)V

    iget-object v0, p0, Laho;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->b(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Laho;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->c(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;)Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    move-result-object v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    iget-object v0, p0, Laho;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;

    iget-object v1, p0, Laho;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->c(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;)Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
