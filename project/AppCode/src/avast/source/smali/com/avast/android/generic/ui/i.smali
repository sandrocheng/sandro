.class Lcom/avast/android/generic/ui/i;
.super Ljava/lang/Object;
.source "CheckerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/CheckerFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/CheckerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/avast/android/generic/ui/i;->a:Lcom/avast/android/generic/ui/CheckerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 125
    iget-object v0, p0, Lcom/avast/android/generic/ui/i;->a:Lcom/avast/android/generic/ui/CheckerFragment;

    invoke-static {v0}, Lcom/avast/android/generic/ui/CheckerFragment;->a(Lcom/avast/android/generic/ui/CheckerFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/avast/android/generic/ui/i;->a:Lcom/avast/android/generic/ui/CheckerFragment;

    const-string v1, "checker"

    const-string v2, "hide ignored"

    invoke-virtual {v0, v1, v2, v3}, Lcom/avast/android/generic/ui/CheckerFragment;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    iget-object v0, p0, Lcom/avast/android/generic/ui/i;->a:Lcom/avast/android/generic/ui/CheckerFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/avast/android/generic/ui/CheckerFragment;->a(Lcom/avast/android/generic/ui/CheckerFragment;Z)Z

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/avast/android/generic/ui/i;->a:Lcom/avast/android/generic/ui/CheckerFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/CheckerFragment;->h()V

    .line 138
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/ui/i;->a:Lcom/avast/android/generic/ui/CheckerFragment;

    const-string v1, "checker"

    const-string v2, "show ignored"

    invoke-virtual {v0, v1, v2, v3}, Lcom/avast/android/generic/ui/CheckerFragment;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    iget-object v0, p0, Lcom/avast/android/generic/ui/i;->a:Lcom/avast/android/generic/ui/CheckerFragment;

    invoke-static {v0, v3}, Lcom/avast/android/generic/ui/CheckerFragment;->a(Lcom/avast/android/generic/ui/CheckerFragment;Z)Z

    goto :goto_0
.end method
