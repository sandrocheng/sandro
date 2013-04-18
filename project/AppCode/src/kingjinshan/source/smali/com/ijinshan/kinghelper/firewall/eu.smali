.class final Lcom/ijinshan/kinghelper/firewall/eu;
.super Ljava/lang/Object;
.source "SmsBackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/er;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/er;)V
    .locals 0
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/eu;->a:Lcom/ijinshan/kinghelper/firewall/er;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 587
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/eu;->a:Lcom/ijinshan/kinghelper/firewall/er;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    const-string v1, "\u6ca1\u6709\u5907\u4efd\u88ab\u53d1\u73b0\uff0c\u8bf7\u5148\u5907\u4efd!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 588
    return-void
.end method
