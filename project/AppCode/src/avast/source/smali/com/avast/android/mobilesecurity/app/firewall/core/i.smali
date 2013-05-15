.class Lcom/avast/android/mobilesecurity/app/firewall/core/i;
.super Ljava/lang/Object;
.source "FirewallLogLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/firewall/core/h;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/firewall/core/h;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/i;->a:Lcom/avast/android/mobilesecurity/app/firewall/core/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/mobilesecurity/app/firewall/core/j;Lcom/avast/android/mobilesecurity/app/firewall/core/j;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 205
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/firewall/core/j;->b(Lcom/avast/android/mobilesecurity/app/firewall/core/j;)I

    move-result v0

    invoke-static {p2}, Lcom/avast/android/mobilesecurity/app/firewall/core/j;->b(Lcom/avast/android/mobilesecurity/app/firewall/core/j;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 206
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    .line 207
    :cond_0
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/firewall/core/j;->b(Lcom/avast/android/mobilesecurity/app/firewall/core/j;)I

    move-result v0

    invoke-static {p2}, Lcom/avast/android/mobilesecurity/app/firewall/core/j;->b(Lcom/avast/android/mobilesecurity/app/firewall/core/j;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 208
    const/4 v0, -0x1

    goto :goto_0

    .line 210
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 202
    check-cast p1, Lcom/avast/android/mobilesecurity/app/firewall/core/j;

    check-cast p2, Lcom/avast/android/mobilesecurity/app/firewall/core/j;

    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/firewall/core/i;->a(Lcom/avast/android/mobilesecurity/app/firewall/core/j;Lcom/avast/android/mobilesecurity/app/firewall/core/j;)I

    move-result v0

    return v0
.end method
