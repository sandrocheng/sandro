.class final Lcom/keniu/security/main/s;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/keniu/security/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/MainActivity;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/keniu/security/main/s;->b:Lcom/keniu/security/main/MainActivity;

    iput-object p2, p0, Lcom/keniu/security/main/s;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 831
    iget-object v0, p0, Lcom/keniu/security/main/s;->b:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 833
    iget-object v1, p0, Lcom/keniu/security/main/s;->b:Lcom/keniu/security/main/MainActivity;

    const-string v2, "friend_find_password_check_count"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/keniu/security/main/MainActivity;->a(Lcom/keniu/security/main/MainActivity;I)I

    .line 835
    packed-switch p2, :pswitch_data_0

    .line 881
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/main/s;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 886
    return-void

    .line 838
    :pswitch_0
    iget-object v1, p0, Lcom/keniu/security/main/s;->b:Lcom/keniu/security/main/MainActivity;

    invoke-static {v1}, Lcom/jxphone/mosecurity/d/k;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/k;

    move-result-object v1

    .line 841
    iget-object v2, p0, Lcom/keniu/security/main/s;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 842
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/d/k;->b(Ljava/lang/String;)Z

    move-result v1

    .line 844
    if-eqz v1, :cond_0

    .line 845
    iget-object v0, p0, Lcom/keniu/security/main/s;->b:Lcom/keniu/security/main/MainActivity;

    invoke-virtual {v0, v6}, Lcom/keniu/security/main/MainActivity;->removeDialog(I)V

    .line 846
    iget-object v0, p0, Lcom/keniu/security/main/s;->b:Lcom/keniu/security/main/MainActivity;

    const-string v1, "\u9a8c\u8bc1\u6210\u529f\uff0c\u8bf7\u91cd\u8bbe\u5bc6\u7801\uff01"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 848
    iget-object v0, p0, Lcom/keniu/security/main/s;->b:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->r(Lcom/keniu/security/main/MainActivity;)V

    .line 849
    iget-object v0, p0, Lcom/keniu/security/main/s;->b:Lcom/keniu/security/main/MainActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/MainActivity;->showDialog(I)V

    .line 879
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/main/s;->b:Lcom/keniu/security/main/MainActivity;

    invoke-static {p1, v3}, Lcom/keniu/security/main/MainActivity;->a(Landroid/content/DialogInterface;Z)V

    .line 880
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 854
    :cond_0
    iget-object v1, p0, Lcom/keniu/security/main/s;->b:Lcom/keniu/security/main/MainActivity;

    invoke-static {v1}, Lcom/keniu/security/main/MainActivity;->s(Lcom/keniu/security/main/MainActivity;)I

    .line 855
    iget-object v1, p0, Lcom/keniu/security/main/s;->b:Lcom/keniu/security/main/MainActivity;

    invoke-static {v1}, Lcom/keniu/security/main/MainActivity;->t(Lcom/keniu/security/main/MainActivity;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 856
    iget-object v1, p0, Lcom/keniu/security/main/s;->b:Lcom/keniu/security/main/MainActivity;

    const-string v2, "\u9a8c\u8bc1\u5931\u8d25,\u8bf724\u5c0f\u65f6\u540e\u518d\u8bd5\uff01"

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 858
    iget-object v1, p0, Lcom/keniu/security/main/s;->b:Lcom/keniu/security/main/MainActivity;

    invoke-static {p1, v3}, Lcom/keniu/security/main/MainActivity;->a(Landroid/content/DialogInterface;Z)V

    .line 859
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 861
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 862
    const-string v2, "friend_find_password_check_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 864
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 865
    iget-object v1, p0, Lcom/keniu/security/main/s;->b:Lcom/keniu/security/main/MainActivity;

    invoke-virtual {v1, v6}, Lcom/keniu/security/main/MainActivity;->removeDialog(I)V

    .line 866
    iget-object v1, p0, Lcom/keniu/security/main/s;->b:Lcom/keniu/security/main/MainActivity;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/keniu/security/main/MainActivity;->removeDialog(I)V

    .line 872
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 873
    const-string v1, "friend_find_password_check_count"

    iget-object v2, p0, Lcom/keniu/security/main/s;->b:Lcom/keniu/security/main/MainActivity;

    invoke-static {v2}, Lcom/keniu/security/main/MainActivity;->t(Lcom/keniu/security/main/MainActivity;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 874
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 875
    iget-object v0, p0, Lcom/keniu/security/main/s;->b:Lcom/keniu/security/main/MainActivity;

    invoke-static {p1, v5}, Lcom/keniu/security/main/MainActivity;->a(Landroid/content/DialogInterface;Z)V

    goto/16 :goto_0

    .line 868
    :cond_1
    iget-object v1, p0, Lcom/keniu/security/main/s;->b:Lcom/keniu/security/main/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9a8c\u8bc1\u5931\u8d25,\u60a8\u8fd8\u6709"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/main/s;->b:Lcom/keniu/security/main/MainActivity;

    invoke-static {v3}, Lcom/keniu/security/main/MainActivity;->t(Lcom/keniu/security/main/MainActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6b21\u673a\u4f1a\uff01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 835
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
