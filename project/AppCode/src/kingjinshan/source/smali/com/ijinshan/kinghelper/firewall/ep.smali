.class final Lcom/ijinshan/kinghelper/firewall/ep;
.super Ljava/lang/Object;
.source "SmsBackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/en;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/en;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ep;->a:Lcom/ijinshan/kinghelper/firewall/en;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ep;->a:Lcom/ijinshan/kinghelper/firewall/en;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    const-string v1, "SD\u5361\u5269\u4f59\u7a7a\u95f4\u4e0d\u8db3!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 237
    return-void
.end method
