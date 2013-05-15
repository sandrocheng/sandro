.class Lcom/avast/android/mobilesecurity/ui/i;
.super Ljava/lang/Object;
.source "SideMenu.java"

# interfaces
.implements Lcom/a/a/b;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/ui/g;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/ui/g;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/i;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 464
    return-void
.end method

.method public b(Lcom/a/a/a;)V
    .locals 2
    .parameter

    .prologue
    .line 468
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/i;->a:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/ui/g;->b(Lcom/avast/android/mobilesecurity/ui/g;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/i;->a:Lcom/avast/android/mobilesecurity/ui/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/ui/g;->a(Lcom/avast/android/mobilesecurity/ui/g;Z)Z

    .line 470
    return-void
.end method

.method public c(Lcom/a/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 478
    return-void
.end method
