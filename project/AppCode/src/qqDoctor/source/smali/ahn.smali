.class public final Lahn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)V
    .locals 0

    iput-object p1, p0, Lahn;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lahn;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->f(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lahn;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->b(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lahn;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->b(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lahn;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->b(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lahn;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->b(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lahn;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->b(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lahn;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;->b(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method
