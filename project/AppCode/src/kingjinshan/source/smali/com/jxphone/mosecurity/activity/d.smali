.class final Lcom/jxphone/mosecurity/activity/d;
.super Ljava/lang/Object;
.source "BaseContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/jxphone/mosecurity/activity/BaseContactActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 842
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/d;->b:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    iput-object p2, p0, Lcom/jxphone/mosecurity/activity/d;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 845
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/d;->b:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/d/k;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/k;

    move-result-object v0

    .line 847
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/d;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/d/k;->a(Ljava/lang/String;)I

    move-result v0

    .line 850
    packed-switch v0, :pswitch_data_0

    .line 900
    :goto_0
    return-void

    .line 858
    :pswitch_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/d;->b:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/d;->b:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    const v2, 0x7f0b0614

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 862
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/d;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearComposingText()V

    .line 863
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/d;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 870
    :pswitch_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/d;->b:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    iput-boolean v3, v0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->i:Z

    .line 871
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/d;->b:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->f()V

    .line 883
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 886
    :pswitch_2
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/d;->b:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->i:Z

    .line 887
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/d;->b:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->f()V

    .line 897
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 850
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
