.class final Lcom/keniu/security/main/w;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 942
    iput-object p1, p0, Lcom/keniu/security/main/w;->a:Lcom/keniu/security/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 947
    iget-object v0, p0, Lcom/keniu/security/main/w;->a:Lcom/keniu/security/main/MainActivity;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/MainActivity;->removeDialog(I)V

    .line 949
    iget-object v0, p0, Lcom/keniu/security/main/w;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/util/at;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/keniu/security/main/w;->a:Lcom/keniu/security/main/MainActivity;

    const-string v1, "\u5f53\u524d\u65e0\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5\u3002"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 964
    :goto_0
    return-void

    .line 956
    :cond_0
    invoke-static {}, Lcom/keniu/security/f/f;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 958
    iget-object v0, p0, Lcom/keniu/security/main/w;->a:Lcom/keniu/security/main/MainActivity;

    const-string v1, "SD\u5361\u4e0d\u5b58\u5728\u6216\u4e0d\u53ef\u7528"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0

    .line 963
    :cond_1
    new-instance v0, Lcom/keniu/security/main/f;

    iget-object v1, p0, Lcom/keniu/security/main/w;->a:Lcom/keniu/security/main/MainActivity;

    invoke-direct {v0, v1}, Lcom/keniu/security/main/f;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
