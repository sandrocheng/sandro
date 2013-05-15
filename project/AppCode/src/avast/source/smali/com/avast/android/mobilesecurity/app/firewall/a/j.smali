.class Lcom/avast/android/mobilesecurity/app/firewall/a/j;
.super Landroid/os/Handler;
.source "FirewallEnableRowDAO.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/firewall/a/e;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/j;->a:Lcom/avast/android/mobilesecurity/app/firewall/a/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/j;->a:Lcom/avast/android/mobilesecurity/app/firewall/a/e;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->a(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 178
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/j;->a:Lcom/avast/android/mobilesecurity/app/firewall/a/e;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->b(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)Lcom/avast/android/mobilesecurity/app/firewall/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/avast/android/mobilesecurity/app/firewall/a/b;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/a/j;->a:Lcom/avast/android/mobilesecurity/app/firewall/a/e;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/a/e;->c(Lcom/avast/android/mobilesecurity/app/firewall/a/e;)Lcom/avast/android/mobilesecurity/app/firewall/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/avast/android/mobilesecurity/app/firewall/a/a;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 189
    :goto_2
    return-void

    .line 186
    :catch_0
    move-exception v0

    goto :goto_2

    .line 179
    :catch_1
    move-exception v0

    goto :goto_1

    .line 172
    :catch_2
    move-exception v0

    goto :goto_0
.end method
