.class final Lrc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ldv;

.field private synthetic b:Landroid/widget/EditText;

.field private synthetic c:Z

.field private synthetic d:Landroid/widget/EditText;

.field private synthetic e:Llf;

.field private synthetic f:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private synthetic g:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private synthetic h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic i:Lrb;


# direct methods
.method constructor <init>(Lrb;Landroid/widget/EditText;ZLandroid/widget/EditText;Llf;Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;Ldv;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lrc;->i:Lrb;

    iput-object p2, p0, Lrc;->b:Landroid/widget/EditText;

    iput-boolean p3, p0, Lrc;->c:Z

    iput-object p4, p0, Lrc;->d:Landroid/widget/EditText;

    iput-object p5, p0, Lrc;->e:Llf;

    iput-object p6, p0, Lrc;->f:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object p7, p0, Lrc;->g:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object p8, p0, Lrc;->a:Ldv;

    iput-object p9, p0, Lrc;->h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lrc;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    iget-boolean v1, p0, Lrc;->c:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\*+$"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lrc;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lrc;->i:Lrb;

    iget-object v1, v1, Lrb;->b:Lki;

    invoke-static {v0}, Lki;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lrc;->e:Llf;

    iget-object v3, p0, Lrc;->f:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v3

    iput-boolean v3, v2, Llf;->enableForCalling:Z

    iget-object v2, p0, Lrc;->e:Llf;

    iget-object v3, p0, Lrc;->g:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v3

    iput-boolean v3, v2, Llf;->enableForSMS:Z

    iget-object v2, p0, Lrc;->e:Llf;

    iput-object v0, v2, Llf;->phonenum:Ljava/lang/String;

    iget-object v0, p0, Lrc;->e:Llf;

    iput-object v1, v0, Llf;->name:Ljava/lang/String;

    new-instance v1, Lvk;

    iget-object v0, p0, Lrc;->i:Lrb;

    iget-object v0, v0, Lrb;->a:Landroid/app/Activity;

    new-instance v2, Lrd;

    invoke-direct {v2, p0}, Lrd;-><init>(Lrc;)V

    invoke-direct {v1, v0, v2}, Lvk;-><init>(Landroid/app/Activity;Ldv;)V

    iget-object v2, p0, Lrc;->e:Llf;

    iget-object v0, p0, Lrc;->e:Llf;

    iget v0, v0, Llf;->b:I

    iput v0, v2, Llf;->b:I

    const/4 v0, 0x0

    iput-object v0, v2, Llf;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lvk;->a(Llf;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lvy;

    invoke-direct {v0, v1, v2}, Lvy;-><init>(Lvk;Llf;)V

    invoke-interface {v0}, Lvk$b;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Lvp;

    invoke-direct {v0, v1, v2}, Lvp;-><init>(Lvk;Llf;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    iget-object v0, p0, Lrc;->h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :goto_1
    return-void

    :cond_2
    invoke-interface {v0}, Lvk$b;->a()V

    goto :goto_0

    :cond_3
    new-instance v3, Lvo;

    invoke-direct {v3, v1, v2}, Lvo;-><init>(Lvk;Llf;)V

    iget-object v0, v1, Lvk;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v4, Lvq;

    invoke-direct {v4, v1, v2, v3}, Lvq;-><init>(Lvk;Llf;Lvk$b;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lrc;->i:Lrb;

    iget-object v0, v0, Lrb;->a:Landroid/app/Activity;

    iget-object v1, p0, Lrc;->i:Lrb;

    iget-object v1, v1, Lrb;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b038f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
